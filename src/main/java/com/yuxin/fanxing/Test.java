package com.yuxin.fanxing;

import java.util.*;

/**
 * Created by lyx on 2017/1/6.
 */
public class Test<K extends Object> {
    K a;

    K getA(){
        return a;
    }
    void setA(K a){
        this.a = a;
    }



    public static void main(String[] args) {
        Test<Set> test = new Test<Set>();
        Set a  = new HashSet();
        test.setA(a);
        System.out.println(test.getA());

        Test<Collection> test3 = new Test<Collection>();

        Test<List> test1 = new Test<List>();
        List list = new ArrayList();
        list.add("a");
        test1.setA(list);
        List list1 = test1.getA();
        System.out.println(list1.get(0));


        Map map  = new HashMap();
        map.put("s",1);

    }
}
