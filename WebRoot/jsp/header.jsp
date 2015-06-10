<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jstl/fmt_rt"%>
<link href="css/base.css" type="text/css" rel="stylesheet" />
<nav class="navbar navbar-default navbar-fixed-top navbar-bg"
  style="height: 70px;" role="navigation">

  <div class="navbar-header left">
    <c:forEach items="${headers }" var="hea">
      <a class="navbar-brand" href="#"><img
        src="/docs/upload/${hea.logoImg }"
        style="height: 50px; margin-top: -7.5px;"></a>
    </c:forEach>
  </div>

  <div>
    <ul class="nav navbar-nav head-size " style="font-size: 20px;">
      <c:forEach items="${BBSNavs }" var="bnav">
        <c:if test="${bnav.navName=='首页' }">
          <li><a href="bbs!showBBSIndex.action">${bnav.navName
                }</a></li>
        </c:if>
        <c:if test="${bnav.navName=='产品' }">
          <li><a href="bbs!showPostAll.action?type=1">${bnav.navName
                }</a></li>
        </c:if>
        <c:if test="${bnav.navName=='体验' }">
          <li><a href="bbs!showPostAll.action?type=2">${bnav.navName
                }</a></li>
        </c:if>
        <c:if test="${bnav.navName=='问题' }">
          <li><a href="bbs!showPostAll.action?type=3">${bnav.navName
                }</a></li>
        </c:if>

      </c:forEach>
    </ul>

    <p class="navbar-text navbar-right head-size right"
      style="margin-right: 0px;">
      <c:if test="${sessionScope.uId==null }">
        <a href="bbs!showBBSLogin.action">登录</a>
        &emsp;
        <a href="">注册</a>
      </c:if>
      <c:if test="${sessionScope.uId!=null }">
        欢迎 <a href="bbs!showPersonalCenter.action" class="navbar-link"><img
          src="/docs/upload/${sessionScope.uIcon }">${sessionScope.uAgname
            }</a>
        <a href="bbs!bbsLogout.action">注销</a>
      </c:if>
    </p>

    <form class="navbar-form navbar-right head-size hid" role="search">
      <div class="input-group">
        <input type="text" class="form-control" placeholder="Search"
          style="border: 0px" id="key"> <span
          class="input-group-addon"
          style="border: 0px; background-color: #fff;"><a
          onclick="saveKey()" href="bbs!doSearch.action" target="_blank"><img
            src="images/search.ico" height="20px;" /></a></span>
      </div>
    </form>

  </div>
</nav>

