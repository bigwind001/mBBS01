<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>用户主页</title>
    <script type="text/javascript" src="../js/jquery.min.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="keywords" content="fly,layui,前端社区">
    <meta name="description" content="Fly社区是模块化前端UI框架Layui的官网社区，致力于为web开发提供强劲动力">
    <link rel="stylesheet" href="../../res/layui/css/layui.css">
    <link rel="stylesheet" href="../../res/css/global.css">
</head>
<body style="margin-top: 65px;">

<div class="fly-header layui-bg-black">
    <div class="layui-container">
        <a class="fly-logo" href="../BBSnr.jsp">
            <img src="../../res/images/logo.png" alt="layui">
        </a>
        <%--<ul class="layui-nav fly-nav layui-hide-xs">--%>
            <%--<li class="layui-nav-item layui-this">--%>
                <%--<a href="/"><i class="iconfont icon-jiaoliu"></i>交流</a>--%>
            <%--</li>--%>
            <%--<li class="layui-nav-item">--%>
                <%--<a href="../case/case.html"><i class="iconfont icon-iconmingxinganli"></i>案例</a>--%>
            <%--</li>--%>
            <%--<li class="layui-nav-item">--%>
                <%--<a href="http://www.layui.com/"  target="_blank"><i class="iconfont icon-ui"></i>框架</a>--%>
            <%--</li>--%>
        <%--</ul>--%>

        <ul class="layui-nav fly-nav-user">
            <!-- 登入后的状态 -->
            <li class="layui-nav-item">
                <a class="fly-nav-avatar" href="javascript:;">
                    <cite class="layui-hide-xs">${sessionScope.user.userName}</cite>
                    <i class="iconfont icon-renzheng layui-hide-xs" title="认证信息：layui 作者"></i>
                    <i class="layui-badge fly-badge-vip layui-hide-xs">VIP${sessionScope.user.userVip}</i>
                    <img src="../${sessionScope.user.userTx}">
                </a>
                <dl class="layui-nav-child">
                    <dd><a href="../user/set.jsp"><i class="layui-icon">&#xe620;</i>基本设置</a></dd>
                    <dd><a href="../user/message.jsp"><i class="iconfont icon-tongzhi" style="top: 4px;"></i>我的消息</a></dd>
                    <dd><a href="../user/home.jsp"><i class="layui-icon" style="margin-left: 2px; font-size: 22px;">&#xe68e;</i>我的主页</a></dd>
                    <hr style="margin: 5px 0;">
                    <dd><a href="" onclick=out() style="text-align: center;">退出</a></dd>
                </dl>
            </li>
        </ul>
    </div>
</div>

<div class="fly-home fly-panel" style="...">
    <img src="../${sessionScope.user.userTx}" alt="贤心">
    <i class="iconfont icon-renzheng" title="Fly社区认证"></i>
    <h1>
        ${sessionScope.user.userName}
        <i class="iconfont icon-nan"></i>
        <!-- <i class="iconfont icon-nv"></i>  -->
        <i class="layui-badge fly-badge-vip">VIP${sessionScope.user.userVip}</i>
        <!--
        <span style="color:#c00;">（管理员）</span>
        <span style="color:#5FB878;">（社区之光）</span>
        <span>（该号已被封）</span>
        -->
    </h1>


    <div class="fly-sns" data-user="">
        <a href="javascript:;" class="layui-btn layui-btn-primary fly-imActive" data-type="addFriend">加为好友</a>
        <a href="javascript:;" class="layui-btn layui-btn-normal fly-imActive" data-type="chat">发起会话</a>
    </div>

</div>

<div class="layui-container">
    <div class="layui-row layui-col-space15">
        <div class="layui-col-md6 fly-home-jie">
            <div class="fly-panel">
                <h3 class="fly-panel-title">${sessionScope.user.userName} 最近的帖子</h3>
                <ul id="post" class="jie-row">

                    <!-- <div class="fly-none" style="min-height: 50px; padding:30px 0; height:auto;"><i style="font-size:14px;">没有发表任何求解</i></div> -->
                </ul>
            </div>
        </div>

        <div class="layui-col-md6 fly-home-da">
            <div class="fly-panel">
                <h3 class="fly-panel-title">${sessionScope.user.userName} 最近的回复</h3>
                <ul id="reply" class="home-jieda">

                    <!-- <div class="fly-none" style="min-height: 50px; padding:30px 0; height:auto;"><span>没有回答任何问题</span></div> -->
                </ul>
            </div>
        </div>
    </div>
</div>

<div class="fly-footer">
    <p><a href="http://fly.layui.com/" target="_blank">Fly社区</a> 2017 &copy; <a href="http://www.layui.com/" target="_blank">layui.com 出品</a></p>
    <p>
        <a href="http://fly.layui.com/jie/3147/" target="_blank">付费计划</a>
        <a href="http://www.layui.com/template/fly/" target="_blank">获取Fly社区模版</a>
        <a href="http://fly.layui.com/jie/2461/" target="_blank">微信公众号</a>
    </p>
</div>

<script src="../../res/layui/layui.js"></script>
<script>
    layui.cache.page = 'user';
    layui.cache.user = {
        username: '游客'
        ,uid: -1
        ,avatar: '../../res/images/avatar/00.jpg'
        ,experience: 83
        ,sex: '男'
    };
    layui.config({
        version: "3.0.0"
        ,base: '../../res/mods/'
    }).extend({
        fly: 'index'
    }).use('fly');
</script>

</body>
<script>
    var req={};
    req.userId="${sessionScope.user.userId}";
    req.userName="${sessionScope.user.userName}";
    $(function () {
        $.ajax({
            data:req,
            dataType:"json",
            url:"/nowReply",
            success:function (resp) {
                var target=$("#post");
                target.html("");
                for(var row of resp){
                    var str=
                      "<li>"
                            +"<a href='../jie/detail.jsp' onclick=post('"+row.id+"','"+row.postName+"','"+row.userId+"') class='jie-title'>"+row.postName+"</a>"
                        +"<i>"+row.time+"</i>"
                      +"</li>";
                        target.append(str);
                }
            }
        })
    })
    $(function () {
        $.ajax({
            data:req,
            dataType:"json",
            url:"/uReply",
            success:function (resp) {
                var target=$("#reply");
                target.html("");
                for(var row of resp){
                    var str =
                         "<li>"
                            +"<p>"
                            +"<span>"+row.time+"</span>"
                            +"在<a href='' target='_blank'>"+row.postName+"</a>中回复:"
                            +"</p>"
                            +"<div class='home-dacontent'>"
                            +row.reply
                            +"</div>"
                        +"</li>";
                    target.append(str);
                }
            }
        })

    })
    function post(id,postName,userId) {
        sessionStorage.setItem("postId",id);
        sessionStorage.setItem("postName",postName);
        sessionStorage.setItem("userId",userId);
    }
    function  out() {
        $.ajax({
            url:'/out',
            dataType:"json",
        })
    }
    $(function () {
        var red={};
        red.userName="${sessionScope.user.userName}";
        if(red.userName==""){
            alert("请先登陆");
            window.location.href="../index.jsp";
        }
    })
</script>
</html>