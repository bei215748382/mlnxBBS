<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jstl/fmt_rt"%>
<!DOCTYPE html">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
  <div class="bm bw0">
    <h1 class="mt">个人资料</h1>
    <!--don't close the div here-->
    <ul class="tb cl">
      <li><a href="#maincontent" onclick="openpage('base')">基本资料</a></li>
      <li><a href="#maincontent" onclick="load('contact')">联系方式</a></li>
      <li class="a"><a href="#maincontent">教育情况</a></li>
      <li><a href="#maincontent" onclick="load('work')">工作情况</a></li>
      <li><a href="#maincontent" onclick="load('personal')">个人信息</a></li>
    </ul>
    <form action="#" method="post" enctype="multipart/form-data"
      autocomplete="off" target="frame_profile">
      <input type="hidden" value="b79f7eb1" name="formhash" />
      <table cellspacing="0" cellpadding="0" class="tfm"
        id="profilelist">
        <tr>
          <th>用户名</th>
          <td><span id="currnickname">bei215748382</span> <input
            type="text" name="nickname" class="px" value="bei215748382"
            id="newnickname" style="display: none"> <span
            style="font-size: 14px; color: red" id="showmessage"></span>
            <span id="userbtn" class="pn xg1" t="e">修改</span></td>
          <td>&nbsp;</td>
        </tr>
        <tr id="tr_education">
          <th id="th_education">学历</th>
          <td id="td_education"><select name="education"
            id="education" class="ps" tabindex="1"><option
                value="博士">博士</option>
              <option value="硕士">硕士</option>
              <option value="本科">本科</option>
              <option value="专科">专科</option>
              <option value="中学">中学</option>
              <option value="小学">小学</option>
              <option value="其它">其它</option></select>
            <div class="rq mtn" id="showerror_education"></div>
            <p class="d"></p></td>
          <td class="p"><select name="privacy[education]">
              <option value="0">公开</option>
              <option value="1">好友可见</option>
              <option value="3">保密</option>
          </select></td>
        </tr>
        <tr id="tr_graduateschool">
          <th id="th_graduateschool">毕业学校</th>
          <td id="td_graduateschool"><input type="text"
            name="graduateschool" id="graduateschool" class="px"
            value="" tabindex="1" />
            <div class="rq mtn" id="showerror_graduateschool"></div>
            <p class="d"></p></td>
          <td class="p"><select name="privacy[graduateschool]">
              <option value="0">公开</option>
              <option value="1">好友可见</option>
              <option value="3">保密</option>
          </select></td>
        </tr>
        <tr>
          <th>&nbsp;</th>
          <td colspan="2"><input type="hidden" name="profilesubmit"
            value="true" />
            <button type="submit" name="profilesubmitbtn"
              id="profilesubmitbtn" value="true" class="pn pnc" > <strong>保存</strong>
            </button> <span id="submit_result" class="rq"></span></td>
        </tr>
      </table>


    </form>
  </div>
</body>
</html>