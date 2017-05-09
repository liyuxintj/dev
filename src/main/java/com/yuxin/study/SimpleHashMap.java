package com.yuxin.study;

import java.util.HashMap;
import java.util.Map;

/**
 * Created by lyx on 2017/3/30.
 */
public class SimpleHashMap<K,V> {

    private Entry[] table;

    private int size;


    static class Entry<K,V> implements Map.Entry{
        int hashcode;
        K key;
        V value;
        Entry<K,V> next;

        Entry(int hashcode,K key,V value,Entry<K,V> next){
            hashcode = hashcode;
            key = key;
            value = value;
            next = next;
        }

        public Object getKey() {
            return null;
        }

        public Object getValue() {
            return null;
        }

        public Object setValue(Object value) {
            return null;
        }
    }

    public SimpleHashMap(){
        new SimpleHashMap(16);
    }


    public SimpleHashMap(int length){
        table = new Entry[length];
    }


    public void put(K key,V value){
        if(size>=table.length){
            kuoRong();
        }
        int hash = Integer.valueOf(key.hashCode()).hashCode();
        int index = hash%table.length;
        System.out.println("index:"+index);
//        Entry entry = new Entry();
//        entry.key = key;
//        entry.value = value;
//        if(table[index] == null){
//            size++;
//        }
//        table[index]= entry;
    }


    public V get(K key){
        int index = key.hashCode()%table.length;
        if(table[index].key.equals(key)){
            return (V) table[index].value;
        }
        return null;
    }


    private void kuoRong(){
        Entry[] newEntry = new Entry[table.length*2];

        for(int i=0;i<table.length;i++){
            newEntry[i] = table[i];
        }
        table = newEntry;
    }


    public static void main(String[] args) {
//        SimpleHashMap simpleHashMap = new SimpleHashMap();
//        for(int i=0;i<10;i++){
//            simpleHashMap.put("k"+i,"v"+i);
//        }
//
//        for(int i=0;i<10;i++){
//            System.out.println(simpleHashMap.get("k"+i));
//        }



        Map map = new HashMap();
        for(int i=0;i<12;i++){
            map.put("a"+i,i);
        }
        System.out.println("a");

    }


}
