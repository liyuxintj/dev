package com.yuxin.controller;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.yuxin.domain.QuestionDo;
import com.yuxin.service.QuestionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * Created by lyx on 2016/10/18.
 */
@Controller
public class QuestionController {
    @Autowired
    QuestionService questionService;

    @RequestMapping(value = "/getQuestionList")
    @ResponseBody
    public String getQuestionList(){
        List<QuestionDo> list = questionService.getList();
        JSONArray array = new JSONArray();
        for(QuestionDo questionDo : list){
            JSONObject jsonObject = new JSONObject();
            jsonObject.put("id",questionDo.getId());
            jsonObject.put("question",questionDo.getQuestion());
            array.add(jsonObject);
        }
        return array.toJSONString();
    }


    @RequestMapping(value = "/getaaa")
    @ResponseBody
    public JSONObject getaaa(){
        List<QuestionDo> list = questionService.getList();
        JSONArray array = new JSONArray();
        for(QuestionDo questionDo : list){
            JSONObject jsonObject = new JSONObject();
            jsonObject.put("id",questionDo.getId());
            jsonObject.put("question",questionDo.getQuestion());
            array.add(jsonObject);
        }
        JSONObject aaa = new JSONObject();
        aaa.put("啊啊啊","是的是的");
        return aaa;
    }

}
