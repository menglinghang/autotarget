<%--
  Created by IntelliJ IDEA.
  User: jiejiao
  Date: 2016/8/16
  Time: 10:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <title>打靶系统-管理</title>

    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta name="apple-mobile-web-app-capable" content="yes" />

    <base href="<%=basePath%>">

    <link href="./css/bootstrap.min.css" rel="stylesheet" />
    <link href="./css/bootstrap-responsive.min.css" rel="stylesheet" />

    <link href="http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600" rel="stylesheet" />
    <link href="./css/font-awesome.css" rel="stylesheet" />

    <link href="./css/adminia.css" rel="stylesheet" />
    <link href="./css/adminia-responsive.css" rel="stylesheet" />


    <link href="./css/pages/plans.css" rel="stylesheet" />

    <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
    <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" /></head>

<body>

<jsp:include page="navbar_top.jsp"></jsp:include>

<div id="content">

    <div class="container">

        <div class="row">

            <div class="span3">

                <div class="account-container">

                    <div class="account-avatar">
                        <img src="./img/headshot.png" alt="" class="thumbnail" />
                    </div> <!-- /account-avatar -->

                    <div class="account-details">

                        <span class="account-name">Rod Howard</span>

                        <span class="account-role">Administrator</span>

						<span class="account-actions">
							<a href="javascript:;">Profile</a> |

							<a href="javascript:;">Edit Settings</a>
						</span>

                    </div> <!-- /account-details -->

                </div> <!-- /account-container -->

                <hr />

                <ul id="main-nav" class="nav nav-tabs nav-stacked">

                    <li>
                        <a href="admin_index.jsp">
                            <i class="icon-home"></i>
                            主页
                        </a>
                    </li>

                    <li>
                        <a href="astatistic.jsp">
                            <i class="icon-pushpin"></i>
                            数据
                        </a>
                    </li>

                    <li>
                        <a href="amanageuser.jsp">
                            <i class="icon-th-list"></i>
                            用户管理
                        </a>
                    </li>

                    <li>
                        <a href="areport.jsp">
                            <i class="icon-th-large"></i>
                            通知发布
                            <span class="label label-warning pull-right">5</span>
                        </a>
                    </li>

                    <li class="active">
                        <a href="aprofile.jsp">
                            <i class="icon-user"></i>
                            管理员资料
                        </a>
                    </li>

                    <li>
                        <a href="login.jsp">
                            <i class="icon-lock"></i>
                            退出登录
                        </a>
                    </li>

                </ul>



                <hr />

                <div class="sidebar-extra">
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud.</p>
                </div> <!-- .sidebar-extra -->

                <br />

            </div> <!-- /span3 -->



            <div class="span9">

                <h1 class="page-title">
                    <i class="icon-th-large"></i>
                    User Account
                </h1>


                <div class="row">

                    <div class="span9">

                        <div class="widget">

                            <div class="widget-header">
                                <h3>Basic Information</h3>
                            </div> <!-- /widget-header -->

                            <div class="widget-content">



                                <div class="tabbable">
                                    <ul class="nav nav-tabs">
                                        <li class="active">
                                            <a href="#1" data-toggle="tab">Profile</a>
                                        </li>
                                        <li><a href="#2" data-toggle="tab">Settings</a></li>
                                    </ul>

                                    <br />

                                    <div class="tab-content">
                                        <div class="tab-pane active" id="1">
                                            <form id="edit-profile" class="form-horizontal" />
                                            <fieldset>

                                                <div class="control-group">
                                                    <label class="control-label" for="username">Username</label>
                                                    <div class="controls">
                                                        <input type="text" class="input-medium disabled" id="username" value="goideate" disabled="" />
                                                        <p class="help-block">Your username is for logging in and cannot be changed.</p>
                                                    </div> <!-- /controls -->
                                                </div> <!-- /control-group -->


                                                <div class="control-group">
                                                    <label class="control-label" for="firstname">First Name</label>
                                                    <div class="controls">
                                                        <input type="text" class="input-medium" id="firstname" value="Rod" />
                                                    </div> <!-- /controls -->
                                                </div> <!-- /control-group -->


                                                <div class="control-group">
                                                    <label class="control-label" for="lastname">Last Name</label>
                                                    <div class="controls">
                                                        <input type="text" class="input-medium" id="lastname" value="Howard" />
                                                    </div> <!-- /controls -->
                                                </div> <!-- /control-group -->


                                                <div class="control-group">
                                                    <label class="control-label" for="email">Email Address</label>
                                                    <div class="controls">
                                                        <input type="text" class="input-large" id="email" value="rod.howard@example.com" />
                                                    </div> <!-- /controls -->
                                                </div> <!-- /control-group -->


                                                <br /><br />

                                                <div class="control-group">
                                                    <label class="control-label" for="password1">Password</label>
                                                    <div class="controls">
                                                        <input type="password" class="input-medium" id="password1" value="password" />
                                                    </div> <!-- /controls -->
                                                </div> <!-- /control-group -->


                                                <div class="control-group">
                                                    <label class="control-label" for="password2">Confirm</label>
                                                    <div class="controls">
                                                        <input type="password" class="input-medium" id="password2" value="password" />
                                                    </div> <!-- /controls -->
                                                </div> <!-- /control-group -->



                                                <br />


                                                <div class="form-actions">
                                                    <button type="submit" class="btn btn-primary">Save</button>
                                                    <button class="btn">Cancel</button>
                                                </div> <!-- /form-actions -->
                                            </fieldset>
                                            </form>
                                        </div>

                                        <div class="tab-pane" id="2">
                                            <form id="edit-profile2" class="form-horizontal" />
                                            <fieldset>


                                                <div class="control-group">
                                                    <label class="control-label" for="accounttype">Account Type</label>
                                                    <div class="controls">
                                                        <label class="radio">
                                                            <input type="radio" name="accounttype" value="option1" checked="checked" id="accounttype" />
                                                            POP3
                                                        </label>
                                                        <label class="radio">
                                                            <input type="radio" name="accounttype" value="option2" />
                                                            IMAP
                                                        </label>
                                                    </div>
                                                </div>
                                                <div class="control-group">
                                                    <label class="control-label" for="accountusername">Account Username</label>
                                                    <div class="controls">
                                                        <input type="text" class="input-large" id="accountusername" value="rod.howard@example.com" />
                                                        <p class="help-block">Leave blank to use your profile email address.</p>
                                                    </div>
                                                </div>
                                                <div class="control-group">
                                                    <label class="control-label" for="emailserver">Email Server</label>
                                                    <div class="controls">
                                                        <input type="text" class="input-large" id="emailserver" value="mail.example.com" />
                                                    </div>
                                                </div>
                                                <div class="control-group">
                                                    <label class="control-label" for="accountpassword">Password</label>
                                                    <div class="controls">
                                                        <input type="text" class="input-large" id="accountpassword" value="password" />
                                                    </div>
                                                </div>




                                                <div class="control-group">
                                                    <label class="control-label" for="accountadvanced">Advanced Settings</label>
                                                    <div class="controls">
                                                        <label class="checkbox">
                                                            <input type="checkbox" name="accountadvanced" value="option1" checked="checked" id="accountadvanced" />
                                                            User encrypted connection when accessing this server
                                                        </label>
                                                        <label class="checkbox">
                                                            <input type="checkbox" name="accounttype" value="option2" />
                                                            Download all message on connection
                                                        </label>
                                                    </div>
                                                </div>


                                                <br />

                                                <div class="form-actions">
                                                    <button type="submit" class="btn btn-primary">Save</button> <button class="btn">Cancel</button>
                                                </div>
                                            </fieldset>
                                            </form>
                                        </div>

                                    </div>


                                </div>








                            </div> <!-- /widget-content -->

                        </div> <!-- /widget -->

                    </div> <!-- /span9 -->

                </div> <!-- /row -->









            </div> <!-- /span9 -->


        </div> <!-- /row -->

    </div> <!-- /container -->

</div> <!-- /content -->



<jsp:include page="footer.jsp"></jsp:include>



<!-- Le javascript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="./js/jquery-1.7.2.min.js"></script>


<script src="./js/bootstrap.js"></script>

</body>
</html>
