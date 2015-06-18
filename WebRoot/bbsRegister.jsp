<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jstl/fmt_rt"%>
<!DOCTYPE HTML>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
  content="width=device-width,inital-scale=1.0,maximum-scale=1.0,use-scalable=no">
<meta name="Author" content="bruce。bei">
<meta name="Description" content="宁波美灵思医疗科技有限公司官网专用">
<title>美灵思论坛注册</title>
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
<body>
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

    <form onsubmit="return doRegister('check')" id="mainform"
      class="form-horizontal" role="form"
      action="bbs!doBBSRegister.action" method="post">
      <div class="username">
        <input placeholder="美灵思论坛账号" type="text" name="uName" id="uName"
          oninput="checkName()" /> <span id="checkName"></span>
      </div>
      <div class="password ">
        <input placeholder="密码" type="password" name="uPass" id="uPass"
          oninput="checkPass()" /> <span id="checkPass"></span>
      </div>
      <div class="email position-relative">
        <input oninput="checkEmail()" placeholder="安全邮箱" type="text"
          name="uEmail" id="uEmail" /> <span id="checkEmail"></span> <span
          onclick="sendCheck(time())"><input
          class="position-absolute" type="button" value="获取验证码"
          id="emailBt"></span>
      </div>
      <input id="status" type="hidden" value="1">
      <div class="emailcode ">
        <input placeholder="邮箱验证码" name="check" id="check" />
      </div>
      <div class="agreement">
        <div>
          <span style="margin-right: 7px;"><input type="checkbox"
            id="box" onclick="checkBox()" /> </span><label class="pointer"
            for="acceptFlyme" tabindex="0">我已阅读并接受</label> <a href="#"
            target="_blank" class="linkABlue">《mlnx服务协议条款》</a>
        </div>
      </div>
      <div class="submit">
        <button class="btn" type="submit" id="register"
          disabled="disabled">注册</button>
      </div>
    </form>
  </div>
  
  <jsp:include page="jsp/footer.jsp"></jsp:include>

  <!-- jQuery (Bootstrap 的 JavaScript 插件需要引入 jQuery) -->
  <script type="text/javascript" src="js/jquery-2.0.0.min.js"></script>
  <!-- 包括所有已编译的插件 -->
  <script type="text/javascript" src="js/bootstrap.min.js"></script>
  <script type="text/javascript" src="js/mybbs.js"></script>
</body>
</html>
