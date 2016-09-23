<%@ page language="java"  pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <title>打靶系统</title>
    
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta name="apple-mobile-web-app-capable" content="yes" />

	<base href="<%=basePath%>">

    <link href="./css/bootstrap.min.css" rel="stylesheet" />
    <link href="./css/bootstrap-responsive.min.css" rel="stylesheet" />
    
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600" rel="stylesheet" />
    <link href="./css/font-awesome.css" rel="stylesheet" />
    
    <link href="./css/adminia.css" rel="stylesheet" /> 
    <link href="./css/adminia-responsive.css" rel="stylesheet" /> 
    
    <link href="./css/pages/login.css" rel="stylesheet" /> 

    <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
	
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" /></head>

	
<div class="navbar navbar-fixed-top">
	
	<div class="navbar-inner">
		
		<div class="container">
			
			<a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse"> 
				<span class="icon-bar"></span> 
				<span class="icon-bar"></span> 
				<span class="icon-bar"></span> 				
			</a>
			
			<a class="brand" href="./">打靶系统</a>
			
			<div class="nav-collapse">
			
				<ul class="nav pull-right">
					
					<li class="">
						
						<a href="javascript:;"><i class="icon-chevron-left"></i> 回到主页</a>
					</li>
				</ul>
				
			</div> <!-- /nav-collapse -->
			
		</div> <!-- /container -->
		
	</div> <!-- /navbar-inner -->
	
</div> <!-- /navbar -->


<div id="login-container">
	
	
	<div id="login-header">
		
		<h3>登陆</h3>
		
	</div> <!-- /login-header -->
	
	<div id="login-content" class="clearfix">
	
	<form action="" method="post" name="frm" onsubmit="return isValid(this)"/>
				<fieldset>
					<div class="control-group">
						<label class="control-label" for="userid">用户名</label>
						<div class="controls">
							<input type="text" name="userid" class="" id="userid" />
						</div>
					</div>
					<div class="control-group">
						<label class="control-label" for="password">密码</label>
						<div class="controls">
							<input type="password" name="password" class="" id="password" />
						</div>
					</div>
				</fieldset>
				
				<div id="remember-me" class="pull-left">
					<input type="checkbox" name="remember" id="remember" />
					<label id="remember-label" for="remember">记住密码</label>
				</div>
				
				<div class="pull-right">
					<span>
					<button type="submit" class="btn btn-warning btn-large" onclick="admin()">
						Admin Login
					</button>
					<button type="submit" class="btn btn-warning btn-large " onclick="user()">
						User Login
					</button>
					</span>
				</div>
			</form>
			
		</div> <!-- /login-content -->

		<div class="error">
			<%
				if (request.getAttribute("error") != null){
			%>
			<%=request.getAttribute("error")%><%
				}
			%>
		</div>
		
<!--
		<div id="login-extra">
			
			<p>Don't have an account? <a href="register.jsp">Sign Up.</a></p>
			
			<p>Remind Password? <a href="forgot_password.html">Retrieve.</a></p>
			
		</div> <!-- /login-extra
	
</div> <!-- /login-wrapper -->

</div>
    

<!-- Le javascript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="./js/jquery-1.7.2.min.js"></script>
<script src="./js/bootstrap.js"></script>
<script type="text/javascript">
	function user(){
		frm.action = "logincheck?is_admin=0";
	}
	function  admin(){
		frm.action = "logincheck?is_admin=1";
	}
	function isValid(){
		if(frm.userid.value == ""){
			window.alert("请输入用户名！");
			frm.userid.focus();
			return	false;
		}
		if(frm.password.value == ""){
			window.alert("请输入密码！");
			frm.password.focus();
			return false;
		}
		return true;
	}
</script>

</body>
</html>
