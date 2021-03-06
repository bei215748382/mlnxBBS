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
<title>美灵思论坛</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<!-- HTML5 Shim 和 Respond.js 用于让 IE8 支持 HTML5元素和媒体查询 -->
<!-- 注意： 如果通过 file://  引入 Respond.js 文件，则该文件无法起效果 -->
<!--[if lt IE 9]>
         <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
         <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
      <![endif]-->
<!-- 引入lightSlider式样，供轮播图片使用  -->
<link href="css/lightSlider.css" type="text/css" rel="stylesheet" />
<link href="css/bbs_layout.css" type="text/css" rel="stylesheet" />
</head>
<body>
  <jsp:include page="jsp/header.jsp"></jsp:include>

  <div class="container">
    <div class="row">
      <div class="col-sm-9">
        <div id="showPost">
          <c:if test="${existPost==0 }">无相关查询结果！</c:if>
          <c:if test="${existPost==1 }">
            <c:forEach items="${posts }" var="pos">
              <div class="bg-white border-blue"
                style="height: 220px; margin-bottom: 15px;">
                <div class="col-sm-5">
                  <img src="/docs/upload/${pos[1].uicon1}"
                    style="height: 220px;">
                </div>
                <div class="col-sm-7">
                  <div class="post-title">${pos[0].replaceAll(sessionScope.key,
                    sessionScope.replace) }</div>
                  <div class="post-header">
                    作者：${pos[1].uagname.replaceAll(sessionScope.key,
                    sessionScope.replace) }
                    （${pos[1].uname.replaceAll(sessionScope.key,
                    sessionScope.replace) }）
                    发帖时间：
                    <c:set var="time" value="${pos[2] }"></c:set>
                    ${time.replaceAll(sessionScope.key,
                    sessionScope.replace) }
                    点赞数：${pos[3] }
                  </div>
                  <div class="post-body">${pos[4] }</div>
                  <div class="post-more">
                    <a href="bbs!showPostContent.action?poId=${pos[5] }"
                      target="_blank">阅读更多>></a>
                  </div>
                </div>
              </div>
            </c:forEach>
            <div align="center" style="margin-top: 15px">

              <a style="cursor: pointer; text-decoration: none;"
                onclick="querySearchPost('1')">首页</a> &emsp;

              <c:if test="${pb.totalPageCount<=5 }">
                <c:set var="i" value="1"></c:set>
                <c:forEach begin="0" end="${pb.totalPageCount-1 }">
                  <c:if test="${i==1 }">
                    <span style="color: gray">${i }</span>
                    &emsp;
                  </c:if>
                  <c:if test="${i!=1 }">
                    <a style="cursor: pointer; text-decoration: none;"
                      onclick="querySearchPost(${i })">${i }</a>
                    &emsp;
                  </c:if>
                  <c:set var="i" value="${i+1}"></c:set>
                </c:forEach>
              </c:if>
              <c:if test="${pb.totalPageCount>5 }">
                <c:set var="i" value="1"></c:set>
                <c:forEach begin="0" end="4">
                  <c:if test="${i==1 }">
                    <span style="color: gray">${i }</span>
                    &emsp;
                  </c:if>
                  <c:if test="${i!=1 }">
                    <a id="c${i }"
                      style="cursor: pointer; text-decoration: none; color:"
                      onclick="querySearchPost(${i })">${i }</a>
                    &emsp;
                  </c:if>
                  <c:set var="i" value="${i+1}"></c:set>
                </c:forEach>
              </c:if>
              <a style="cursor: pointer; text-decoration: none;"
                onclick="querySearchPost(${pb.totalPageCount})">末页</a>
            </div>
          </c:if>
        </div>
      </div>

      <div class="col-sm-3">
        <div class="bg-white border-blue" style="margin-bottom: 15px;">
          <div class="table" style="padding: 15px;">
            <ul class="list-unstyled table-cell"
              style="text-align: center; width: 50%; padding: 25px 0px; border-right: 1px solid rgb(212, 212, 212);">
              <li>${date }</li>
            </ul>
            <div id="signIn" class="table-cell"
              style="text-align: center;">
              <c:if test="${sessionScope.uId==null }">
                <a href="bbs!showBBSLogin.action"><button
                    type="button" class="btn btn-primary">√&nbsp;&nbsp;&nbsp;&nbsp;签到</button></a>
                <br>
                <span style="display: block; margin-top: 15px;">已签到0天</span>
              </c:if>
              <c:if test="${sessionScope.uId!=null }">
                <c:if test="${sessionScope.signInFlag }">
                  <button type="button" class="btn btn-primary"
                    disabled="disabled">√&nbsp;&nbsp;&nbsp;&nbsp;已签到</button>
                </c:if>
                <c:if test="${!sessionScope.signInFlag }">
                  <button type="button" class="btn btn-primary"
                    onclick="signIn(${sessionScope.uId })">√&nbsp;&nbsp;&nbsp;&nbsp;签到</button>
                </c:if>
                <br>
                <span style="display: block; margin-top: 15px;">已连续签到${sessionScope.runningDays
                  }天</span>
              </c:if>
            </div>
          </div>
        </div>
        <div class="bg-white border-blue" style="height: 185px;">热门板块</div>

        <div class="bg-white border-blue" style="height: 600px; margin-top: 15px;">
          最新活动:<br />
          <c:forEach items="${topEvents }" var="tpe">
            <div style="margin-top: 20px">
              《${tpe.etitle }》 <br /> <a href="">${tpe.econtent.toString()
                .replaceAll("<.*?>", "").substring(0, 20) }……</a>
            </div>
          </c:forEach>
        </div>
      </div>
    </div>
  </div>

 
  <!-- jQuery (Bootstrap 的 JavaScript 插件需要引入 jQuery) -->
  <script type="text/javascript" src="js/jquery-2.0.0.min.js"></script>
  <!-- 包括所有已编译的插件 -->
  <script type="text/javascript" src="js/bootstrap.min.js"></script>
  <script type="text/javascript" src="js/mybbs.js"></script>
   <jsp:include page="jsp/footer.jsp"></jsp:include>
</body>
</html>
