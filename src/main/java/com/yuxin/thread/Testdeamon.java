package com.yuxin.thread;

/**
 * Created by lyx on 2017/3/3.
 */
public class Testdeamon {

    public static void main(String[] args) throws InterruptedException {
        MyThread a = new MyThread();
        a.setDaemon(true);
        a.start();
        a.sleep(5000);
        System.out.println("我结束了 守护线程也结束");
    }
}


class MyThread extends Thread{
    @Override
    public void run() {
        super.run();
        while (true) {
            System.out.println("a");
            try {
                Thread.sleep(1000);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }
    }
}
