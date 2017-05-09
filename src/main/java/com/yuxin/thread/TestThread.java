package com.yuxin.thread;

/**
 * Created by lyx on 2017/2/17.
 */
public class TestThread {


    public static void main(String[] args) throws InterruptedException {
        Thread t1 = new Thread(new Runner());
        Thread t2 = new Thread(new Runner());
        Thread t3 = new Thread(new Runner());
        t1.start();
        t1.sleep(5000);
        t1.join();
        t2.start();
        t2.join();
        t3.start();
        t3.join();

    }



}


class Runner implements Runnable{


    public void run() {
        System.out.println(Thread.currentThread().getName());
    }
}
