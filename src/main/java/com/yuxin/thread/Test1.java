package com.yuxin.thread;

/**
 * Created by lyx on 2017/3/3.
 */
public class Test1 {

    public static void main(String[] args) throws InterruptedException {
        A a = new A();
        a.start();
        a.join();
        System.out.println("end");
        Runnable b = new B();
        Thread c = new Thread(b);
        c.start();
    }



}

class A extends Thread{
    @Override
    public void run() {
        super.run();
        System.out.println("s");
    }
}


class B implements Runnable{

    public void run() {
        System.out.println("b");
    }
}
