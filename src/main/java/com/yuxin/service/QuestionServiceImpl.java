package com.yuxin.service;

import com.yuxin.domain.QuestionDo;
import com.yuxin.domain.QuestionDoExample;
import com.yuxin.mapper.QuestionDoMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by lyx on 2016/10/18.
 */
@Service
public class QuestionServiceImpl implements QuestionService{
    @Autowired
    QuestionDoMapper questionDoMapper;

    public List<QuestionDo> getList() {
        return questionDoMapper.selectByExample(new QuestionDoExample());
    }
}
