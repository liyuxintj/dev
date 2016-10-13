/**
 *  Copyright (c)  2011-2020 Panguso, Inc.
 *  All rights reserved.
 *
 *  This software is the confidential and proprietary information of Panguso, 
 *  Inc. ("Confidential Information"). You shall not
 *  disclose such Confidential Information and shall use it only in
 *  accordance with the terms of the license agreement you entered into with Panguso.
 */
package com.yuxin.util;

import ch.qos.logback.classic.LoggerContext;
import ch.qos.logback.classic.joran.JoranConfigurator;
import ch.qos.logback.core.joran.spi.JoranException;
import org.slf4j.LoggerFactory;
import org.springframework.core.io.Resource;

import java.io.IOException;

/**
 * 日志初始化
 *
 * @author liufengyu
 * @date 2011-8-17
 */
public final class LogConfig {

    Resource resource;
    public LogConfig(Resource configFilePath){
        this.resource = configFilePath;
    }

      /**
     * 初始化
     *
     * @param configFilePath 配置文件路径
     * @throws ch.qos.logback.core.joran.spi.JoranException 异常
     * @author liufengyu
     * @date 2013-1-24
     */
    public static void config(String configFilePath) throws JoranException {
        LoggerContext lc = (LoggerContext) LoggerFactory.getILoggerFactory();
        JoranConfigurator configurator = new JoranConfigurator();
        configurator.setContext(lc);
        lc.reset();

        configurator.doConfigure(configFilePath);
    }
    public void reload() throws JoranException, IOException {
        LoggerContext lc = (LoggerContext) LoggerFactory.getILoggerFactory();
        JoranConfigurator configurator = new JoranConfigurator();
        configurator.setContext(lc);
        lc.reset();

        configurator.doConfigure(resource.getURL());
    }
}