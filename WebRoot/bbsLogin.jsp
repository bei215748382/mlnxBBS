<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jstl/fmt_rt"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
  content="width=device-width,inital-scale=1.0,maximum-scale=1.0,use-scalable=no">
<meta name="Author" content="bruce。bei">
<meta name="Description" content="宁波美灵思医疗科技有限公司官网专用">
<title>美灵思论坛</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<!-- HTML5 Shim 和 Respond.js 用于让 IE8 支持 HTML5元素和媒体查询 -->
<!-- 注意： 如果通过 file://  引入 Respond.js 文件，则该文件无法起效果 -->
<!--[if lt IE 9]>
         <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
         <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
      <![endif]-->
<link href="css/bbs_login_layout.css" type="text/css" rel="stylesheet" />
<style>
</style>
</head>
<body onkeyup="eKeyup(event)">
  <div class="container">
    <nav class="navbar navbar-default navbar-mlnx" role="navigation">
    <div class="navbar-header">
      <c:forEach items="${headers }" var="hea">
        <a class="navbar-brand" href="#"><img
          src="/docs/upload/${hea.logoImg }"
          style="height: 50px; margin-top: -7.5px;"></a>
      </c:forEach>
    </div>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="bbs!showBBSLogin.action"><span
          style="font-size: 14px;">登录</span></a></li>
      <li><a href="javascript:void(0)">|</a></li>
      <li><a href="bbs!showBBSRegister.action"><span
          style="font-size: 14px;">注册</span></a></li>
    </ul>
    </nav>

    <div id="mainform" class="form-horizontal" role="form">
      <div class="username">
        <input placeholder="手机号/美灵思论坛账号" type="text" id="uName"
          name="uName" onfocus="reInput()" />
      </div>
      <div class="password ">
        <input placeholder="密码" type="password" id="uPass" name="uPass"
          onfocus="reInput()" />
      </div>
      <div id="error"></div>
      <div>
        <span style="margin-right: 7px;"><input type="checkbox"
          id="remember" /> </span><label>记住密码</label>
      </div>
      <div>
        <button class="btn" onclick="bbsLogin('${sessionScope.url}')"
          id="bbsLogin">登录</button>
      </div>
    </div>


  </div>
<jsp:include page="jsp/footer.jsp"></jsp:include>
  <!-- jQuery (Bootstrap 的 JavaScript 插件需要引入 jQuery) -->
  <script type="text/javascript" src="js/jquery-2.0.0.min.js"></script>
  <!-- 包括所有已编译的插件 -->
  <script type="text/javascript" src="js/bootstrap.min.js"></script>
  <script type="text/javascript" src="js/mybbs.js"></script>
</body>
</html>
