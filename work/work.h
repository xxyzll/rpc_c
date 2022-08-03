#ifndef WORK_H
#define WORK_H

#include <unistd.h>
#include "../network_manager/network_manager.h"
#include "../json_parser/json_parser/json_parser.h"
#include "process_function.h"
#include <iostream>
#include <string>
#include <unordered_map>
#include <vector>
#include <queue>

using namespace std;
/*
    工作类
*/
class WORK{
    public:

    WORK();
    ~WORK();

    void process(); 
    void init(int connect_fd);
    void close_connect();
    void set_event_addr(epoll_event* event_addr);

    private:
    // 解析器
    JP::Json_Parser parser;
    // 当前连接所发起的任务队列
    static WORK_POOL<pair<int, JP::Json_Parser::VAL>>* work_pool;
    bool read_all_data();
    
    char* read_buff;
    epoll_event* event_addr;
    int client_fd;
};

#endif

