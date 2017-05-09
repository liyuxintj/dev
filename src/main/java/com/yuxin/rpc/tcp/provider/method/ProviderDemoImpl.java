package com.yuxin.rpc.tcp.provider.method;

/**
 * Created by lyx on 2016/12/21.
 */
public class ProviderDemoImpl implements ProviderDemo{
    public String printMsg(String msg) {
        System.out.println("----" + msg + "----");
        return "Ni Hao " + msg;
    }
}
