package com.yuxin.service;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.yuxin.domain.Film;
import com.yuxin.util.HttpClientUtil;
import com.yuxin.util.MyMemcachedClient;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by lyx on 2017/5/8.
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/application-context.xml","file:src/main/webapp/WEB-INF/spring/springmvc/*.xml"})
@Service
public class QiyiServiceImpl implements QiyiService{
    @Autowired
    MyMemcachedClient memcachedClient;
    @Test
    public List<Film> getQiyiVipFilm() throws IOException {
        String key = "qiyivipfilm";
//        JSONArray array = memcachedClient.get(key);
        List<Film> films = memcachedClient.get(key);
        if(films==null) {
            String html = HttpClientUtil.get("http://www.iqiyi.com/dianying/vip.html");
            Document document = Jsoup.parse(html);
            Elements elements = document.select(".site-piclist_pic_link");
            films = new ArrayList<Film>();
            for (Element element : elements) {
                Film film = new Film();
                film.setImg(element.children().first().attr("src"));
                film.setName(element.attr("title"));
                film.setSrc(element.attr("href"));
                films.add(film);

//                JSONObject jsonObject = new JSONObject();
//                jsonObject.put("img",element.children().first().attr("src"));
//                jsonObject.put("title",element.attr("title"));
//                jsonObject.put("source",element.attr("href"));
//                array.add(jsonObject);
            }
            memcachedClient.set(key, 12 * 60 * 60 * 60, films);
        }
        return films;
    }
}
