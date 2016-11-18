<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="favicon.ico">

    <title>玉新不得姐笑话网</title>
    <style >
        body {
            padding-top: 50px;
        }
        .starter-template {
            padding: 40px 15px;
            text-align: center;
        }
        p {
            line-height:40px;
            font-size: 20px;
        }
    </style>
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
    <![endif]-->
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
                <li><a href="#about">关于</a></li>
                <li><a href="#contact">联系</a></li>
            </ul>
        </div><!--/.nav-collapse -->
    </div>
</nav>

<div class="container">

    <div class="header">
        <ul class="nav nav-pills pull-right" role="tablist">
            <%--<li role="presentation" class="active"><a href="#">Home</a></li>--%>
            <%--<li role="presentation"><a href="#">注册</a></li>--%>
            <%--<li role="presentation"><a href="#">登录</a></li>--%>
        </ul>
    </div>

    <div class="starter-template">
        <h1>闲着也是闲着</h1>
        <p class="lead">看看笑话吧.<br> 开始你的开心之旅.</p>
    </div>


    <%--<div class="panel panel-primary">--%>

    <%--</div>--%>

    <div class="panel panel-primary">
        <div class="panel-heading">
            <h3 class="panel-title">每日精选笑话</h3>
        </div>
        <div class="panel-body" id="xiaohua" >
        </div>
    </div>





</div><!-- /.container -->



<!-- Bootstrap core JavaScript
================================================== -->
<%--<script src="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js"></script>--%>
<%--<script src="dist/js/bootstrap.min.js"></script>--%>
<script>
    $("#nosupport").click(function () {
        $(".alert-success").css("display","none");
        $(".alert-danger").css("display","");
    });

    $("#support").click(function () {
        $(".alert-danger").css("display","none");
        $(".alert-success").css("display","");
    });
    $(document).ready(function(){
        $.ajax({
            url: "/budejie/getBudejieArticle",
            dataType:"json",
            success: function(data){
//                var data = JSON.parse(data);
                //var str = JSON.stringify(data)
                //alert(str);
                //var data = data.parseJSON();
                var list = data["list"];
                var content="";
                for(var i = 0;i<list.length;i++){
                    if(i%2==1){
                        content =content +"<p style='color: #269abc;'>"+(i+1)+"&nbsp;&nbsp;&nbsp;" +list[i]["text"]+"</p><br>";
                    }else {
                        content =content+"<p style='color: #843534;'>"+ +(i+1)+"&nbsp;&nbsp;&nbsp;" +list[i]["text"]+"</p><br>";
                    }

                }
                $("#xiaohua").html(content);
            }
        });
    });

</script>
</body>
</html>
