package com.yuxin.singleton;

/**
 * Created by lyx on 2017/2/15.
 * 懒汉 懒加载 不支持多线程
 */
public class LazyNoSafeSimpleSingleton {

    private static LazyNoSafeSimpleSingleton simpleSingleton = null;

    private LazyNoSafeSimpleSingleton(){}

    public static LazyNoSafeSimpleSingleton getSimpleSingleton(){
        try {
            //创造条件以达到同时执行非空判断
            Thread.sleep(3000);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        //多个线程同时执行会导致为null条件成立创建多个实例
        if (simpleSingleton == null) {
            simpleSingleton = new LazyNoSafeSimpleSingleton();
        }
        return simpleSingleton;
    }



    //测试线程不安全的情况
    public static void main(String[] args) {
        for(int i=0;i<10;i++) {
            new Thread() {
                public void run() {
                    LazyNoSafeSimpleSingleton a = LazyNoSafeSimpleSingleton.getSimpleSingleton();
                    //观察每个对象内存地址是否相同
                    System.out.println(a);

                }
            }.start();
        }



    }

}
