#include "rpc_server.h"
#include <sys/epoll.h>
#include <sys/types.h>          /* See NOTES */
#include <sys/socket.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <unistd.h>
#include <fcntl.h>
#include <sys/time.h>
#include <signal.h>


int RPC_SERVER::current_connect_num = 0;
RPC_SERVER::RPC_SERVER(int thread_nums){
    // 事件列表 
    events = new epoll_event[max_event_size];
    // 线程池初始化
    work_pool = new THREAD_POOL<WORK*>(thread_nums);
    // 初始化客户端连接列表
    client_connect.resize(max_connect_fd);
    for(int i=0; i< max_connect_fd; i++){
        client_connect[i] = new WORK();
    }
    current_connect_num = 0;
}

// reactor模式
void RPC_SERVER::run(){
    while(1){
        int event_count = net_admin.wait_event(events, max_event_size);
        if ( ( event_count < 0 ) && ( errno != EINTR ) ) {
            printf( "epoll failure\n" );
            break;
        }
        for(int i=0; i< event_count; i++){
            int event_fd = events[i].data.fd;
            if(event_fd == NETWORK_MANAGER::listen_fd){
                struct sockaddr_in client_address;
                socklen_t client_addrlength = sizeof( client_address );
                int connfd = accept( NETWORK_MANAGER::listen_fd, ( struct sockaddr* )&client_address, &client_addrlength );
                NETWORK_MANAGER::add_event(connfd, true, true);
                // 初始化连接
                client_connect[connfd]->init(connfd);
                current_connect_num += 1;
                std::cout << "有新用户连接" << std::endl;
            }else if( events[i].events & ( EPOLLRDHUP | EPOLLHUP | EPOLLERR ) ) {
                // 出大问题
                std::cout<< event_fd << std::endl;
                client_connect[event_fd]->close_connect();
            }else{
                client_connect[event_fd]->set_event_addr(&events[i]);
                work_pool->add_task(client_connect[event_fd]);
            }
        }
    }

}

