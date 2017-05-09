package com.yuxin.thread;

/**
 * Created by lyx on 2017/3/3.
 */
public class Test2 {


    public static void main(String[] args) {
        MyThread1 m1 = new MyThread1();
        MyThread1 m2 = new MyThread1();
        MyThread1 m3 = new MyThread1();

        m1.start();
        m1.start();
        m2.start();
        m3.start();
    }
}
