<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>Bootstrap 101 Template</title>
 
    <!-- Bootstrap -->
    <link href="${pageContext.request.contextPath}/static/css/bootstrap.min.css" rel="stylesheet">
 
    <!-- HTML5 shim 和 Respond.js 是为了让 IE8 支持 HTML5 元素和媒体查询（media queries）功能 -->
    <!-- 警告：通过 file:// 协议（就是直接将 html 页面拖拽到浏览器中）访问页面时 Respond.js 不起作用 -->
    <!--[if lt IE 9]>
    <script src="https://cdn.jsdelivr.net/npm/html5shiv@3.7.3/dist/html5shiv.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/respond.js@1.4.2/dest/respond.min.js"></script>
    <![endif]-->
    <%--<style>
        ul{
            list-style: none;
        }
        ul li{
            float: left;
            margin-left: 30px;
        }
    </style>--%>
 
</head>
<body>
<%--class="container-fluid"  style="background-color: #4cae4c"--%>
<div class="container">
    <div style="width: 600px;height:450px;margin: 0 auto;border: 1px solid #269abc;padding: 30px;" >
        <form id="addUserForm" action="${pageContext.request.contextPath}/user/insertOne" method="post" role="form" class="form-horizontal">
            <div class="col-xs-12" style="text-align: center;color: #2aabd2">
                <h1>添加用户</h1>
                <br>
            </div>
            <div  class="form-group">
                <div class="col-xs-3">
                    <label class="control-label">用户名：</label>
                </div>
                <div class="col-xs-6">
                    <input type="text" name="userName" class="form-control">
                </div>
                <div class="col-xs-3">
                   <span class="help-block"></span>
                </div>
            </div>
            <div  class="form-group">
                <div class="col-xs-3">
                    <label class="control-label">电话：</label>
                </div>
                <div class="col-xs-6">
                    <input type="text" name="phone" class="form-control">
                </div>
                <div class="col-xs-3">
                    <span class="help-block"></span>
                </div>
            </div>
            <div  class="form-group">
                <div class="col-xs-3">
                    <label class="control-label">QQ：</label>
                </div>
                <div class="col-xs-6">
                    <input type="text" name="qq" class="form-control" placeholder="请输入邮箱">
                </div>
                <div class="col-xs-3">
                    <span class="help-block"></span>
                </div>
            </div>
            <div  class="form-group">
                <div class="col-xs-3">
                    <label class="control-label">密码：</label>
                </div>
                <div class="col-xs-6">
                    <input type="text" name="password" class="form-control">
                </div>
                <div class="col-xs-3">
                    <span class="help-block"></span>
                </div>
            </div>
            <div  class="form-group">
                <div class="col-xs-3">
                    <label class="control-label">部门：</label>
                </div>
                <div class="col-xs-6">
                    <input type="text" name="dept" class="form-control">
                </div>
                <div class="col-xs-3">
                    <span class="help-block"></span>
                </div>
            </div>
            <div class="col-xs-3 col-xs-offset-9">
                <input type="submit" class="btn btn-primary" value="提交"/>
            </div>
        </form>
    </div>
 
</div>
 
 
<!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
<script src="${pageContext.request.contextPath}/static/js/jquery-3.2.1.js"></script>
<!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
<script src="${pageContext.request.contextPath}/static/js/bootstrap.min.js"></script>
<script>
    $(function () {
        $("#addUserForm").submit(function () {
            var obj=$("input[name='userName']");
            var objval=obj.val();
            var pas=$("input[name='password']");
            var pasval=pas.val();
            var qqq=$("input[name='qq']");
            var qqqval=qqq.val();
            var pho=$("input[name='phone']");
            var phoval=pho.val();
 
            if(null==objval||""==objval){
                //校验失败
                obj.parent().parent().addClass("has-error");
                obj.parent().next().children().html("用户名不能为空");
                return false;
            }else{
                obj.parent().parent().removeClass("has-error");
                obj.parent().next().children().html("");
            }
 
            var reg = /^1\d{10}$/;
            if((!reg.test(phoval))|| phoval == ""||phoval==null){
                pho.parent().parent().addClass("has-error");
                pho.parent().next().children().html("手机号格式不正确");
                return false;
            }else{
                pho.parent().parent().removeClass("has-error");
                pho.parent().parent().addClass("has-success");
                pho.parent().next().children().html("");
            }
            //邮箱
            //正则表达式
            var reg = new RegExp("^[a-z0-9]+([._\\-]*[a-z0-9])*@([a-z0-9]+[-a-z0-9]*[a-z0-9]+.){1,63}[a-z0-9]+$");
            //var emil = document.getElementById("qq"); //要验证的对象
            if(qqqval === ""||!reg.test(qqqval)){ //输入不能为空
                qqq.parent().parent().addClass("has-error");
                qqq.parent().next().children().html("正则验证不通过，格式不对");
                return false;
            }else{
                qqq.parent().parent().removeClass("has-error");
                qqq.parent().parent().addClass("has-success");
                qqq.parent().next().children().html("邮箱可用");
            }
            if(pasval.length<=6||pasval==null||pasval==""){
                pas.parent().parent().addClass("has-error");
                pas.parent().next().children().html("密码必须大于6位数");
                return false;
            }else{
                pas.parent().parent().removeClass("has-error");
                pas.parent().parent().addClass("has-success");
                pas.parent().next().children().html("");
            }
        });
    });
</script>
</body>
</html>