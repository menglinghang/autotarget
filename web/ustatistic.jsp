<%--
  Created by IntelliJ IDEA.
  User: jiejiao
  Date: 2016/8/9
  Time: 17:16
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


    <link href="./css/jquery.visualize.css" rel="stylesheet" />

    <link href="./css/dataTables.bootstrap.css" rel="stylesheet">
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

                    <li >
                        <a href="user_index.jsp">
                            <i class="icon-home"></i>
                            主页
                        </a>
                    </li>

                    <li class="active">
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
                    <i class="icon-pushpin"></i>
                    数据
                </h1>


                <div class="stat-container">

                    <div class="stat-holder">
                        <div class="stat">
                            <span id="times">暂无</span>
                            打靶次数
                        </div> <!-- /stat -->
                    </div> <!-- /stat-holder -->

                    <div class="stat-holder">
                        <div class="stat">
                            <span id="avg">暂无</span>
                            平均分
                        </div> <!-- /stat -->
                    </div> <!-- /stat-holder -->

                    <div class="stat-holder">
                        <div class="stat">
                            <span id="max">暂无</span>
                            最高分
                        </div> <!-- /stat -->
                    </div> <!-- /stat-holder -->

                    <div class="stat-holder">
                        <div class="stat">
                            <span>暂无</span>
                            名次
                        </div> <!-- /stat -->
                    </div> <!-- /stat-holder -->

                </div> <!-- /stat-container -->




                <div class="widget">

                    <div class="widget-header">
                        <h3>查看</h3>
                    </div> <!-- /widget-header -->

                    <div class="widget-content">


                        <table class="table table-striped table-bordered datatable" id="record_list">
                            <thead>
                            <tr>
                                <th class="table-checkbox"><input type="checkbox" class="group-checkable" data-set="#record_list .checkboxes" /></th>
                                <th>分数</th>
                                <th>枪支类型</th>
                                <th>场地</th>
                                <th>距离</th>
                                <th>打靶时间</th>
                            </tr>
                            </thead>
                        </table>



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
<script src="./js/excanvas.min.js"></script>
<script src="./js/jquery.flot.js"></script>
<script src="./js/jquery.flot.pie.js"></script>
<script src="./js/jquery.flot.orderBars.js"></script>
<script src="./js/jquery.flot.resize.js"></script>

<script src="./js/bootstrap.js"></script>
<script src="./js/jquery.dataTables.min.js"></script>
<script src="./js/jquery.uniform.min.js"></script>

<script type="text/javascript">
    jQuery(document).ready(function() {;
        Record.init();
    });
    /* ================================================================================ */
    var MyPage = function() {
        var initPageStyle = function() {
            $(".page-content-single").css("background-color","#fff");
            $(".page-content-single").css("margin-left","0px");
            $(".page-content-single").css("margin-top","0px");
            $(".page-content-single").css("min-height","600px");
            $(".page-content-single").css("padding","25px 20px 10px 20px");
        }
        return {
            init: function() {
                initPageStyle();
                initLeftMenu("gis");
            }
        };
    }();
    var Record = function() {
        var html="";
        var initRecordStyle = function() {
        };
        var initRecordList=function(){
            $('.datatable').dataTable( {
                "paging":true,
                "searching":true,
                "oLanguage": {
                    "aria": {
                        "sortAscending": ": activate to sort column ascending",
                        "sortDescending": ": activate to sort column descending"
                    },
                    "sProcessing":   "处理中...",
                    "sLengthMenu":   "_MENU_ ",
                    "sZeroRecords":  "没有匹配的记录",
                    "sInfo":         "显示第 _START_ 至 _END_ 项记录，共 _TOTAL_ 项",
                    "sInfoEmpty":    "显示第 0 至 0 项记录，共 0 项",
                    "sInfoFiltered": "(由 _MAX_ 项记录过滤)",
                    "sInfoPostFix":  "",
                    "sSearch":       "搜索:",
                    "oPaginate": {
                        "sFirst":    "首页",
                        "sPrevious": "上页",
                        "sNext":     "下页",
                        "sLast":     "末页"
                    }
                },
                "aoColumns": [{"mRender": function(data, type, full) {
                    sReturn = '<input type="checkbox" class="checkboxes" value="'+data+'"/>';
                    return sReturn;
                },"orderable": false,"data":"id"
                },
                    {"data":"grade"},
                    {"data":"type"},
                    {"data":"place"},
                    {"data":"distance"},
                    {"data":"date"},
                    ],
                "columnDefs" :
                        [],
                "aLengthMenu": [[5,10,15,20,25,40,50,-1],[5,10,15,20,25,40,50,"所有记录"]],
                "fnDrawCallback": function(){$(".checkboxes").uniform();$(".group-checkable").uniform();},
                "sAjaxSource": "userscore"
            });
            $('.datatable').find('.group-checkable').change(function () {
                var set = jQuery(this).attr("data-set");
                var checked = jQuery(this).is(":checked");
                jQuery(set).each(function () {
                    if (checked) {
                        $(this).attr("checked", true);
                        $(this).parents('tr').addClass("active");
                    } else {
                        $(this).attr("checked", false);
                        $(this).parents('tr').removeClass("active");
                    }
                });
                jQuery.uniform.update(set);
            });
            $('.datatable').on('change', 'tbody tr .checkboxes', function () {
                $(this).parents('tr').toggleClass("active");
            });
        }
        return {
            init: function() {
                initRecordList();
                initRecordStyle();
            }
        };
    }();

    $(document).ready(function(){
        var url = "userstatistic";

        $.ajax({url:url,type:"post",success:function(data){
            var json=eval("("+data+")");
            var list=json.aaData;
            //alert("长度：list.length="+list.length+",内容："+list[0].device_id+"--------"+list[0].device_name);
            document.getElementById("times").innerHTML=list[0].times;
            document.getElementById("avg").innerHTML=list[0].avg;
            document.getElementById("max").innerHTML=list[0].max;}
        });
    });

</script>

</body>
</html>