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
                    用户账户
                </h1>


                <div class="row">

                    <div class="span9">

                        <div class="widget">

                            <div class="widget-header">
                                <h3>基本信息</h3>
                            </div> <!-- /widget-header -->

                            <div class="widget-content">



                                <div class="tabbable">
                                    <ul class="nav nav-tabs">
                                        <li class="active">
                                            <a href="#1" data-toggle="tab">个人资料</a>
                                        </li>
                                        <li><a href="#2" data-toggle="tab">修改密码</a></li>
                                    </ul>

                                    <br />

                                    <div class="tab-content">
                                        <div class="tab-pane active" id="1">
                                            <form id="edit-profile" class="form-horizontal" />
                                            <fieldset>
                                                <div class="control-group">
                                                    <div class="account-avatar">
                                                        <span class="control-label">头像：</span>
                                                        <span class="control-label"><img src="./img/headshot.png" alt="" class="img-thumbnail thumbnail" /></span>
                                                    </div>
                                                </div> <!-- /account-avatar -->

                                                <div class="control-group">
                                                    <span class="control-label">用户名:</span><span class="control-label" id="userid">加载失败...</span>
                                                </div>

                                                <div class="control-group">
                                                    <span class="control-label">姓名:</span><span class="control-label" id="name">加载失败...</span>
                                                </div>


                                                <div class="control-group">
                                                    <span class="control-label">部门:</span><span class="control-label" id="department">加载失败...</span>
                                                </div>


                                            </fieldset>
                                            </form>
                                        </div>

                                        <div class="tab-pane" id="2">
                                            <p id="edit-profile2" class="form-horizontal" />
                                            <fieldset>




                                                <div class="control-group">
                                                    <label class="control-label" for="oldpassword">原密码</label>
                                                    <div class="controls">
                                                        <input type="password" class="input-large" id="oldpassword" />
                                                    </div>
                                                </div>
                                                <div class="control-group">
                                                    <label class="control-label" for="newpassword">新密码</label>
                                                    <div class="controls">
                                                        <input type="password" class="input-large" id="newpassword" />
                                                    </div>
                                                </div>
                                                <div class="control-group">
                                                    <label class="control-label" for="repeatpassword">确认新密码</label>
                                                    <div class="controls">
                                                        <input type="password" class="input-large" id="repeatpassword" />
                                                    </div>
                                                </div>
                                                <p id="fault" name="faultw"></p>


                                                <br />

                                                <div class="form-actions">
                                                    <button type="submit" id="changepasswd" class="btn btn-primary">提交</button> <a class="btn" href="uprofile.jsp">返回</a>
                                                </div>
                                            </fieldset>
                                            </p>
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

<script>
    $(document).ready(function(){    //用来显示基本信息
        var url="adminprofile";

        $.ajax({url: url, type: "post", success: function (data) {
            //alert(data);
            var json=eval("("+data+")");
            var list=json.aaData;
            alert(list);
            document.getElementById("userid").innerHTML=list[0].userid;
            //document.getElementById("number").innerHTML=list[0].number;
            document.getElementById("name").innerHTML=list[0].name;
            document.getElementById("department").innerHTML=list[0].department;
            //document.getElementById("office").innerHTML=list[0].office;
            //document.getElementById("date").innerHTML=list[0].date;

        }
        });



    });

</script>

<script>
    $("#changepasswd").click(function () {
        //alert($("#repeatpassword").val());
        if($("#newpassword").val()!=$("#repeatpassword").val()){
            alert("两次输入新密码不匹配！");
            //document.getElementsByName("faultw").innerHTML=errorword;
        }
        else{
            postdata();
        }

    });

    function postdata() {
        //alert(1111);
        $.ajax({url:"userchangepasswd",
            type:"post",
            data:"oldpassword="+$("#oldpassword").val()+"&newpassword="+$("#newpassword").val()+"&repeatpassword="+$("#repeatpassword").val(),
            success:function (data) {
                var json = eval("("+data+")");
                alert(json.msg);
            }})
    }
</script>

</body>
</html>
