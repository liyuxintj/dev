package com.yuxin.controller;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.yuxin.domain.Film;
import com.yuxin.service.QiyiService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.io.IOException;
import java.util.List;

/**
 * Created by lyx on 2017/5/9.
 */
@Controller
public class QiyiController {
    @Autowired
    QiyiService qiyiService;


    @RequestMapping(value = "/qiyifilms")
    @ResponseBody
    public String getQiyiVipFilm(String start) throws IOException {

        JSONArray array = qiyiService.getQiyiVipFilm();
        JSONArray responseArray = new JSONArray();
        int index = 0;
        if(Integer.parseInt(start)<array.size()){
            for(int i=Integer.parseInt(start);i<array.size();i++){
                responseArray.add(array.get(i));
                index = i;
            }
        }

        JSONObject jsonObject = new JSONObject();
        jsonObject.put("films",array);
        jsonObject.put("start",index);
        return jsonObject.toJSONString();
    }

}
