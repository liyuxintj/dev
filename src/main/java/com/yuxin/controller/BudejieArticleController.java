package com.yuxin.controller;

import com.alibaba.fastjson.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by lyx on 2016/11/18.
 */
@Controller
@RequestMapping(value = "/budejie")
public class BudejieArticleController {
    @RequestMapping(value = "/getBudejieArticle")
    public JSONObject getBudejieArticle(){
        
        return null;
    }
}
