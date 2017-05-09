package com.yuxin.thread;

/**
 * Created by lyx on 2017/2/21.
 */
public class TestSafe extends Thread{

    private int count = 5;

//    public TestSafe(String name){
//        super();
//        setName(name);
//    }

    @Override
    public synchronized void run() {
        super.run();
        count--;
        System.out.println(Thread.currentThread().getName()+",count="+count);
    }

    public static void main(String[] args) {
        TestSafe myThread = new TestSafe();

        Thread a = new Thread(myThread,"a");
        Thread b = new Thread(myThread,"b");
        Thread c = new Thread(myThread,"c");
        Thread d = new Thread(myThread,"d");
        a.start();
        b.start();
        c.start();
        d.start();



    }
}
