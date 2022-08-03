#ifndef RPC_SERVER_H
#define RPC_SERVER_H

#include "../thread_pool/thread_pool.h"
#include "../work/work.h"
#include "../network_manager/network_manager.h"
#include <vector>

/*
    RPC服务器，监听端口，使用TCP协议传递信息
    线程池：处理收到的函数执行请求和传输函数运行结果

    编码器：
        解析器：解析收到的函数参数，编号，以及返回数据类型
        封装器：封装函数执行后的结果编码为字节流
    
    
*/
class RPC_SERVER{
    public:
    static int current_connect_num;     //当前连接的数量
    const int max_connect_fd = 65535;   //最大文件描述符数量
    const int max_event_size = 10000;   //最大事件数量
    /*
        thread_nums:线程数量
    */
    RPC_SERVER(int thread_nums);
    void run();

    private:
    epoll_event* events;                    // 事件队列
    THREAD_POOL<WORK*>* work_pool;          // 线程池
    std::vector<WORK*> client_connect;      // 连接列表
    NETWORK_MANAGER net_admin;              // 网络管理
};

#endif