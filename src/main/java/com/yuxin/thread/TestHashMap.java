package com.yuxin.thread;

import java.util.HashMap;
import java.util.Map;

/**
 * Created by lyx on 2017/3/7.
 */
public class TestHashMap {
    public static void main(String[] args) {
        Integer a = 496;
        Integer b = 896;
        System.out.println(a.hashCode()%16);
        System.out.println(b.hashCode()%16);


        Map map = new HashMap();
        map.put(496,"s");
        map.put(896,"b");

    }
}
