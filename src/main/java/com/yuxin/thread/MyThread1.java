package com.yuxin.thread;

/**
 * Created by lyx on 2017/3/3.
 */
public class MyThread1 extends Thread{

    private int count = 5;

    @Override
    public void run() {
        super.run();
//        while (count>0) {
            count--;
            System.out.println(count + "," + Thread.currentThread().getName());
//        }

    }
}
