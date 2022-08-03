#include "work.h"

WORK_POOL<pair<int, JP::Json_Parser::VAL>>* WORK::work_pool = nullptr;
WORK::WORK(){
    client_fd = -1;
    read_buff = 0;
    if(!work_pool)
        work_pool = new WORK_POOL<pair<int, JP::Json_Parser::VAL>>(4);
}
WORK::~WORK(){
    close_connect();
}

void WORK::set_event_addr(epoll_event* event_addr){
    this->event_addr = event_addr;
}

void WORK::init(int connect_fd){
    client_fd = connect_fd;
    if(read_buff){
        delete[] read_buff;
    }
    read_buff = 0;
}

void WORK::close_connect(){
    if(client_fd != -1){
        close(client_fd);
        NETWORK_MANAGER::remove_event(client_fd);
        client_fd = -1;
    }
    if(read_buff){
        delete[] read_buff;
        read_buff = 0;
    }
}

bool WORK::read_all_data(){
    // 获得当前数据的长度
    int send_len = 0;
    int ret = read(client_fd, &send_len, sizeof(send_len));
    std::cout << ret << std::endl;
    if(ret != sizeof(send_len)){
        perror("read:");
        return false;
    }
    read_buff = new char[send_len];
    int readed_idx = 0;
    while(readed_idx< send_len){
        int rev_len = read(client_fd, read_buff+readed_idx, send_len-readed_idx);
        if(rev_len == -1){
            if(errno == EINTR)
                continue;
            std:cout << "读取数据出错" << std::endl;
            return false;
        }else{
            readed_idx += rev_len;
        }
    }
    return true;
}

void WORK::process(){
    if(event_addr->events & EPOLLIN ){
        //有数据可以读
        if(!read_all_data()){
            close_connect();
            return;
        }
        parser(std::string(read_buff));
        work_pool->add_task({client_fd, parser.parse_res});
    }else if(event_addr->events & EPOLLOUT){
        //有数据可以写
    }
}


