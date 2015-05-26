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
      <li><a href="#maincontent" onclick="load('education')">教育情况</a></li>
      <li class="a"><a href="#maincontent">工作情况</a></li>
      <li><a href="#maincontent" onclick="load('personal')">个人信息</a></li>
    </ul>
    <iframe id="frame_profile" name="frame_profile"
      style="display: none"></iframe>
    <form action="home.php?mod=spacecp&ac=profile&op=work" method="post"
      enctype="multipart/form-data" autocomplete="off"
      target="frame_profile" onsubmit="clearErrorInfo();">
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
        <tr id="tr_company">
          <th id="th_company">公司</th>
          <td id="td_company"><input type="text" name="company"
            id="company" class="px" value="" tabindex="1" />
          <div class="rq mtn" id="showerror_company"></div>
            <p class="d"></p></td>
          <td class="p"><select name="privacy[company]">
              <option value="0">公开</option>
              <option value="1" selected="selected">好友可见</option>
              <option value="3">保密</option>
          </select></td>
        </tr>
        <tr id="tr_occupation">
          <th id="th_occupation">职业</th>
          <td id="td_occupation"><input type="text"
            name="occupation" id="occupation" class="px" value=""
            tabindex="1" />
          <div class="rq mtn" id="showerror_occupation"></div>
            <p class="d"></p></td>
          <td class="p"><select name="privacy[occupation]">
              <option value="0" selected="selected">公开</option>
              <option value="1">好友可见</option>
              <option value="3">保密</option>
          </select></td>
        </tr>
        <tr id="tr_revenue">
          <th id="th_revenue">年收入</th>
          <td id="td_revenue"><input type="text" name="revenue"
            id="revenue" class="px" value="" tabindex="1" />
          <div class="rq mtn" id="showerror_revenue"></div>
            <p class="d"></p></td>
          <td class="p"><select name="privacy[revenue]">
              <option value="0">公开</option>
              <option value="1">好友可见</option>
              <option value="3">保密</option>
          </select></td>
        </tr>
        <tr id="tr_position">
          <th id="th_position">职位</th>
          <td id="td_position"><input type="text" name="position"
            id="position" class="px" value="" tabindex="1" />
          <div class="rq mtn" id="showerror_position"></div>
            <p class="d"></p></td>
          <td class="p"><select name="privacy[position]">
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
              id="profilesubmitbtn" value="true" class="pn pnc" >
            <strong>保存</strong>
          </button> <span id="submit_result" class="rq"></span></td>
        </tr>
      </table>

    </form>
  </div>
</body>
</html>