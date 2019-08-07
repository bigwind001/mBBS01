<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
 
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>基于 layui 的极简社区页面模版</title>
    <script  type="text/javascript" src="js/jquery.min.js"></script>
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <meta name="keywords" content="fly,layui,前端社区">
  <meta name="description" content="Fly社区是模块化前端UI框架Layui的官网社区，致力于为web开发提供强劲动力">
  <link rel="stylesheet" href="/res/layui/css/layui.css">
  <link rel="stylesheet" href="/res/css/global.css">
</head>
<body>

<div class="fly-header layui-bg-black">
  <div class="layui-container">
    <a class="fly-logo" href="/">
      <img src="../res/images/logo.png" alt="layui">
    </a>

    <ul class="layui-nav fly-nav-user">

      <li class="layui-nav-item">
        <a class="fly-nav-avatar" href="javascript:;">
          <cite class="layui-hide-xs">${sessionScope.user.userName}</cite>
          <i class="iconfont icon-renzheng layui-hide-xs" title="认证信息：layui 作者"></i>
          <i class="layui-badge fly-badge-vip layui-hide-xs">VIP${sessionScope.user.userVip}</i>
          <img src="${sessionScope.user.userTx}">
        </a>
        <dl class="layui-nav-child">
          <dd><a href="user/set.jsp"><i class="layui-icon">&#xe620;</i>基本设置</a></dd>
          <dd><a href="user/message.jsp"><i class="iconfont icon-tongzhi" style="top: 4px;"></i>我的消息</a></dd>
          <dd><a href="user/home.jsp"><i class="layui-icon" style="margin-left: 2px; font-size: 22px;">&#xe68e;</i>我的主页</a></dd>
          <hr style="margin: 5px 0;">
          <dd><a href="/user/logout/" style="text-align: center;">退出</a></dd>
        </dl>
      </li>

    </ul>
  </div>
</div>

<div class="fly-panel fly-column">
  <div class="layui-container">
    <ul class="layui-clear">
      <li class="layui-hide-xs layui-this"><a href="/">首页</a></li> 
      <li><a href="jie/index.jsp">帖子</a></li>

      <li class="layui-hide-xs layui-hide-sm layui-show-md-inline-block"><span class="fly-mid"></span></li> 
      
      <!-- 用户登入后显示 -->
      <li class="layui-hide-xs layui-hide-sm layui-show-md-inline-block"><a href="user/index.jsp">我发表的贴</a></li>
      <li class="layui-hide-xs layui-hide-sm layui-show-md-inline-block"><a href="user/index.jsp#collection">我收藏的贴</a></li>
    </ul> 
    
    <div class="fly-column-right layui-hide-xs">
      <span class="fly-search"><i class="layui-icon"></i></span>
      <a href="jie/add.jsp" class="layui-btn">发表新帖</a>
    </div>
    <%--<div class="layui-hide-sm layui-show-xs-block" style="margin-top: -10px; padding-bottom: 10px; text-align: center;"> --%>
      <%--<a href="jie/add.html" class="layui-btn">发表新帖</a> --%>
    <%--</div> --%>
  </div>
</div>
 
<div class="layui-container">
  <div class="layui-row layui-col-space15">
    <div class="layui-col-md8">
      <div class="fly-panel">
        <div class="fly-panel-title fly-filter">
          <a>置顶</a>
          <a href="#signin" class="layui-hide-sm layui-show-xs-block fly-right" id="LAY_goSignin" style="color: #FF5722;">去签到</a>
        </div>
        <ul id="mpost" class="fly-list">
          <!--帖子模板-->
          <%--<li>--%>
            <%--<a href="user/home.html" class="fly-avatar">--%>
              <%--<img src="https://tva1.sinaimg.cn/crop.0.0.118.118.180/5db11ff4gw1e77d3nqrv8j203b03cweg.jpg" alt="贤心">--%>
            <%--</a>--%>
            <%--<!-->--%>
            <%--<h2>--%>
              <%--<a class="layui-badge">动态</a>--%>
              <%--<a href="jie/detail.html">基于 layui 的极简社区页面模版</a>--%>
            <%--</h2>--%>
            <%--<div class="fly-list-info">--%>
              <%--<a href="user/home.html" link>--%>
                <%--<cite>贤心</cite>--%>
                <%--<i class="iconfont icon-renzheng" title="认证信息：XXX"></i>--%>
                <%--<i class="layui-badge fly-badge-vip">VIP3</i>--%>
              <%--</a>--%>
              <%--<span>刚刚</span>--%>

              <%--<span class="fly-list-nums"> --%>
                <%--<i class="iconfont icon-pinglun1" title="回答"></i> 66--%>
              <%--</span>--%>
            <%--</div>--%>
            <%--<div class="fly-list-badge">--%>
            <%--</div>--%>
          <%--</li>--%>
        </ul>
      </div>

      <div class="fly-panel" style="margin-bottom: 0;">
        
        <div class="fly-panel-title fly-filter">
          <a href="" class="layui-this">综合</a>
          <span class="fly-filter-right layui-hide-xs">
            <a href="" class="layui-this">按最新</a>
            <span class="fly-mid"></span>
            <a href="">按热议</a>
          </span>
        </div>

        <ul id="lpost" class="fly-list">
          <!--帖子模板-->

        </ul>
        <div style="text-align: center">
          <div class="laypage-main">
            <a href="jie/index.jsp" class="laypage-next">more</a>
          </div>
        </div>

      </div>
    </div>
    <div class="layui-col-md4">

      <div class="fly-panel">
        <h3 class="fly-panel-title">温馨通道</h3>
        <ul class="fly-panel-main fly-list-static">
          <li>
            <a href="http://fly.layui.com/jie/4281/" target="_blank">layui 的 GitHub 及 Gitee (码云) 仓库，欢迎Star</a>
          </li>
          <li>
            <a href="http://fly.layui.com/jie/5366/" target="_blank">
              layui 常见问题的处理和实用干货集锦
            </a>
          </li>
          <li>
            <a href="http://fly.layui.com/jie/4281/" target="_blank">layui 的 GitHub 及 Gitee (码云) 仓库，欢迎Star</a>
          </li>
          <li>
            <a href="http://fly.layui.com/jie/5366/" target="_blank">
              layui 常见问题的处理和实用干货集锦
            </a>
          </li>
          <li>
            <a href="http://fly.layui.com/jie/4281/" target="_blank">layui 的 GitHub 及 Gitee (码云) 仓库，欢迎Star</a>
          </li>
        </ul>
      </div>




      <dl class="fly-panel fly-list-one">
        <dt class="fly-panel-title">本周热议</dt>
        <dd>
          <a href="jie/detail.html">基于 layui 的极简社区页面模版</a>
          <span><i class="iconfont icon-pinglun1"></i> 16</span>
        </dd>
        <dd>
          <a href="jie/detail.html">基于 layui 的极简社区页面模版</a>
          <span><i class="iconfont icon-pinglun1"></i> 16</span>
        </dd>
        <dd>
          <a href="jie/detail.html">基于 layui 的极简社区页面模版</a>
          <span><i class="iconfont icon-pinglun1"></i> 16</span>
        </dd>
        <dd>
          <a href="jie/detail.html">基于 layui 的极简社区页面模版</a>
          <span><i class="iconfont icon-pinglun1"></i> 16</span>
        </dd>
        <dd>
          <a href="jie/detail.html">基于 layui 的极简社区页面模版</a>
          <span><i class="iconfont icon-pinglun1"></i> 16</span>
        </dd>
        <dd>
          <a href="jie/detail.html">基于 layui 的极简社区页面模版</a>
          <span><i class="iconfont icon-pinglun1"></i> 16</span>
        </dd>
        <dd>
          <a href="jie/detail.html">基于 layui 的极简社区页面模版</a>
          <span><i class="iconfont icon-pinglun1"></i> 16</span>
        </dd>
        <dd>
          <a href="jie/detail.html">基于 layui 的极简社区页面模版</a>
          <span><i class="iconfont icon-pinglun1"></i> 16</span>
        </dd>
        <dd>
          <a href="jie/detail.html">基于 layui 的极简社区页面模版</a>
          <span><i class="iconfont icon-pinglun1"></i> 16</span>
        </dd>
        <dd>
          <a href="jie/detail.html">基于 layui 的极简社区页面模版</a>
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
      
      <div class="fly-panel fly-link">
        <h3 class="fly-panel-title">友情链接</h3>
        <dl class="fly-panel-main">
          <dd><a href="http://www.layui.com/" target="_blank">layui</a><dd>
          <dd><a href="http://layim.layui.com/" target="_blank">WebIM</a><dd>
          <dd><a href="http://layer.layui.com/" target="_blank">layer</a><dd>
          <dd><a href="http://www.layui.com/laydate/" target="_blank">layDate</a><dd>
          <dd><a href="mailto:xianxin@layui-inc.com?subject=%E7%94%B3%E8%AF%B7Fly%E7%A4%BE%E5%8C%BA%E5%8F%8B%E9%93%BE" class="fly-link">申请友链</a><dd>
        </dl>
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
 
<script src="../res/layui/layui.js"></script>
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
    }).use('fly');
</script>

<%--<script type="text/javascript">var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://");document.write(unescape("%3Cspan id='cnzz_stat_icon_30088308'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "w.cnzz.com/c.php%3Fid%3D30088308' type='text/javascript'%3E%3C/script%3E"));--%>
<%--</script>--%>


</body>
<script>
    $(function(){
        $.ajax({
            type: 'Get',
            url: '/mtop',
            dataType: 'json',
            success: function (resp) {
                var target=$("#mpost");
                target.html("");
                for(var  row of resp){
                    var str =
                        "<li>"
                        +"<a href='user/home.jsp' class='fly-avatar'>"
                        +"<img src='"+row.userTx+"' >"
                        +"</a>"
                        +"<h2><a class='layui-badge'>动态</a> <a href='jie/detail.jsp' onclick=post('"+row.id+"')>"+row.postName+"</a></h2>"
                        +"<div class='fly-list-info'>"
                        +"<a href='user/home.jsp' link>"
                        +"<cite>"+row.userName+"</cite>"
                        +"<i class='iconfont icon-renzheng' ></i>"
                        +"<i class='layui-badge fly-badge-vip'>VIP"+row.userVip+"</i>"
                        +"</a>"
                        +"<span>"+row.time+"</span>"
                        +"<span class='fly-list-nums'><i class='iconfont icon-pinglun1' title='回答'></i>"+row.reply+"</span>"
                        +"</div>"
                        +"</li>";
                    target.append(str);
                }
            }
        })
    })
    $(function () {
        $.ajax({
            type:'Get',
            url:'/post',
            dataType:'json',
            success:function (resp) {
                var target=$("#lpost");
                target.html("");
                for(var  row of resp){
                    var str =
                        "<li>"
                        +"<a href='user/home.jsp' class='fly-avatar'>"
                        +"<img src='"+row.userTx+"' >"
                        +"</a>"
                        +"<h2><a class='layui-badge'>动态</a> <a href='jie/detail.jsp' onclick=post('"+row.id+"')>"+row.postName+"</a></h2>"
                        +"<div class='fly-list-info'>"
                        +"<a href='user/home.jsp' link>"
                        +"<cite>"+row.userName+"</cite>"
                        +"<i class='iconfont icon-renzheng' ></i>"
                        +"<i class='layui-badge fly-badge-vip'>VIP"+row.userVip+"</i>"
                        +"</a>"
                        +"<span>"+row.time+"</span>"
                        +"<span class='fly-list-nums'><i class='iconfont icon-pinglun1' title='回答'></i>"+row.reply+"</span>"
                        +"</div>"
                        +"</li>";
                    target.append(str);
                }
            }
        })
    })
    function post(id) {
        sessionStorage.setItem("postId",id);
    }
</script>
</html>