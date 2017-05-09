package com.yuxin.service;

import com.alibaba.fastjson.JSONArray;
import com.yuxin.domain.Film;

import java.io.IOException;
import java.util.List;

/**
 * Created by lyx on 2017/5/8.
 */
public interface QiyiService {
    JSONArray getQiyiVipFilm() throws IOException;
}
