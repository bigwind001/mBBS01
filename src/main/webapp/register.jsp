<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Register</title>
  <!-- Bootstrap -->
  
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
    <script src="dist/jquery.min.js"></script>
    <!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
    <script src="js/bootstrap.min.js"></script>
</head>
<style>
	.inner{
		margin:50px;
		padding:50px;
	}
</style>
<body>	
	<div class="container inner">
		<form  action="/register"  enctype="multipart/form-data">
		  <div class="form-group">
		    <label for="Admin">admin:</label>
		    <input type="admin" class="form-control" name="admin" id="Admin" placeholder="admin">
		  </div>
		  <div class="form-group">
		    <label for="Password">Password:</label>
		    <input type="password" class="form-control" name="password" id="Password" placeholder="Password">
		  </div>
			<tr>
				<td class="field">性别</td>
				<td><input  type="radio" name="sex" value="1" checked="checked"/>男<input type="radio" name="sex" value="0"/>女</td>
			</tr>
		  <%--<div class="form-group">--%>
		    <%--<label for="file">头像</label>--%>
		    <%--<input type="file" id="file" name="file">--%>
		  <%--</div>--%>
		  <div class="checkbox">
		  </div>
			<input type='hidden'  id='Tx' name="userTx" value ="img/1.jpg"/>
		  <button type="submit" class="btn btn-default">Submit</button>
		</form>
	</div>	
</body>
</html>