#ifndef __THREAD_POOL_H
#define __THREAD_POOL_H

#include <pthread.h>
#include <semaphore.h>
#include <queue>
#include <vector>
#include <iostream>
#include <mutex>
#include <condition_variable>

/*
    线程池：条件变量和互斥量实现
*/

template<typename T>
class THREAD_POOL{
public:
    static void* work(void *arg){
        THREAD_POOL* ptr = (THREAD_POOL*)arg;
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
            t->process();
        }
    }

    //创建线程，每个线程执行work函数
    THREAD_POOL(int size, void* (*func)(void*) = work) {
        kill_pool = false;
        pthread_ids.resize(size);
        for(int i=0; i< size; i++){
            pthread_create(&pthread_ids[i], NULL, func, this);
            pthread_detach(pthread_ids[i]);
        }
    }

    void destory_threads(){
        std::unique_lock<std::mutex> lock(mux);
        kill_pool = true;
        lock.unlock();
        cv.notify_all();
    }

    ~THREAD_POOL(){
        
    }

    // 向阻塞队列中添加任务, 注意传过来的参数必须是堆区的
    bool add_task(T t){
        std::unique_lock<std::mutex> lock(mux);
        tasks.push(t);
        lock.unlock();
        cv.notify_one();
        return true;
    }

    std::vector<pthread_t> pthread_ids;
    std::queue<T> tasks;

    //结束线程
    bool kill_pool;
    //互斥量
    std::mutex mux;
    //条件变量
    std::condition_variable cv;
};

#endif