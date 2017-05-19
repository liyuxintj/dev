package com.yuxin.util;

import org.apache.http.HttpEntity;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.util.EntityUtils;

import java.io.IOException;

/**
 * Created by lyx on 2016/11/18.
 */
public class HttpClientUtil {

    static final String charset = "utf-8";
    public static String get(String url) throws IOException {
        CloseableHttpClient httpclient = HttpClients.createDefault();
        HttpGet httpGet = new HttpGet(url);
        CloseableHttpResponse response1 = httpclient.execute(httpGet);
        try {
           // System.out.println(response1.getStatusLine());
            HttpEntity entity1 = response1.getEntity();
            // do something useful with the response body
            // and ensure it is fully consumed
            String result = EntityUtils.toString(entity1,charset);
            EntityUtils.consume(entity1);
            return result;
        } finally {
            response1.close();
        }
    }


    public static void main(String[] args) throws IOException {
        //String a = HttpClientUtil.get("http://wanzhege.com");
        //System.out.println(a);
        String a = HttpClientUtil.get("http://www.iqiyi.com/dianying/vip.html");
        System.out.println(a);
        
    }
}
