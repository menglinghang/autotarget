<%--
  Created by IntelliJ IDEA.
  User: jiejiao
  Date: 2016/8/15
  Time: 23:11
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

                    <li class="active">
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

                    <li>
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
                    <i class="icon-home"></i>
                    主页
                </h1>

                <div class="widget">

                    <div class="widget-header">
                        <h3>Available Plans</h3>
                    </div> <!-- /widget-header -->

                    <div class="widget-content">

                        <div class="pricing-plans plans-3">

                            <div class="plan-container">
                                <div class="plan">
                                    <div class="plan-header">

                                        <div class="plan-title">
                                            Micro
                                        </div> <!-- /plan-title -->

                                        <div class="plan-price">
                                            <span class="note">$</span>15<span class="term">Per Month</span>
                                        </div> <!-- /plan-price -->

                                    </div> <!-- /plan-header -->

                                    <div class="plan-features">
                                        <ul>
                                            <li><strong>Free</strong> setup</li>
                                            <li><strong>1</strong> Website</li>
                                            <li><strong>2</strong> Projects</li>
                                            <li><strong>1GB</strong> Storage</li>
                                            <li><strong>$0</strong> Google Adwords Credit</li>
                                        </ul>
                                    </div> <!-- /plan-features -->

                                    <div class="plan-actions">
                                        <a href="javascript:;" class="btn">Purchase Now</a>
                                    </div> <!-- /plan-actions -->

                                </div> <!-- /plan -->
                            </div> <!-- /plan-container -->

                            <div class="plan-container">
                                <div class="plan">
                                    <div class="plan-header">

                                        <div class="plan-title">
                                            Starter
                                        </div> <!-- /plan-title -->

                                        <div class="plan-price">
                                            <span class="note">$</span>35<span class="term">Per Month</span>
                                        </div> <!-- /plan-price -->

                                    </div> <!-- /plan-header -->

                                    <div class="plan-features">
                                        <ul>
                                            <li><strong>Free</strong> setup</li>
                                            <li><strong>5</strong> Website</li>
                                            <li><strong>10</strong> Projects</li>
                                            <li><strong>5GB</strong> Storage</li>
                                            <li><strong>$25</strong> Google Adwords Credit</li>
                                        </ul>
                                    </div> <!-- /plan-features -->

                                    <div class="plan-actions">
                                        <a href="javascript:;" class="btn">Purchase Now</a>
                                    </div> <!-- /plan-actions -->

                                </div> <!-- /plan -->
                            </div> <!-- /plan-container -->

                            <div class="plan-container">
                                <div class="plan orange">
                                    <div class="plan-header">

                                        <div class="plan-title">
                                            Business
                                        </div> <!-- /plan-title -->

                                        <div class="plan-price">
                                            <span class="note">$</span>75<span class="term">Per Month</span>
                                        </div> <!-- /plan-price -->

                                    </div> <!-- /plan-header -->

                                    <div class="plan-features">
                                        <ul>
                                            <li><strong>Free</strong> setup</li>
                                            <li><strong>20</strong> Website</li>
                                            <li><strong>35</strong> Projects</li>
                                            <li><strong>Unlimited</strong> Storage</li>
                                            <li><strong>$65</strong> Google Adwords Credit</li>
                                        </ul>
                                    </div> <!-- /plan-features -->

                                    <div class="plan-actions">
                                        <a href="javascript:;" class="btn">Purchase Now</a>
                                    </div> <!-- /plan-actions -->

                                </div> <!-- /plan -->
                            </div> <!-- /plan-container -->


                        </div> <!-- /pricing-plans -->

                    </div> <!-- /widget-content -->

                </div> <!-- /widget -->




                <div class="widget">

                    <div class="widget-header">
                        <h3>Account Information</h3>
                    </div> <!-- /widget-header -->

                    <div class="widget-content">

                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>

                        <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                    </div> <!-- /widget-content -->

                </div> <!-- /widget -->



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
