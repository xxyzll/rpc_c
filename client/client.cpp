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
#include <stdlib.h>     

#include <string.h> 
int main(){ 
    int client_fd = socket(AF_INET, SOCK_STREAM, 0);
    struct sockaddr_in addr;
    addr.sin_family = AF_INET;
    addr.sin_port = htons(10000);
    addr.sin_addr.s_addr = inet_addr("192.168.31.132");
    socklen_t len = sizeof(struct sockaddr_in);

    connect(client_fd, (struct sockaddr*)&addr, len);
    char test_data[] = "123";
    int send_data_len = sizeof(test_data);
    char sendbuff[sizeof(test_data) + sizeof(send_data_len)];
    memcpy(sendbuff, &send_data_len, sizeof(send_data_len));
    memcpy(sendbuff+sizeof(send_data_len), test_data, sizeof(test_data));
    int rev_len;
    memcpy(&rev_len, sendbuff, sizeof(rev_len));
    write(client_fd, sendbuff, sizeof(sendbuff));
    sleep(1);
    return 0;
}