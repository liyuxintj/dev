package com.yuxin.controller;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.yuxin.util.HttpClientUtil;
import com.yuxin.util.MyMemcachedClient;
import net.rubyeye.xmemcached.MemcachedClient;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.io.IOException;

/**
 * Created by lyx on 2016/11/18.
 */
@Controller
@RequestMapping(value = "/budejie")
public class BudejieArticleController {
    @Autowired
    MyMemcachedClient memcachedClient;
    String duanziUrl = "http://s.budejie.com/topic/list/zuixin/29/bs0517-iphone-4.3/%s-20.json";
    @RequestMapping(value = "/getBudejieArticle")
    @ResponseBody
    public JSONObject getBudejieArticle(String start) throws IOException {

        if(StringUtils.isBlank(start)){
            start = "0";
        }
        String key =  "duanzi:"+start;
        JSONObject response = memcachedClient.get(key);
        if(response==null){
            String url = String.format(duanziUrl,start);
            String result=  HttpClientUtil.get(url);
            JSONObject resultJson = JSON.parseObject(result);
            JSONArray list = resultJson.getJSONArray("list");
            JSONArray responseList = new JSONArray();
            if(list!=null){
                for(int i=0;i<list.size();i++){
                    JSONObject temp = new JSONObject();
                    temp.put("text",list.getJSONObject(i).get("text"));
                    temp.put("passtime",list.getJSONObject(i).get("passtime"));
                    temp.put("name",list.getJSONObject(i).getJSONObject("u").get("name"));
                    temp.put("pic",list.getJSONObject(i).getJSONObject("u").getJSONArray("header").get(1));
                    responseList.add(temp);
                }
            }
            response = new JSONObject();
            response.put("list",responseList);
            response.put("info",resultJson.getJSONObject("info"));
            memcachedClient.set(key,30*60,response);
        }


        return response;
    }
}
