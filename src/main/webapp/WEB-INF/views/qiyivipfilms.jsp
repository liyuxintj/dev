<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: lyx
  Date: 2016/11/21
  Time: 下午6:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="zh-cn">
<head>
    <meta name="viewport" content="initial-scale=1, user-scalable=0, minimal-ui" charset="UTF-8">
    <title>搞笑段子</title>
    <!-- UC强制全屏 -->
    <meta name="full-screen" content="yes">
    <!-- QQ强制全屏 -->
    <meta name="x5-fullscreen" content="true">
    <style>
        *{
            margin: 0;
            padding:0;
            -webkit-tap-highlight-color:rgba(0,0,0,0);
            -webkit-text-size-adjust:none;
        }
        html{
            font-size:10px;
        }
        body{
            background-color: #f5f5f5;
            font-size: 1.2em;
        }
        .header{
            height: 44px;
            line-height: 44px;
            border-bottom: 1px solid #ccc;
            background-color: #eee;
        }
        .header h1{
            text-align: center;
            font-size: 2rem;
            font-weight: normal;
        }
        .content{
            background-color: #fff;
        }
        .content .item{
            display: -webkit-box;
            display: -webkit-flex;
            display: -ms-flexbox;
            display: flex;
            -ms-flex-align:center;
            -webkit-box-align:center;
            box-align:center;
            -webkit-align-items:center;
            align-items:center;
            padding:3.125%;
            border-bottom: 1px solid #ddd;
            color: #333;
            text-decoration: none;
        }
        .content .item img{
            display: block;
            width: 40px;
            height: 40px;
            border:1px solid #ddd;
        }
        .content .item h3{
            display: block;
            -webkit-box-flex: 1;
            -webkit-flex: 1;
            -ms-flex: 1;
            flex: 1;
            width: 100%;
            max-height: 40px;
            overflow: hidden;
            line-height: 20px;
            margin: 0 10px;
            font-size: 1.2rem;
        }
        .content .item .date{
            display: block;
            height: 20px;
            line-height: 20px;
            color: #999;
        }
        .opacity{
            -webkit-animation: opacity 0.3s linear;
            animation: opacity 0.3s linear;
        }
        @-webkit-keyframes opacity {
            0% {
                opacity:0;
            }
            100% {
                opacity:1;
            }
        }
        @keyframes opacity {
            0% {
                opacity:0;
            }
            100% {
                opacity:1;
            }
        }
        .site-piclist-180236 .site-piclist_pic {
            height: 236px;
        }
        .site-piclist_pic {
            position: relative;
            width: 100%;
            _overflow: hidden;
        }
        .site-title h3 {
            color: #699f00;
            float: left;
            padding-right: 7px;
            height: 45px;
            white-space: nowrap;
            background: url(http://www.qiyipic.com/common/fix/site/tit-playBtn.png) no-repeat 0 10px;
        }
        .site-title_left {
            height: 45px;
            overflow: hidden;
        }
    </style>
    <link rel="stylesheet" href="/dist/css/dropload.css">
    <!-- Bootstrap core CSS -->
    <%--<link href="dist/css/bootstrap.min.css" rel="stylesheet">--%>

    <!-- 新 Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.0/css/bootstrap.min.css">

    <!-- 可选的Bootstrap主题文件（一般不用引入） -->
    <link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.0/css/bootstrap-theme.min.css">

    <!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
    <script src="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js"></script>

    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="http://cdn.bootcss.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>

    <!-- 只有使用字体图标时才需要加载 Font-Awesome -->
    <link href="http://cdn.bootcss.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">

    <script src="http://cdn.bootcss.com/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="http://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
</head>
<body>
<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">玩这个</a>
        </div>
        <div id="navbar" class="collapse navbar-collapse">
            <ul class="nav navbar-nav">
                <li><a href="../../index.jsp">主页</a></li>
                <li  class="active"><a href="../../duanzi.jsp">段子</a></li>
                <li><a href="#contact">联系</a></li>
            </ul>
        </div><!--/.nav-collapse -->
    </div>
</nav>
<%--<div class="header">--%>
    <%--<h1>搞笑段子</h1>--%>
<%--</div>--%>
<div class="panel panel-primary content">
<%--<div class="content">--%>
    <div class="panel-heading">
        <h3 class="panel-title">每日精选笑话</h3>
    </div>
    <div class="site-title" style="padding-left: 100px;padding-top: 20px">
        <div class="tit-bgLine">

            <div class="site-title_left">

                <h3><span rseat="院线热播">院线热播</span></h3>

                <ul class="title-subLinks">

                    <li class="firstItem"><a href=" " title=" " alt=" " rseat=" "> </a></li>

                </ul>
            </div>
        </div>
    </div>
    <div class="clearfix" style="padding-left: 100px;padding-top: 20px">

        <div class="wrapper-piclist">
            <ul class="site-piclist site-piclist-180236 site-piclist-180236-describe">

                <!--default-->

                <!--album-->


                <!--video-->

                <!--collection-->
                <c:forEach items="films" var="film">
                    ${film.name}
                </c:forEach>
                <li>
                    <div class="site-piclist_pic">
                        <a class="site-piclist_pic_link" href="http://www.iqiyi.com/v_19rrazv43w.html" title="一条狗的使命" alt="一条狗的使命" target="iqiyiplay">
                            <img width="180" height="236" src="http://pic5.qiyipic.com/image/20170503/19/13/v_112223809_m_601_m1_180_236.jpg" alt="一条狗的使命" title="一条狗的使命" rseat="1_linkimg1">
                            <p class="site-piclist_icons-lb"><i class="mark-1080p"></i></p>
                            <p class="site-piclist_icons-lt">
                                <i class="site-icons-mark icon-viedo-vip-zx"></i>
                            </p>
                            <p class="site-piclist_icons">

                            </p>
                        </a>
                        <!-- 活动通知 -->
                        <div data-widget-activity="activityshowbox" style="display: none;">
                        </div>
                        <!-- 活动通知 end-->
                    </div>

                    <div class="site-piclist_info">
                        <div class="site-title_score">

                      <span class="score" data-score-wrap="score" data-score-tvid="668428000" data-score-showtag="1">
                        <strong class="num" data-score-num="1">8</strong><em data-score-num="2">.3</em>
                      </span>
                            <div class="title">
                                <p class="site-piclist_info_title"><a rseat="1_leftflo1" alt="一条狗的使命" title="一条狗的使命" href="http://www.iqiyi.com/v_19rrazv43w.html" target="iqiyiplay">一条狗的使命</a></p>
                            </div>
                        </div>
                        <p title="忠犬八公导演催泪新作" class="site-piclist_info_describe">忠犬八公导演催泪新作</p>
                    </div>

                </li>

                <!--default-->

                <!--album-->


                <!--video-->

                <!--collection-->

                <li>
                    <div class="site-piclist_pic">
                        <a class="site-piclist_pic_link" href="http://www.iqiyi.com/v_19rro4roow.html" title="奇怪的她" alt="奇怪的她" target="iqiyiplay">
                            <img width="180" height="236" src="http://pic4.qiyipic.com/image/20160608/2d/62/v_108910507_m_601_m1_180_236.jpg" alt="奇怪的她" title="奇怪的她" rseat="1_linkimg2">
                            <p class="site-piclist_icons-lb"><i class="mark-1080p"></i></p>
                            <p class="site-piclist_icons-lt">
                                <i class="site-icons-mark icon-viedo-vip-zx"></i>
                            </p>
                            <p class="site-piclist_icons">
                                <i class="site-icons icon-viedo-exc"></i>
                            </p>
                        </a>
                        <!-- 活动通知 -->
                        <div data-widget-activity="activityshowbox" style="display: none;">
                        </div>
                        <!-- 活动通知 end-->
                    </div>

                    <div class="site-piclist_info">
                        <div class="site-title_score">

                      <span class="score" data-score-wrap="score" data-score-tvid="344944300" data-score-showtag="1">
                        <strong class="num" data-score-num="1">8</strong><em data-score-num="2">.6</em>
                      </span>
                            <div class="title">
                                <p class="site-piclist_info_title"><a rseat="1_leftflo2" alt="奇怪的她" title="奇怪的她" href="http://www.iqiyi.com/v_19rro4roow.html" target="iqiyiplay">奇怪的她</a></p>
                            </div>
                        </div>
                        <p title="爆笑韩版" 重返20岁""="" class="site-piclist_info_describe">爆笑韩版"重返20岁"</p>
                    </div>

                </li>

                <!--default-->

                <!--album-->


                <!--video-->

                <!--collection-->

                <li>
                    <div class="site-piclist_pic">
                        <a class="site-piclist_pic_link" href="http://www.iqiyi.com/v_19rrazpi0k.html" title="刺客信条（国语）" alt="刺客信条（国语）" target="iqiyiplay">
                            <img width="180" height="236" src="http://pic1.qiyipic.com/image/20170428/38/58/v_112222198_m_601_m1_180_236.jpg" alt="刺客信条（国语）" title="刺客信条（国语）" rseat="1_linkimg3">
                            <p class="site-piclist_icons-lb"><i class="mark-1080p"></i></p>
                            <p class="site-piclist_icons-lt">
                                <i class="site-icons-mark icon-viedo-vip-zx"></i>
                            </p>
                            <p class="site-piclist_icons">

                            </p>
                        </a>
                        <!-- 活动通知 -->
                        <div data-widget-activity="activityshowbox" style="display: none;">
                        </div>
                        <!-- 活动通知 end-->
                    </div>

                    <div class="site-piclist_info">
                        <div class="site-title_score">

                      <span class="score" data-score-wrap="score" data-score-tvid="668165400" data-score-showtag="1">
                        <strong class="num" data-score-num="1">7</strong><em data-score-num="2">.5</em>
                      </span>
                            <div class="title">
                                <p class="site-piclist_info_title"><a rseat="1_leftflo3" alt="刺客信条（国语）" title="刺客信条（国语）" href="http://www.iqiyi.com/v_19rrazpi0k.html" target="iqiyiplay">刺客信条（国语）</a></p>
                            </div>
                        </div>
                        <p title="法鲨半裸出镜穿梭古今" class="site-piclist_info_describe">法鲨半裸出镜穿梭古今</p>
                    </div>

                </li>

                <!--default-->

                <!--album-->


                <!--video-->

                <!--collection-->

                <li>
                    <div class="site-piclist_pic">
                        <a class="site-piclist_pic_link" href="http://www.iqiyi.com/v_19rratnpfg.html" title="刺客信条" alt="刺客信条" target="iqiyiplay">
                            <img width="180" height="236" src="http://pic0.qiyipic.com/image/20170427/fa/2f/v_112191714_m_601_m1_180_236.jpg" alt="刺客信条" title="刺客信条" rseat="1_linkimg4">
                            <p class="site-piclist_icons-lb"><i class="mark-1080p"></i></p>
                            <p class="site-piclist_icons-lt">
                                <i class="site-icons-mark icon-viedo-vip-zx"></i>
                            </p>
                            <p class="site-piclist_icons">

                            </p>
                        </a>
                        <!-- 活动通知 -->
                        <div data-widget-activity="activityshowbox" style="display: none;">
                        </div>
                        <!-- 活动通知 end-->
                    </div>

                    <div class="site-piclist_info">
                        <div class="site-title_score">

                      <span class="score" data-score-wrap="score" data-score-tvid="662147600" data-score-showtag="1">
                        <strong class="num" data-score-num="1">7</strong><em data-score-num="2">.5</em>
                      </span>
                            <div class="title">
                                <p class="site-piclist_info_title"><a rseat="1_leftflo4" alt="刺客信条" title="刺客信条" href="http://www.iqiyi.com/v_19rratnpfg.html" target="iqiyiplay">刺客信条</a></p>
                            </div>
                        </div>
                        <p title="法鲨半裸出镜穿梭古今" class="site-piclist_info_describe">法鲨半裸出镜穿梭古今</p>
                    </div>

                </li>

                <!--default-->

                <!--album-->


                <!--video-->

                <!--collection-->

                <li>
                    <div class="site-piclist_pic">
                        <a class="site-piclist_pic_link" href="http://www.iqiyi.com/v_19rrazt45w.html" title="生化危机：终章（国语）" alt="生化危机：终章（国语）" target="iqiyiplay">
                            <img width="180" height="236" src="http://pic4.qiyipic.com/image/20170428/c9/6a/v_112223338_m_601_m1_180_236.jpg" alt="生化危机：终章（国语）" title="生化危机：终章（国语）" rseat="1_linkimg5">
                            <p class="site-piclist_icons-lb"><i class="mark-1080p"></i></p>
                            <p class="site-piclist_icons-lt">
                                <i class="site-icons-mark icon-viedo-vod-pay"></i>
                            </p>
                            <p class="site-piclist_icons">

                            </p>
                        </a>
                        <!-- 活动通知 -->
                        <div data-widget-activity="activityshowbox" style="display: none;">
                        </div>
                        <!-- 活动通知 end-->
                    </div>

                    <div class="site-piclist_info">
                        <div class="site-title_score">

                      <span class="score" data-score-wrap="score" data-score-tvid="668332600" data-score-showtag="1">
                        <strong class="num" data-score-num="1">7</strong><em data-score-num="2">.8</em>
                      </span>
                            <div class="title">
                                <p class="site-piclist_info_title"><a rseat="1_leftflo5" alt="生化危机：终章（国语）" title="生化危机：终章（国语）" href="http://www.iqiyi.com/v_19rrazt45w.html" target="iqiyiplay">生化危机：终章（国语）</a></p>
                            </div>
                        </div>
                        <p title="人与丧尸最后的较量" class="site-piclist_info_describe">人与丧尸最后的较量</p>
                    </div>

                </li>

                <!--default-->

                <!--album-->


                <!--video-->

                <!--collection-->

                <li>
                    <div class="site-piclist_pic">
                        <a class="site-piclist_pic_link" href="http://www.iqiyi.com/v_19rrb4ak1s.html" title="生化危机：终章" alt="生化危机：终章" target="iqiyiplay">
                            <img width="180" height="236" src="http://pic3.qiyipic.com/image/20170428/0d/e6/v_112072113_m_601_m4_180_236.jpg" alt="生化危机：终章" title="生化危机：终章" rseat="1_linkimg6">
                            <p class="site-piclist_icons-lb"><i class="mark-1080p"></i></p>
                            <p class="site-piclist_icons-lt">
                                <i class="site-icons-mark icon-viedo-vod-pay"></i>
                            </p>
                            <p class="site-piclist_icons">

                            </p>
                        </a>
                        <!-- 活动通知 -->
                        <div data-widget-activity="activityshowbox" style="display: none;">
                        </div>
                        <!-- 活动通知 end-->
                    </div>

                    <div class="site-piclist_info">
                        <div class="site-title_score">

                      <span class="score" data-score-wrap="score" data-score-tvid="644277100" data-score-showtag="1">
                        <strong class="num" data-score-num="1">7</strong><em data-score-num="2">.8</em>
                      </span>
                            <div class="title">
                                <p class="site-piclist_info_title"><a rseat="1_leftflo6" alt="生化危机：终章" title="生化危机：终章" href="http://www.iqiyi.com/v_19rrb4ak1s.html" target="iqiyiplay">生化危机：终章</a></p>
                            </div>
                        </div>
                        <p title="双枪女战神末日斗丧尸" class="site-piclist_info_describe">双枪女战神末日斗丧尸</p>
                    </div>

                </li>

                <!--default-->

                <!--album-->


                <!--video-->

                <!--collection-->

                <li>
                    <div class="site-piclist_pic">
                        <a class="site-piclist_pic_link" href="http://www.iqiyi.com/v_19rrbcf2uk.html" title="八月" alt="八月" target="iqiyiplay">
                            <img width="180" height="236" src="http://pic5.qiyipic.com/image/20170420/92/5d/v_112103901_m_601_m1_180_236.jpg" alt="八月" title="八月" rseat="1_linkimg7">
                            <p class="site-piclist_icons-lb"><i class="mark-1080p"></i></p>
                            <p class="site-piclist_icons-lt">
                                <i class="site-icons-mark icon-viedo-vod-pay"></i>
                            </p>
                            <p class="site-piclist_icons">
                                <i class="site-icons icon-viedo-exc"></i>
                            </p>
                        </a>
                        <!-- 活动通知 -->
                        <div data-widget-activity="activityshowbox" style="display: none;">
                        </div>
                        <!-- 活动通知 end-->
                    </div>

                    <div class="site-piclist_info">
                        <div class="site-title_score">

                      <span class="score" data-score-wrap="score" data-score-tvid="647406400" data-score-showtag="1">
                        <strong class="num" data-score-num="1">7</strong><em data-score-num="2">.7</em>
                      </span>
                            <div class="title">
                                <p class="site-piclist_info_title"><a rseat="1_leftflo7" alt="八月" title="八月" href="http://www.iqiyi.com/v_19rrbcf2uk.html" target="iqiyiplay">八月</a></p>
                            </div>
                        </div>
                        <p title="第53届金马奖最佳影片" class="site-piclist_info_describe">第53届金马奖最佳影片</p>
                    </div>

                </li>

            </ul>
        </div>

        <div class="wrapper-piclist">
            <ul class="site-piclist site-piclist-180236 site-piclist-180236-describe">

                <!--default-->

                <!--album-->


                <!--video-->

                <!--collection-->

                <li>
                    <div class="site-piclist_pic">
                        <a class="site-piclist_pic_link" href="http://www.iqiyi.com/v_19rrbcf2uk.html" title="八月" alt="八月" target="iqiyiplay">
                            <img width="180" height="236" src="http://pic5.qiyipic.com/image/20170420/92/5d/v_112103901_m_601_m1_180_236.jpg" alt="八月" title="八月" rseat="2_linkimg1">
                            <p class="site-piclist_icons-lb"><i class="mark-1080p"></i></p>
                            <p class="site-piclist_icons-lt">
                                <i class="site-icons-mark icon-viedo-vod-pay"></i>
                            </p>
                            <p class="site-piclist_icons">
                                <i class="site-icons icon-viedo-exc"></i>
                            </p>
                        </a>
                        <!-- 活动通知 -->
                        <div data-widget-activity="activityshowbox" style="display: none;">
                        </div>
                        <!-- 活动通知 end-->
                    </div>

                    <div class="site-piclist_info">
                        <div class="site-title_score">

                      <span class="score" data-score-wrap="score" data-score-tvid="647406400" data-score-showtag="1">
                        <strong class="num" data-score-num="1">7</strong><em data-score-num="2">.7</em>
                      </span>
                            <div class="title">
                                <p class="site-piclist_info_title"><a rseat="2_leftflo1" alt="八月" title="八月" href="http://www.iqiyi.com/v_19rrbcf2uk.html" target="iqiyiplay">八月</a></p>
                            </div>
                        </div>
                        <p title="第53届金马奖最佳影片" class="site-piclist_info_describe">第53届金马奖最佳影片</p>
                    </div>

                </li>

                <!--default-->

                <!--album-->


                <!--video-->

                <!--collection-->

                <li>
                    <div class="site-piclist_pic">
                        <a class="site-piclist_pic_link" href="http://www.iqiyi.com/v_19rrn8vkts.html" title="阿凡达" alt="阿凡达" target="iqiyiplay">
                            <img width="180" height="236" src="http://pic4.qiyipic.com/image/20170427/18/b7/v_108758387_m_601_m5_180_236.jpg" alt="阿凡达" title="阿凡达" rseat="2_linkimg2">
                            <p class="site-piclist_icons-lb"><i class="mark-1080p"></i></p>
                            <p class="site-piclist_icons-lt">
                                <i class="site-icons-mark icon-viedo-vip-zx"></i>
                            </p>
                            <p class="site-piclist_icons">

                            </p>
                        </a>
                        <!-- 活动通知 -->
                        <div data-widget-activity="activityshowbox" style="display: none;">
                        </div>
                        <!-- 活动通知 end-->
                    </div>

                    <div class="site-piclist_info">
                        <div class="site-title_score">

                      <span class="score" data-score-wrap="score" data-score-tvid="331204700" data-score-showtag="1">
                        <strong class="num" data-score-num="1">8</strong><em data-score-num="2">.8</em>
                      </span>
                            <div class="title">
                                <p class="site-piclist_info_title"><a rseat="2_leftflo2" alt="阿凡达" title="阿凡达" href="http://www.iqiyi.com/v_19rrn8vkts.html" target="iqiyiplay">阿凡达</a></p>
                            </div>
                        </div>
                        <p title="外星人抵抗人类拆迁队" class="site-piclist_info_describe">外星人抵抗人类拆迁队</p>
                    </div>

                </li>

                <!--default-->

                <!--album-->


                <!--video-->

                <!--collection-->

                <li>
                    <div class="site-piclist_pic">
                        <a class="site-piclist_pic_link" href="http://www.iqiyi.com/v_19rr9tq5fg.html" title="西游伏妖篇" alt="西游伏妖篇" target="iqiyiplay">
                            <img width="180" height="236" src="http://pic6.qiyipic.com/image/20170412/39/4d/v_111512587_m_601_m1_180_236.jpg" alt="西游伏妖篇" title="西游伏妖篇" rseat="2_linkimg3">
                            <p class="site-piclist_icons-lb"><i class="mark-1080p"></i></p>
                            <p class="site-piclist_icons-lt">
                                <i class="site-icons-mark icon-viedo-vip-zx"></i>
                            </p>
                            <p class="site-piclist_icons">

                            </p>
                        </a>
                        <!-- 活动通知 -->
                        <div data-widget-activity="activityshowbox" style="display: none;">
                        </div>
                        <!-- 活动通知 end-->
                    </div>

                    <div class="site-piclist_info">
                        <div class="site-title_score">

                      <span class="score" data-score-wrap="score" data-score-tvid="589261200" data-score-showtag="1">
                        <strong class="num" data-score-num="1">8</strong><em data-score-num="2">.0</em>
                      </span>
                            <div class="title">
                                <p class="site-piclist_info_title"><a rseat="2_leftflo3" alt="西游伏妖篇" title="西游伏妖篇" href="http://www.iqiyi.com/v_19rr9tq5fg.html" target="iqiyiplay">西游伏妖篇</a></p>
                            </div>
                        </div>
                        <p title="周星驰徐克强势联手" class="site-piclist_info_describe">周星驰徐克强势联手</p>
                    </div>

                </li>

                <!--default-->

                <!--album-->


                <!--video-->

                <!--collection-->

                <li>
                    <div class="site-piclist_pic">
                        <a class="site-piclist_pic_link" href="http://www.iqiyi.com/v_19rr9whs5g.html" title="爱乐之城" alt="爱乐之城" target="iqiyiplay">
                            <img width="180" height="236" src="http://pic1.qiyipic.com/image/20170425/5d/bf/v_111627093_m_601_m3_180_236.jpg" alt="爱乐之城" title="爱乐之城" rseat="2_linkimg4">
                            <p class="site-piclist_icons-lb"><i class="mark-1080p"></i></p>
                            <p class="site-piclist_icons-lt">
                                <i class="site-icons-mark icon-viedo-vip-zx"></i>
                            </p>
                            <p class="site-piclist_icons">
                                <i class="site-icons icon-viedo-exc"></i>
                            </p>
                        </a>
                        <!-- 活动通知 -->
                        <div data-widget-activity="activityshowbox" style="display: none;">
                        </div>
                        <!-- 活动通知 end-->
                    </div>

                    <div class="site-piclist_info">
                        <div class="site-title_score">

                      <span class="score" data-score-wrap="score" data-score-tvid="600153000" data-score-showtag="1">
                        <strong class="num" data-score-num="1">8</strong><em data-score-num="2">.9</em>
                      </span>
                            <div class="title">
                                <p class="site-piclist_info_title"><a rseat="2_leftflo4" alt="爱乐之城" title="爱乐之城" href="http://www.iqiyi.com/v_19rr9whs5g.html" target="iqiyiplay">爱乐之城</a></p>
                            </div>
                        </div>
                        <p title="奥斯卡金像奖六奖得主" class="site-piclist_info_describe">奥斯卡金像奖六奖得主</p>
                    </div>

                </li>

                <!--default-->

                <!--album-->


                <!--video-->

                <!--collection-->

                <li>
                    <div class="site-piclist_pic">
                        <a class="site-piclist_pic_link" href="http://www.iqiyi.com/v_19rrav36no.html" title="指甲刀人魔" alt="指甲刀人魔" target="iqiyiplay">
                            <img width="180" height="236" src="http://pic3.qiyipic.com/image/20170426/a5/46/v_112182058_m_601_m2_180_236.jpg" alt="指甲刀人魔" title="指甲刀人魔" rseat="2_linkimg5">
                            <p class="site-piclist_icons-lb"><i class="mark-1080p"></i></p>
                            <p class="site-piclist_icons-lt">
                                <i class="site-icons-mark icon-viedo-vip-zx"></i>
                            </p>
                            <p class="site-piclist_icons">
                                <i class="site-icons icon-viedo-exc"></i>
                            </p>
                        </a>
                        <!-- 活动通知 -->
                        <div data-widget-activity="activityshowbox" style="display: none;">
                        </div>
                        <!-- 活动通知 end-->
                    </div>

                    <div class="site-piclist_info">
                        <div class="site-title_score">

                      <span class="score" data-score-wrap="score" data-score-tvid="660274200" data-score-showtag="1">
                        <strong class="num" data-score-num="1">7</strong><em data-score-num="2">.3</em>
                      </span>
                            <div class="title">
                                <p class="site-piclist_info_title"><a rseat="2_leftflo5" alt="指甲刀人魔" title="指甲刀人魔" href="http://www.iqiyi.com/v_19rrav36no.html" target="iqiyiplay">指甲刀人魔</a></p>
                            </div>
                        </div>
                        <p title="周冬雨怪癖曝光" class="site-piclist_info_describe">周冬雨怪癖曝光</p>
                    </div>

                </li>

                <!--default-->

                <!--album-->


                <!--video-->

                <!--collection-->

                <li>
                    <div class="site-piclist_pic">
                        <a class="site-piclist_pic_link" href="http://www.iqiyi.com/v_19rraczfrk.html" title="太空旅客" alt="太空旅客" target="iqiyiplay">
                            <img width="180" height="236" src="http://pic0.qiyipic.com/image/20170331/e0/ba/v_111865524_m_601_m3_180_236.jpg" alt="太空旅客" title="太空旅客" rseat="2_linkimg6">
                            <p class="site-piclist_icons-lb"><i class="mark-1080p"></i></p>
                            <p class="site-piclist_icons-lt">
                                <i class="site-icons-mark icon-viedo-vod-coupon"></i>
                            </p>
                            <p class="site-piclist_icons">

                            </p>
                        </a>
                        <!-- 活动通知 -->
                        <div data-widget-activity="activityshowbox" style="display: none;">
                        </div>
                        <!-- 活动通知 end-->
                    </div>

                    <div class="site-piclist_info">
                        <div class="site-title_score">

                      <span class="score" data-score-wrap="score" data-score-tvid="623573500" data-score-showtag="1">
                        <strong class="num" data-score-num="1">7</strong><em data-score-num="2">.8</em>
                      </span>
                            <div class="title">
                                <p class="site-piclist_info_title"><a rseat="2_leftflo6" alt="太空旅客" title="太空旅客" href="http://www.iqiyi.com/v_19rraczfrk.html" target="iqiyiplay">太空旅客</a></p>
                            </div>
                        </div>
                        <p title="大表姐X星爵太空互撩" class="site-piclist_info_describe">大表姐X星爵太空互撩</p>
                    </div>

                </li>

                <!--default-->

                <!--album-->


                <!--video-->

                <!--collection-->

                <li>
                    <div class="site-piclist_pic">
                        <a class="site-piclist_pic_link" href="http://www.iqiyi.com/v_19rr9trdr8.html" title="健忘村" alt="健忘村" target="iqiyiplay">
                            <img width="180" height="236" src="http://pic9.qiyipic.com/image/20170309/07/59/v_111512649_m_601_m2_180_236.jpg" alt="健忘村" title="健忘村" rseat="2_linkimg7">
                            <p class="site-piclist_icons-lb"><i class="mark-1080p"></i></p>
                            <p class="site-piclist_icons-lt">
                                <i class="site-icons-mark icon-viedo-vip-zx"></i>
                            </p>
                            <p class="site-piclist_icons">

                            </p>
                        </a>
                        <!-- 活动通知 -->
                        <div data-widget-activity="activityshowbox" style="display: none;">
                        </div>
                        <!-- 活动通知 end-->
                    </div>

                    <div class="site-piclist_info">
                        <div class="site-title_score">

                      <span class="score" data-score-wrap="score" data-score-tvid="589269000" data-score-showtag="1">
                        <strong class="num" data-score-num="1">7</strong><em data-score-num="2">.7</em>
                      </span>
                            <div class="title">
                                <p class="site-piclist_info_title"><a rseat="2_leftflo7" alt="健忘村" title="健忘村" href="http://www.iqiyi.com/v_19rr9trdr8.html" target="iqiyiplay">健忘村</a></p>
                            </div>
                        </div>
                        <p title="舒淇落魄遭五花大绑" class="site-piclist_info_describe">舒淇落魄遭五花大绑</p>
                    </div>

                </li>

            </ul>
        </div>

    </div>
</div>
<!-- jQuery1.7以上 或者 Zepto 二选一，不要同时都引用 -->
<%--<script src="/dist/js/zepto.min.js"></script>--%>
<script src="/dist/js/dropload.min.js"></script>
<script>
</script>
</body>
</html>
