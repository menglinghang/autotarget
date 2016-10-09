<%--
  Created by IntelliJ IDEA.
  User: jiejiao
  Date: 2016/8/15
  Time: 23:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8"/>
    <title>打靶系统-管理</title>

    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>
    <meta name="apple-mobile-web-app-capable" content="yes"/>

    <base href="<%=basePath%>">

    <link href="./css/bootstrap.min.css" rel="stylesheet"/>
    <link href="./css/bootstrap-responsive.min.css" rel="stylesheet"/>

    <link href="http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600" rel="stylesheet"/>
    <link href="./css/font-awesome.css" rel="stylesheet"/>

    <link href="./css/adminia.css" rel="stylesheet"/>
    <link href="./css/adminia-responsive.css" rel="stylesheet"/>

    <link href="./css/pages/dashboard.css" rel="stylesheet"/>

    <link href="./css/dataTables.bootstrap.css" rel="stylesheet">
    <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
    <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
</head>

<body>


<jsp:include page="navbar_top.jsp"></jsp:include>


<div id="content">

    <div class="container">

        <div class="row">

            <div class="span3">

                <div class="account-container">

                    <div class="account-avatar">
                        <img src="./img/headshot.png" alt="" class="thumbnail"/>
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

                <hr/>

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

                    <li class="active">
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
                            退出登陆
                        </a>
                    </li>

                </ul>


                <hr/>

                <div class="sidebar-extra">
                    <p>查看战士的数据和信息，并可以进行相应的操作（新增，修改，删除，导出信息等）！</p>
                </div> <!-- .sidebar-extra -->

                <br/>

            </div> <!-- /span3 -->


            <div class="span9">

                <h1 class="page-title">
                    <i class="icon-th-list"></i>
                    用户管理
                </h1>


                <div class="stat-container">

                    <div class="stat-holder">
                        <div class="stat">
                            <span>564</span>
                            总人数
                        </div> <!-- /stat -->
                    </div> <!-- /stat-holder -->

                    <div class="stat-holder">
                        <div class="stat">
                            <span>423</span>
                            及格人数
                        </div> <!-- /stat -->
                    </div> <!-- /stat-holder -->

                    <div class="stat-holder">
                        <div class="stat">
                            <span>96</span>
                            不及格人数
                        </div> <!-- /stat -->
                    </div> <!-- /stat-holder -->

                    <div class="stat-holder">
                        <div class="stat">
                            <span>2</span>
                            暂空
                        </div> <!-- /stat -->
                    </div> <!-- /stat-holder -->

                </div> <!-- /stat-container -->


                <div class="widget widget-table">

                    <div class="widget-header">
                        <i class="icon-th-list"></i>
                        <h3>人员管理</h3>
                    </div> <!-- /widget-header -->
                    <div class="widget-content" id="topPlugin">


                        <table class="table table-striped datatable" id="record_list">
                            <thead>
                            <tr>
                                <th class="table-checkbox"><input type="checkbox" class="group-checkable"
                                                                  data-set="#record_list .checkboxes"/></th>
                                <th>姓名</th>
                                <th>用户名</th>
                                <th>编号</th>
                                <th>部门</th>
                                <th>职位</th>
                                <th>加入时间</th>
                                <th>操作</th>
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

<!--删除单个user的modal-->
<div id="delModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
        <h3>确认删除用户信息？</h3>
    </div>
    <div class="modal-body">
        <span> <bold>用户名：</bold></span>
        <span id="deleteid"></span>
    </div>
    <div class="modal-footer">
        <button class="btn" data-dismiss="modal" aria-hidden="true">关闭</button>
        <button class="btn btn-primary" onclick="delone();">确认</button>
    </div>
</div>

<!-- 修改单个user信息的modal -->
<div id="modModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
        <h3>填写用户信息：</h3>
    </div>
    <div class="modal-body">
        <span> <bold></bold></span>
        <span id=""></span>
    </div>
    <div class="modal-footer">
        <button class="btn" data-dismiss="modal" aria-hidden="true">关闭</button>
        <button class="btn btn-primary" onclick="">确认</button>
    </div>
</div>


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
<!--<script src="./js/charts/bar.js"></script> -->
<script src="./js/jquery.dataTables.min.js"></script>
<script src="./js/jquery.uniform.min.js"></script>

<script type="text/javascript">
    jQuery(document).ready(function () {
        Record.init();
    });
    /* ================================================================================ */

    var Record = function () {
        var html = "";
        var initRecordStyle = function () {
        };
        var initRecordList = function () {
            $('.datatable').dataTable({
                "paging": true,
                "searching": true,
                "oLanguage": {
                    "aria": {
                        "sortAscending": ": activate to sort column ascending",
                        "sortDescending": ": activate to sort column descending"
                    },
                    "sProcessing": "处理中...",
                    "sLengthMenu": "_MENU_ 记录/页",
                    "sZeroRecords": "没有匹配的记录",
                    "sInfo": "显示第 _START_ 至 _END_ 项记录，共 _TOTAL_ 项",
                    "sInfoEmpty": "显示第 0 至 0 项记录，共 0 项",
                    "sInfoFiltered": "(由 _MAX_ 项记录过滤)",
                    "sInfoPostFix": "",
                    "sSearch": "查找:",
                    "oPaginate": {
                        "sFirst": "首页",
                        "sPrevious": "上页",
                        "sNext": "下页",
                        "sLast": "末页"
                    }
                },
                "aoColumns": [{
                    "mRender": function (data, type, full) {
                        sReturn = '<input type="checkbox" class="checkboxes" value="' + full.id + '"/>';
                        return sReturn;
                    }, "orderable": false, "data": "userid"
                }, {"data": "name"}, {"data": "userid"}, {"data": "number"}, {"data": "department"}, {"data": "office"}, {"data": "date"}, {
                    "orderable": false, // 禁用排序
                    "targets": [8], // 指定的列
                    "data": "userid",
                    "render": function (data, type, full, meta) {
                        var temp = full;
                        return data = '<a id="deleteone" role="button" class="btn btn-warning btn-sm" data-id=' + full.name + '>删 除</a><button id="modifyone" class="btn  btn-sm" data-id=' + full.name + '>修 改</button>';
                    }
                }],
                "columnDefs": [],
                "aLengthMenu": [[5, 10, 15, 20, 25, 40, 50, -1], [5, 10, 15, 20, 25, 40, 50, "所有记录"]],
                "fnDrawCallback": function () {
                    $(".checkboxes").uniform();
                    $(".group-checkable").uniform();
                },
                //"sAjaxSource": "get_record.jsp"
                "sAjaxSource": "userlist",
                initComplete: initComplete()
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
            init: function () {
                initRecordList();
                initRecordStyle();
            }
        };
    }();

    function initComplete(data) {
        //上方topPlugin DIV中追加HTML
        //var topPlugin='<button id="addButton" class="btn btn-success btn-sm" data-toggle="modal" data-target="#addUser" style="display:block;">' +
        // '<span class="glyphicon glyphicon-plus" aria-hidden="true"></span>添加用户</button>';

        //删除用户按钮的HTMLDOM
        var topPlugin = '<button   class="btn btn-danger btn-sm" id="deleteAll">批量删除</button> <button   class="btn btn-primary btn-sm addBtn" >新 &nbsp;&nbsp;增</button>             <iframe id="exp" style="display:none;"></iframe><button  class="btn btn-info btn-sm" id="expCsv">导出全部</button>';

        $("#topPlugin").append(topPlugin);//在表格上方topPlugin DIV中追加HTML

        //$("#expCsv").on("click", exp1);//给下方按钮绑定事件

    }


    $(document).delegate('#deleteone','click',function(){    //由table里的删除button触发
        //alert(0000);
        document.getElementById("deleteid").innerHTML=$(this).attr("data-id");
        $('#delModal').modal('show');
    })

    function delone() {        //modal里的删除button触发,并显示name
        var deleteid=document.getElementById("deleteid").innerHTML;
        //alert(deleteid);
        var url="deleteoneuser";
        $.ajax({url:url,
            type:"post",
            data:"name="+deleteid,
            success:function (data) {
                var json = eval("("+data+")");
                var list = json.aaData;
                if(list[0].result){
                    alert("删除成功！");
                }else {
                    alert("删除失败！")
                }
                $('#delModal').modal('hide');
                location.reload();
            }})
    }

    $(document).delegate('#modifyone','click',function () {

        $('#modModal').modal('show');
    })



</script>

</body>
</html>
