package com.yuxin.controller;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.yuxin.util.HttpClientUtil;
import org.apache.commons.lang.StringUtils;
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
    String duanziUrl = "http://s.budejie.com/topic/list/zuixin/29/bs0517-iphone-4.3/%s-20.json";
    @RequestMapping(value = "/getBudejieArticle")
    @ResponseBody
    public JSONObject getBudejieArticle(String start) throws IOException {
        if(StringUtils.isBlank(start)){
            start = "0";
        }
        String url = String.format(duanziUrl,start);
        String result=  HttpClientUtil.get(url);
        JSONObject response = JSON.parseObject(result);
        return response;
    }
}
