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
            <a class="navbar-brand" href="#">笑话大全</a>
        </div>
        <div id="navbar" class="collapse navbar-collapse">
            <ul class="nav navbar-nav">
                <li class="active"><a href="#">主页</a></li>
                <li><a href="./duanzi.jsp">段子</a></li>
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
    <div class="lists"></div>
</div>
<!-- jQuery1.7以上 或者 Zepto 二选一，不要同时都引用 -->
<%--<script src="/dist/js/zepto.min.js"></script>--%>
<script src="/dist/js/dropload.min.js"></script>
<script>


    var counter = 1;
    var start = "";
    $('.content').dropload({
        scrollArea : window,
        loadDownFn : function(me){
            $.ajax({
                type: 'GET',
//                    url: 'json/more.json',
                url: '/budejie/getBudejieArticle?start='+start,
                dataType: 'json',
                success: function(data){
                    var content = "";
                    start = data.info.np;

                    var list = data["list"];

                    for(var i = 0; i < list.length; i++){
                        if(list.length<20){
                            // 锁定
                            me.lock();
                            // 无数据
                            me.noData();
                            break;
                        }
//                            result +=   '<a class="item opacity" href="'+data.lists[i].link+'">'
//                                    +'<img src="'+data.lists[i].pic+'" alt="">'
//                                    +'<h3>'+data.lists[i].title+'</h3>'
//                                    +'<span class="date">'+data.lists[i].date+'</span>'
//                                    +'</a>';
                        if(i%2==1){
                            content =content +"<h3 style='color: #269abc;'>"+counter+"&nbsp;&nbsp;&nbsp;" +list[i]["text"]+"</h3>";
                        }else {
                            content =content+"<h3 style='color: #843534;'>"+counter+"&nbsp;&nbsp;&nbsp;" +list[i]["text"]+"</h3>";
                        }
                        counter++;


                    }
//                        // 为了测试，延迟1秒加载
//                        setTimeout(function(){
//                            $('.lists').append(result);
//                            // 每次数据加载完，必须重置
//                            me.resetload();
//                        },1000);

                    $('.lists').append(content);
                    // 每次数据加载完，必须重置
                    me.resetload();
                },
                error: function(xhr, type){
                    alert('Ajax error!');
                    // 即使加载出错，也得重置
                    me.resetload();
                }
            });
        }
    });
</script>
</body>
</html>
