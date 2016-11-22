package com.yuxin.util;

import net.rubyeye.xmemcached.MemcachedClient;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

/**
 * Created by lyx on 2016/11/22.
 */
@Component
public class MyMemcachedClient {
    @Autowired
    private MemcachedClient xmemcachedClient;

    /**
     * Get方法, 转换结果类型并屏蔽异常, 仅返回Null.
     */
    @SuppressWarnings("unchecked")
    public <T> T get(String key) {
        try {
            T temp = (T) xmemcachedClient.get(key);
            return temp;

        } catch (Exception e) {
            return null;
        }
    }

    /**
     * 异步Set方法, 不考虑执行结果.
     */
    public void set(String key, int expiredTime, Object value) {
        try {
            if(value != null){
                xmemcachedClient.set(key, expiredTime, value);
            }

        } catch (Exception e) {
        }
    }

    /**
     * 异步 Delete方法, 不考虑执行结果.
     */
    public void delete(String key) {
        try {
                xmemcachedClient.delete(key);
        } catch (Exception e) {
        }
        return ;
    }
}
