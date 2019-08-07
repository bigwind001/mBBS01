<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>BBS首页</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    
    <!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
    <%--<script src="dist/jquery.min.js"></script>--%>
	  <script src="${ctx}/webjars/jquery/3.3.1-2/jquery.min.js"></script>
    <!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
    <script src="js/bootstrap.min.js"></script>
	
	<style>
		
		.inner1{ 
				position:relative;
				background-color:#b0e0e6;
				globalAlpha: 0.2;
				width:100% ; height:500px;
		}
		.daohang{	
				position:absolute;
				right:0px;
			
		}
		
	</style>
  </head>
  <body>
  		<div class="container inner1">
  		<div class="daohang">
	  		<ul class="nav nav-tabs">
			  <li role="presentation" ><a href="login.jsp">登陆</a></li>
			  <li role="presentation" ><a href="register.jsp">注册</a></li>
			</ul>
		</div>
		<div class="page-header">
		  <h1 class="col-lg-8">Welcome to BBS <small >This is a forum that will make you happy</small></h1>
		</div>
		</div>

  </body>
<script>
</script>
</html>