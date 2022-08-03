#ifndef PROCESS_FUNCTION_H
#define PROCESS_FUNCTION_H
#include "../json_parser/json_parser/json_parser.h"
#include "../thread_pool/thread_pool.h"

template<typename T>
class WORK_POOL{
public:
    static void* work(void *arg){
        WORK_POOL* ptr = (WORK_POOL*)arg;
        while(!ptr->kill_pool){
            std::unique_lock<std::mutex> lock(ptr->mux);
            ptr->cv.wait(lock, [ptr]{
                return ptr->tasks.size()>0 || ptr->kill_pool;
            });
            if(ptr->kill_pool)
                break;
            T t= ptr->tasks.front();
            ptr->tasks.pop();
            lock.unlock();
            ptr->do_func(t);
        }
    }

    //创建线程，每个线程执行work函数
    WORK_POOL(int size) {
        std::cout<< "work工作线程被构造了 " << size << std::endl;
        if(mkfifo("IPC", 0666) < 0 && errno!=EEXIST) 
            perror("Create FIFO Failed");
        if((read_fd = open("IPC", O_WRONLY)) < 0) 
        {
            perror("Open FIFO Failed");
            exit(1);
        }
        kill_pool = false;
        pthread_ids.resize(size);
        for(int i=0; i< size; i++){
            pthread_create(&pthread_ids[i], NULL, work, this);
            pthread_detach(pthread_ids[i]);
        }
    }

    void destory_threads(){
        std::unique_lock<std::mutex> lock(mux);
        kill_pool = true;
        lock.unlock();
        cv.notify_all();
    }

    ~WORK_POOL(){
        
    }

    // 向阻塞队列中添加任务, 注意传过来的参数必须是堆区的
    bool add_task(T t){
        std::unique_lock<std::mutex> lock(mux);
        tasks.push(t);
        lock.unlock();
        cv.notify_one();
        return true;
    }

    // 这里实现所有的函数处理逻辑
    // 传入参数client_fd, data
    void do_func(T t){
        
    }

    std::vector<pthread_t> pthread_ids;
    std::queue<T> tasks;

    //结束线程
    bool kill_pool;
    //互斥量
    std::mutex mux;
    //条件变量
    std::condition_variable cv;
    //有名管道: 父子间通讯
    int read_fd;  
};


#endif
