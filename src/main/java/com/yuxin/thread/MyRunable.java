package com.yuxin.thread;

/**
 * Created by lyx on 2017/2/20.
 */
public class MyRunable implements Runnable{
    public void run() {
        System.out.println("run");
    }

    public static void main(String[] args) {
        MyRunable myRunable =new MyRunable();
        Thread thread = new Thread(myRunable);
        thread.start();
    }
}
