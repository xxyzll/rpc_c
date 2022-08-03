#include "network_manager.h"

int NETWORK_MANAGER::listen_fd = 0;               //监听的fd
int NETWORK_MANAGER::epoll_fd = 0;                //事件fd

NETWORK_MANAGER::NETWORK_MANAGER(){
    std::cout << "正在初始化网络状态" << std::endl;
    // 建立监听套接字
    listen_fd = socket(AF_INET, SOCK_STREAM, 0);

    // 设置io复用
    int used = 1;
    setsockopt(listen_fd, SOL_SOCKET, SO_REUSEADDR, &used, sizeof(used));

    // 绑定端口
    struct sockaddr_in addr;
    addr.sin_family = AF_INET;
    addr.sin_port = htons(10000);
    addr.sin_addr.s_addr = INADDR_ANY;
    bind(listen_fd, (struct sockaddr*)&addr, sizeof(addr));
    listen(listen_fd, backlog);  
    //创建epoll任务,size被忽略
    epoll_fd = epoll_create(128);
    //添加监听事件
    add_event(listen_fd);
}

// 修改一个事件
void NETWORK_MANAGER::mod_event(int fd, int eve, bool ET_FIG){
    struct epoll_event event;
    event.data.fd = fd;
    event.events = eve | EPOLLONESHOT | EPOLLRDHUP;
    if(ET_FIG)
        event.events |= EPOLLET;
    epoll_ctl( epoll_fd, EPOLL_CTL_MOD, fd, &event );
}

void NETWORK_MANAGER::remove_event(int fd){
    epoll_ctl( epoll_fd, EPOLL_CTL_DEL, fd, 0 );
    close(fd);
}

//添加一个事件
void NETWORK_MANAGER::add_event(int fd, bool oneshort, bool ET_FIG){
    struct epoll_event event;
    event.data.fd = fd;
    event.events = EPOLLIN| EPOLLRDHUP;
    if(oneshort){
        event.events |= EPOLLONESHOT;
    }
    if(ET_FIG){
        event.events |= EPOLLET;
    }
    epoll_ctl(epoll_fd, EPOLL_CTL_ADD, fd, &event);
    //设置非阻塞
    setnoblocking(fd);
}

//设置非阻塞
void NETWORK_MANAGER::setnoblocking(int fd){
    int old_opt = fcntl(fd, F_GETFL);
    old_opt |= O_NONBLOCK;
    fcntl(fd, F_SETFL, old_opt);
}

int NETWORK_MANAGER::wait_event(epoll_event* events, int events_len){
    // 阻塞等待事件
    return epoll_wait(epoll_fd, events, events_len, -1);
}

