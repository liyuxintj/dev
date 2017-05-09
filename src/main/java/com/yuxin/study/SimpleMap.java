package com.yuxin.study;

import java.util.HashMap;
import java.util.Map;

/**
 * Created by lyx on 2017/3/30.
 */
public class SimpleMap<K,V> {
    private Object[][] pairs;
    private int index;
    public SimpleMap(int length){
        pairs = new Object[length][2];
    }
    public void put(K key,V value){
        if(index>=pairs.length){
            throw new ArrayIndexOutOfBoundsException();
        }
        pairs[index++] = new Object[]{key,value};
    }

    public V get(K key){
        for(int i=0;i<pairs.length;i++){
            if(pairs[i][0].equals(key)){
                return (V) pairs[i][1];
            }
        }
        return null;
    }


    public static void main(String[] args) {
        SimpleMap a = new SimpleMap(10);
        a.put("k1","v1");
        a.put("k2","v2");
        a.put("k3","v3");
        System.out.println(a.get("k1"));
        System.out.println(a.get("k2"));
        System.out.println(a.get("k3"));

        Map map = new HashMap();
    }
}
