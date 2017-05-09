package com.yuxin.thread;

/**
 * Created by lyx on 2017/3/3.
 */
public class Test3 {
    public static void main(String[] args) {
        MyThread1 myThead = new MyThread1();
        Thread a = new Thread(myThead);
        Thread b = new Thread(myThead);
        Thread c = new Thread(myThead);
        Thread d = new Thread(myThead);
        Thread e = new Thread(myThead);

        a.start();
        b.start();
        c.start();
        d.start();
        e.start();
    }
}
