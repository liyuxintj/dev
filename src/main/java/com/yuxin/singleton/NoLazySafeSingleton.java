package com.yuxin.singleton;

/**
 * 线程安全 非懒加载 饿汉式
 * Created by lyx on 2017/2/15.
 */
public class NoLazySafeSingleton {
    private static NoLazySafeSingleton singleton = new NoLazySafeSingleton();

    private NoLazySafeSingleton(){}

    public static NoLazySafeSingleton getSingleton(){
        try {
            Thread.sleep(3000);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        return singleton;
    }


    public static void main(String[] args) {
        for (int i = 0; i < 100; i++) {
            new Thread() {
                public void run() {
                    NoLazySafeSingleton a = NoLazySafeSingleton.getSingleton();
                    System.out.println(a.hashCode());
                }
            }.start();
        }
    }
}
