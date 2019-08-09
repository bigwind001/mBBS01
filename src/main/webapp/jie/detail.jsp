<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
 
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>Fly Template v3.0，基于 layui 的极简社区页面模版</title>
  <script  type="text/javascript" src="../js/jquery.min.js"></script>
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <meta name="keywords" content="fly,layui,前端社区">
  <meta name="description" content="Fly社区是模块化前端UI框架Layui的官网社区，致力于为web开发提供强劲动力">
  <link rel="stylesheet" href="../../res/layui/css/layui.css">
  <link rel="stylesheet" href="../../res/css/global.css">
</head>
<body>

<div class="fly-header layui-bg-black">
  <div class="layui-container">
    <a class="fly-logo" href="../BBSnr.jsp">
      <img src="../../res/images/logo.png" alt="layui">
    </a>
    
    <ul  id="message" class="layui-nav fly-nav-user">

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
          <dd><a href="" onclick="out()" style="text-align: center;">退出</a></dd>
        </dl>
      </li>
    </ul>
  </div>
</div>

<div class="layui-hide-xs">
  <div class="fly-panel fly-column">
    <div class="layui-container">
      <ul class="layui-clear">
        <li class="layui-hide-xs"><a href="/BBSnr.jsp">首页</a></li>
        <li class="layui-hide-xs layui-hide-sm layui-show-md-inline-block"><span class="fly-mid"></span></li> 
        
        <!-- 用户登入后显示 -->
        <li class="layui-hide-xs layui-hide-sm layui-show-md-inline-block"><a href="../user/index.jsp">我发表的贴</a></li>
      </ul> 
      
      <div class="fly-column-right layui-hide-xs"> 
        <span class="fly-search"><i class="layui-icon"></i></span> 
        <a href="add.jsp" class="layui-btn">发表新帖</a>
      </div> 
      <div class="layui-hide-sm layui-show-xs-block" style="margin-top: -10px; padding-bottom: 10px; text-align: center;"> 
        <a href="add.jsp" class="layui-btn">发表新帖</a>
      </div> 
    </div>
  </div>
</div>

<div class="layui-container">
  <div class="layui-row layui-col-space15">
    <div class="layui-col-md8 content detail">
      <div id="tPost" class="fly-panel detail-box">


      </div>

      <div class="fly-panel detail-box" id="flyReply">
        <fieldset class="layui-elem-field layui-field-title" style="text-align: center;">
          <legend>回帖</legend>
        </fieldset>

        <ul class="jieda" id="jieda">

          <!--回复模板-->

          
          <!-- 无数据时 -->
          <!-- <li class="fly-none">消灭零回复</li> -->
        </ul>
        
        <div id="replyhide" class="layui-form layui-form-pane">

          <form id="huitie">
            <div class="layui-form-item layui-form-text">
              <a name="comment"></a>
              <div class="layui-input-block">
                <textarea id="reply" name="reply" required lay-verify="required" placeholder="请输入内容"  class="layui-textarea " style="height: 150px;"></textarea>
              </div>
            </div>
            <div class="layui-form-item">
              <input type="button"   onclick=Postreply() class="layui-btn" lay-filter="*"   value="提交回复" />
              <%--<button onclick=Postreply('req.id')   class="layui-btn" lay-filter="*" lay-submit >提交回复</button>--%>
            </div>
          </form>
        </div>
      </div>
    </div>
    <div class="layui-col-md4">
      <dl class="fly-panel fly-list-one">
        <dt class="fly-panel-title">本周热议</dt>
        <dd>
          <a href="">基于 layui 的极简社区页面模版</a>
          <span><i class="iconfont icon-pinglun1"></i> 16</span>
        </dd>
        <dd>
          <a href="">基于 layui 的极简社区页面模版</a>
          <span><i class="iconfont icon-pinglun1"></i> 16</span>
        </dd>
        <dd>
          <a href="">基于 layui 的极简社区页面模版</a>
          <span><i class="iconfont icon-pinglun1"></i> 16</span>
        </dd>
        <dd>
          <a href="">基于 layui 的极简社区页面模版</a>
          <span><i class="iconfont icon-pinglun1"></i> 16</span>
        </dd>
        <dd>
          <a href="">基于 layui 的极简社区页面模版</a>
          <span><i class="iconfont icon-pinglun1"></i> 16</span>
        </dd>
        <dd>
          <a href="">基于 layui 的极简社区页面模版</a>
          <span><i class="iconfont icon-pinglun1"></i> 16</span>
        </dd>
        <dd>
          <a href="">基于 layui 的极简社区页面模版</a>
          <span><i class="iconfont icon-pinglun1"></i> 16</span>
        </dd>
        <dd>
          <a href="">基于 layui 的极简社区页面模版</a>
          <span><i class="iconfont icon-pinglun1"></i> 16</span>
        </dd>
        <dd>
          <a href="">基于 layui 的极简社区页面模版</a>
          <span><i class="iconfont icon-pinglun1"></i> 16</span>
        </dd>
        <dd>
          <a href="">基于 layui 的极简社区页面模版</a>
          <span><i class="iconfont icon-pinglun1"></i> 16</span>
        </dd>

        <!-- 无数据时 -->
        <!--
        <div class="fly-none">没有相关数据</div>
        -->
      </dl>

      <div class="fly-panel">
        <div class="fly-panel-title">
          这里可作为广告区域
        </div>
        <div class="fly-panel-main">
          <a href="http://layim.layui.com/?from=fly" target="_blank" class="fly-zanzhu" time-limit="2017.09.25-2099.01.01" style="background-color: #5FB878;">LayIM 3.0 - layui 旗舰之作</a>
        </div>
      </div>

      <div class="fly-panel" style="padding: 20px 0; text-align: center;">
        <img src="../../res/images/weixin.jpg" style="max-width: 100%;" alt="layui">
        <p style="position: relative; color: #666;">微信扫码关注 layui 公众号</p>
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
layui.cache.page = 'jie';
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
}).use(['fly', 'face'], function(){
  var $ = layui.$
  ,fly = layui.fly;
  //如果你是采用模版自带的编辑器，你需要开启以下语句来解析。
  /*
  $('.detail-body').each(function(){
    var othis = $(this), html = othis.html();
    othis.html(fly.content(html));
  });
  */
});
</script>

</body>
<script>
    var req ={};
    req.id=sessionStorage.getItem("postId");
    req.postName=sessionStorage.getItem("postName");
    req.userId=sessionStorage.getItem("userId");
    var top={};
      $(function () {
        $.ajax({
            data:req,
            type:'Get',
            url:'/tPost',
            dataType:'json',
            success:function (resp) {
                var target=$("#tPost");
                if(resp.top==1){
                      top.value="置顶";
                }else {
                    top.value="未置顶";
                }
                target.html("");
                // for(var row of resp){
                    var str =
                        "<h1>"+resp.postName+"</h1>"
                        +"<div class='fly-detail-info'>"
                        +"<span class='layui-badge layui-bg-green fly-detail-column'>动态</span>"
                        +"<span class='layui-badge layui-bg-black'>"+top.value+"</span>"
                        +"<div class='fly-admin-box' data-id='123'>"
                        +"<span class='layui-btn layui-btn-xs jie-admin' type='del'>删除</span>"
                        +"<span class='layui-btn layui-btn-xs jie-admin' type='set' field='stick' rank='1'>置顶</span>"
                        +"</div>"
                        +"<span class='fly-list-nums'>"
                        +"<a href='#comment'><i class='iconfont' title='回答'>&#xe60c;</i>"+resp.reply+"</a>"
                        +"</span>"
                        +"</div>"
                        +"<div class='detail-about'>"
                        +"<a class='fly-avatar' href='../user/home.jsp'>"
                        +"<img src='../"+resp.userTx+"'>"
                        +"</a>"
                        +"<div class='fly-detail-user'>"
                        +"<a href='../user/home.jsp' class='fly-link'>"
                        +"<cite>"+resp.userName+"</cite>"
                        +"<i class='iconfont icon-renzheng' title='认证信息：{{ rows.user.approve }}'></i>"
                        +"<i class='layui-badge fly-badge-vip'>VIP"+resp.userVip+"</i>"
                        +"</a>"
                        +"<span>"+resp.time+"</span>"
                        +"</div>"
                        +"<div class='detail-hits' id='LAY_jieAdmin' data-id='123'>"
                        +"<span class='layui-btn layui-btn-xs jie-admin' type='edit'><a href='add.jsp'>编辑此贴</a></span>"
                        +"</div>"
                        +"</div>"
                        +"<div class='detail-body photos'>"
                        +"<p>"+resp.content+"</p>"
                        +"</div>";
                        target.append(str);

                }
            // }

        })
      })
      $(function () {
          $.ajax({
              data:req,
              url:'/showReply',
              dataType:'json',
              success:function (resp) {
                  var target=$("#jieda");
                  target.html("");
                  for(var row of resp){
                      var str=
                          "<li data-id='111' class='jieda-daan'>"
                          +"<a name='item-1111111111'></a>"
                          +"<div class='detail-about detail-about-reply'>"
                          +"<a class='fly-avatar' href=''><img src='../"+row.userTx+"' alt=''></a>"
                          +"<div class='fly-detail-user'>"
                          +"<a href='' class='fly-link'>"
                          +"<cite>"+row.userName+"</cite>"
                          +"<i class='iconfont icon-renzheng'></i>"
                          +"<i class='layui-badge fly-badge-vip'>VIP"+row.userVip+"</i>"
                          +"</a>"
                          +"<span>(楼主)</span>"
                          +"</div>"
                          +"<div class='detail-hits'>"
                          +"<span>"+row.time+"</span>"
                          +"</div>"
                          +"</div>"
                          +"<div class='detail-body jieda-body photos'>"
                          +"<p>"+row.reply+"</p>"
                          +"</div>"
                          +"<div class='jieda-reply'>"
                          +"<div class='jieda-admin'>"
                          +"<span type='del'>删除</span>"
                          +"</div>"
                          +"</div>"
                          +"</li>";
                          target.append(str);
                  }
              }
          })
      })
      function Postreply() {
          var ree={};
          ree.postName=req.postName;
          ree.id=req.id;
          ree.userId=req.userId;
          ree.name="${sessionScope.user.userName}";
          ree.Tx="${sessionScope.user.userTx}";
          ree.vip="${sessionScope.user.userVip}";
          ree.content=$('#reply').val().trim();
          $.ajax({
              url:"/reply",
              data:ree,
              dataType:"json",
              success:function (resp) {
                  if(resp!=null){
                      location.replace(location.href);
                  }

              }
          })
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
        var target=$("#message");
        var target2=$("#replyhide");
        if(red.userName==""){
            target.html("");
            target2.html("");
            var ste=
                "<li class='layui-nav-item'>"
                +"<a class='iconfont icon-touxiang layui-hide-xs'href='../login.jsp'></a>"
                +"</li>"
                +"<li class='layui-nav-item'>"
                +"<a href='../login.jsp'>登入</a>"
                +"</li>"
                +"<li class='layui-nav-item'>"
                +"<a href='../register.jsp'>注册</a>"
                +"</li>";
            target.append(ste);
            target2.hide();
        }
    })
</script>
</html>