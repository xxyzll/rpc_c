#ifndef NETWORK_MANAGER_H
#define NETWORK_MANAGER_H

#include <sys/epoll.h>
#include <sys/types.h>          /* See NOTES */
#include <sys/socket.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <unistd.h>
#include <fcntl.h>
#include <sys/time.h>
#include <signal.h>
#include <iostream>

/*
    网络管理工具类：提供网络管理的工具
*/
class NETWORK_MANAGER{
    public:
    static int listen_fd;               //监听的fd
    static int epoll_fd;                //事件fd
    const int max_connect_fd = 65535;   //最大文件描述符数量
    const int max_event_size = 10000;   //最大事件数量
    const int backlog = 1024;           //半连接队列大小

    // 添加、修改、删除事件
    void static add_event(int fd, bool oneshort=false, bool ET_FIG=false);
    void static mod_event(int fd, int eve, bool ET_FIG=false);
    void static remove_event(int fd);
    //设置非阻塞
    void static setnoblocking(int fd);

    NETWORK_MANAGER();
    int wait_event(epoll_event* events, int events_len);   

    private:

};

#endif