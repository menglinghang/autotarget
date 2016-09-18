<%--
  Created by IntelliJ IDEA.
  User: jiejiao
  Date: 2016/8/9
  Time: 16:47
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

    <link href="./css/pages/dashboard.css" rel="stylesheet" />

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
                        <a href="user_index.jsp">
                            <i class="icon-home"></i>
                            主页
                        </a>
                    </li>

                    <li>
                        <a href="ustatistic.jsp">
                            <i class="icon-pushpin"></i>
                            打靶数据
                        </a>
                    </li>

                    <li>
                        <a href="uprofile.jsp">
                            <i class="icon-th-list"></i>
                            个人资料
                        </a>
                    </li>

                    <li>
                        <a href="uskill.jsp">
                            <i class="icon-signal"></i>
                            技巧学习
                        </a>
                    </li>


                    <li>
                        <a href="login.jsp">
                            <i class="icon-lock"></i>
                            退出登陆
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


            <!--    <div class="row">

                    <div class="span5">

                        <div class="widget">

                            <div class="widget-header">
                                <h3>5 Column</h3>
                            </div> <!-- /widget-header -->

            <!--                <div class="widget-content">
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                            </div> <!-- /widget-content -->

            <!--            </div> <!-- /widget -->

            <!--       </div> <!-- /span5 -->

            <!--        <div class="span4">

                        <div class="widget">

                            <div class="widget-header">
                                <h3>4 Column</h3>
                            </div> <!-- /widget-header -->

        <!--                    <div class="widget-content">
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>
                            </div> <!-- /widget-content -->

        <!--                </div> <!-- /widget -->
        <!--            </div> <!-- /span4 -->

        <!--        </div> <!-- /row -->




                <div class="container span8">
                    <br>
                    <div id="myCarousel" class="carousel slide" data-ride="carousel">
                        <!-- Indicators -->


                        <!-- Wrapper for slides -->
                        <div class="carousel-inner" role="listbox">

                            <div class="item active">
                                <img src="./img/img_chania.jpg" alt="Chania" width="460" height="345" class="span8">
                                <div class="carousel-caption">
                                    <h3>Chania</h3>
                                    <p>The atmosphere in Chania has a touch of Florence and Venice.</p>
                                </div>
                            </div>

                            <div class="item">
                                <img src="./img/img_chania2.jpg" alt="Chania" width="460" height="345" class="span8">
                            </div>

                            <div class="item">
                                <img src="./img/img_flower.jpg" alt="Flower" width="460" height="345" class="span8">
                            </div>

                            <div class="item">
                                <img src="./img/img_flower2.jpg" alt="Flower" width="460" height="345" class="span8">
                            </div>

                        </div>

                        <!-- Left and right controls -->
                        <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                            <span class="sr-only">P</span>
                        </a>
                        <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                            <span class="sr-only">N</span>
                        </a>
                    </div>
                </div>








            </div> <!-- /span9 -->


        </div> <!-- /row -->

    </div> <!-- /container -->

</div> <!-- /content -->


<jsp:include page="footer.jsp"></jsp:include>



<!-- Le javascript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="./js/jquery-1.7.2.min.js"></script>
<script src="./js/excanvas.min.js"></script>
<script src="./js/jquery.flot.js"></script>
<script src="./js/jquery.flot.pie.js"></script>
<script src="./js/jquery.flot.orderBars.js"></script>
<script src="./js/jquery.flot.resize.js"></script>

<script src="./js/bootstrap.js"></script>


</body>
</html>
