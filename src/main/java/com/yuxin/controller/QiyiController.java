package com.yuxin.controller;

import com.yuxin.domain.Film;
import com.yuxin.service.QiyiService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
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
    public ModelAndView getQiyiVipFilm(String start) throws IOException {

        List<Film> films = qiyiService.getQiyiVipFilm();
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("films",films);
        modelAndView.setViewName("qiyivipfilms");
        return modelAndView;
    }

}
