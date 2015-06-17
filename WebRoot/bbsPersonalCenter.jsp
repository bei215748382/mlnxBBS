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
<title>美灵思产品论坛</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<!-- <link href="css/jquery.Jcrop.css" type="text/css" rel="stylesheet"> -->
<script type="text/javascript" src="scripts/swfobject.js"></script>
<script type="text/javascript" src="scripts/fullAvatarEditor.js"></script>
<!-- HTML5 Shim 和 Respond.js 用于让 IE8 支持 HTML5元素和媒体查询 -->
<!-- 注意： 如果通过 file://  引入 Respond.js 文件，则该文件无法起效果 -->
<!--[if lt IE 9]>
         <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
         <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
      <![endif]-->
<link href="css/bbs_personal_data.css" type="text/css" rel="stylesheet" />
<link href="css/font-awesome.css" type="text/css" rel="stylesheet" />
<link href="css/index.css" type="text/css" rel="stylesheet" />
<link href="css/style_2_common.css" rel="stylesheet">
</head>
<body>
  <jsp:include page="jsp/header.jsp"></jsp:include>

  <div class="container">
    <div class="row">
      <div class="col-sm-12 bg-white">
        <div class="col-sm-4">
          <div class="mg-top-15">
            <div class="personal-img">
              <div class="left width-60">
                <img class="img-circle "
                  src="/docs/upload/${user.uicon1 }"> <a
                  href="#imgContent" onclick="openpage('img')"
                  class="h-change-avatar"
                  style="display: block; text-align: center; color: grey;">修改头像</a>
              </div>
              <div id="personal-list" class="left width-40">
                <ul class="list-unstyled mg-right-15">
                  <li>帖子<span>${user.posts.size() }</span></li>
                  <li>相册<span>0</span></li>
                  <li>好友<span>0</span></li>
                  <li>积分<span>${user.uscore }</span></li>
                  <li>签到<span>${user.historyDays }</span></li>
                </ul>
              </div>
            </div>
            <div class="mg-top-35">用户昵称：${user.uagname }</div>
            <div class="mg-top-15">http://bbs.dji.com/?24203（
              个人用户中心他人访问url访问地址）</div>
            <div class="mg-top-35">用户勋章</div>
            <div class="mg-top-15">
              <a href="#maincontent" style="cursor: pointer;"
                onclick="openpage('all')"> 查看全部资料资料</a>
            </div>
            <div style="position: relative;">
              <a href="#maincontent" style="cursor: pointer;"
                style="cursor: pointer;" class="user-setting" title="设置"
                onclick="openpage('base')"></a>
            </div>
          </div>
        </div>
        <div class="col-sm-8">
          <img src="images/mlsyl1.jpg" style="width: 100%;">
        </div>
      </div>
      <div id="maincontent" class="col-sm-12 bg-white mg-top-15 pd15">hello
        body@</div>
      <div id="imgContent" class="col-sm-12 bg-white mg-top-15 pd15"
        style="margin: 0 auto; text-align: center;margin-top: 15px;">
        <div id="ct" class="ct2_a wp cl hmt20">
          <div class="appl">
            <div class="h-home-left">
              <h2 class="mt bbda">设置</h2>
              <ul>
                <li class="a"><a href="#imgContent"
                  onclick="openpage('img')">修改头像</a></li>
                <li><a href="#maincontent"
                  onclick="openpage('base')">个人资料</a></li>
                <li><a href="#maincontent">积分</a></li>
                <li><a href="#maincontent">用户组</a></li>
                <li><a href="#maincontent">隐私筛选</a></li>
                <li><a href="#maincontent">密码安全</a></li>
                <li><a href="#maincontent">QQ绑定</a></li>
              </ul>
            </div>
          </div>
          <div class="pd15">
            <p id="swfContainer">
              本组件需要安装Flash Player后才可使用，请从<a
                href="http://www.adobe.com/go/getflashplayer"
                style="color: red;">这里</a>下载安装。
            </p>
            <div style="color: red;">说明:上传头像成功后，按F5刷新，查看效果！</div>
          </div>
          <script type="text/javascript">
											swfobject
													.addDomLoadEvent(function() {

														var swf = new fullAvatarEditor(
																"fullAvatarEditor.swf",
																"expressInstall.swf",
																"swfContainer",
																{
																	id : 'swf',
																	upload_url : 'upload.jsp', //上传接口
																	method : 'post', //传递到上传接口中的查询参数的提交方式。更改该值时，请注意更改上传接口中的查询参数的接收方式
																	src_upload : 0, //是否上传原图片的选项，有以下值：0-不上传；1-上传；2-显示复选框由用户选择
																	avatar_box_border_width : 2,
																	avatar_sizes : '100*100|50*50|32*32',
																	avatar_sizes_desc : '100*100像素|50*50像素|32*32像素'
																},
																function(msg) {
																	switch (msg.code) {
																	case 3:
																		if (msg.type == 0) {
																			alert("摄像头已准备就绪且用户已允许使用。");
																		} else if (msg.type == 1) {
																			alert("摄像头已准备就绪但用户未允许使用！");
																		} else {
																			alert("摄像头被占用！");
																		}
																		break;
																	}
																});
													});
										</script>
        </div>
      </div>
    </div>
  </div>

  <jsp:include page="jsp/footer.jsp"></jsp:include>
  <!-- jQuery (Bootstrap 的 JavaScript 插件需要引入 jQuery) -->
  <script type="text/javascript" src="js/jquery-2.0.0.min.js"></script>
  <!-- 包括所有已编译的插件 -->
  <script type="text/javascript" src="js/bootstrap.min.js"></script>
  <script type="text/javascript" src="js/personal_center.js"></script>
</body>
</html>