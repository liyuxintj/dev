package com.yuxin.thread;

/**
 * Created by lyx on 2017/2/20.
 */
public class MyThead extends Thread{

    @Override
    public void run() {
        super.run();
        System.out.println("MyThread");
        System.out.println(Thread.currentThread().getName());
    }


    public static void main(String[] args) {
        MyThead myThead = new MyThead();
        MyThead myThead2 = new MyThead();
        myThead.start();
        myThead2.start();
        System.out.println("end");
    }

}
