<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jstl/fmt_rt"%>
<!DOCTYPE html">
<html>
<head>
</head>
<body>
  <div class="bm bw0">
    <h1 class="mt">个人资料</h1>
    <!--don't close the div here-->
    <ul class="tb cl">
       <li><a href="#maincontent" onclick="openpage('base')">基本资料</a></li>
      <li  class="a"><a href="#maincontent" >联系方式</a></li>
      <li><a href="#maincontent" onclick="load('education')">教育情况</a></li>
      <li><a href="#maincontent" onclick="load('work')">工作情况</a></li>
      <li><a href="#maincontent" onclick="load('personal')">个人信息</a></li>
    </ul>
    <form
      action="#"
      method="post" enctype="multipart/form-data" autocomplete="off"
      target="frame_profile" onsubmit="javascript:void(0);">
      <input value="17b588b1" name="formhash" type="hidden">
      <table class="tfm" id="profilelist" cellpadding="0"
        cellspacing="0">
        <tbody>
          <tr>
            <th>用户名</th>
            <td><span id="currnickname">bei215748382</span> <input
              name="nickname" class="px" value="bei215748382"
              id="newnickname" style="display: none;" type="text">
              <span style="font-size: 14px; color: red;"
              id="showmessage"></span> <span id="userbtn" class="pn xg1"
              t="e">修改</span></td>
            <td>&nbsp;</td>
          </tr>
          <tr id="tr_mobile">
            <th id="th_mobile">手机</th>
            <td id="td_mobile"><input name="mobile" id="mobile"
              class="px" value="" tabindex="1" type="text">
              <div class="rq mtn" id="showerror_mobile"></div>
              <p class="d"></p></td>
            <td class="p"><select name="privacy[mobile]">
                <option value="0">公开</option>
                <option value="1">好友可见</option>
                <option value="3">保密</option>
            </select></td>
          </tr>
          <tr id="tr_qq">
            <th id="th_qq">QQ</th>
            <td id="td_qq"><input name="qq" id="qq" class="px"
              value="" tabindex="1" type="text">
              <p>
                <a href="http://bbs.dji.com/" class="xi2"
                  onclick="this.href='http://wp.qq.com/set.html?from=discuz&amp;uin='+$('qq').value"
                  target="_top">设置我的QQ在线状态</a>
              </p>
              <div class="rq mtn" id="showerror_qq"></div>
              <p class="d"></p></td>
            <td class="p"><select name="privacy[qq]">
                <option value="0">公开</option>
                <option value="1">好友可见</option>
                <option value="3">保密</option>
            </select></td>
          </tr>
          <tr id="tr_field1">
            <th id="th_field1">Email</th>
            <td id="td_field1"><input name="field1" id="field1"
              class="px" value="" tabindex="1" type="text">
              <div class="rq mtn" id="showerror_field1"></div>
              <p class="d"></p></td>
            <td class="p"><select name="privacy[field1]">
                <option value="0" selected="selected">公开</option>
                <option value="1">好友可见</option>
                <option value="3">保密</option>
            </select></td>
          </tr>
          <tr id="tr_telephone">
            <th id="th_telephone">固定电话</th>
            <td id="td_telephone"><input name="telephone"
              id="telephone" class="px" value="" tabindex="1"
              type="text">
              <div class="rq mtn" id="showerror_telephone"></div>
              <p class="d"></p></td>
            <td class="p"><select name="privacy[telephone]">
                <option value="0">公开</option>
                <option value="1">好友可见</option>
                <option value="3">保密</option>
            </select></td>
          </tr>
          <tr id="tr_msn">
            <th id="th_msn">MSN</th>
            <td id="td_msn"><input name="msn" id="msn" class="px"
              value="" tabindex="1" type="text">
              <div class="rq mtn" id="showerror_msn"></div>
              <p class="d"></p></td>
            <td class="p"><select name="privacy[msn]">
                <option value="0">公开</option>
                <option value="1">好友可见</option>
                <option value="3">保密</option>
            </select></td>
          </tr>
          <tr id="tr_taobao">
            <th id="th_taobao">阿里旺旺</th>
            <td id="td_taobao"><input name="taobao" id="taobao"
              class="px" value="" tabindex="1" type="text">
              <div class="rq mtn" id="showerror_taobao"></div>
              <p class="d"></p></td>
            <td class="p"><select name="privacy[taobao]">
                <option value="0">公开</option>
                <option value="1">好友可见</option>
                <option value="3">保密</option>
            </select></td>
          </tr>
          <tr>
            <th>&nbsp;</th>
            <td colspan="2"><input name="profilesubmit"
              value="true" type="hidden">
              <button type="submit" name="profilesubmitbtn"
                id="profilesubmitbtn" value="true" class="pn pnc">
                <strong>保存</strong>
              </button> <span id="submit_result" class="rq"></span></td>
          </tr>
        </tbody>
      </table>
    </form>
  </div>
</body>
</html>