package com.yuxin.domain;

import java.io.Serializable;

/**
 * Created by lyx on 2017/5/8.
 */
public class Film implements Serializable{
    private String name;
    private String src;
    private String img;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSrc() {
        return src;
    }

    public void setSrc(String src) {
        this.src = src;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }
}
