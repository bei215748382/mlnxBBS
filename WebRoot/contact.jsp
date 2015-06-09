<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jstl/fmt_rt"%>

<body>
  <div id="ct" class="ct2_a wp cl hmt20">
    <div id="changePage" class="mn">
      <div class="bm bw0">
        <h1 class="mt">个人资料</h1>
        <!--don't close the div here-->
        <ul class="tb cl">
          <li><a href="#maincontent" onclick="openpage('base')">基本资料</a></li>
          <li class="a"><a href="#maincontent">联系方式</a></li>
          <li><a href="#maincontent"
            onclick="openpage('education')">教育情况</a></li>
          <li><a href="#maincontent" onclick="openpage('work')">工作情况</a></li>
          <li><a href="#maincontent" onclick="openpage('personal')">个人信息</a></li>
        </ul>
        <c:if test="${info==false }">
          <form action="bbs!saveContact.action" method="post">
            <input value="17b588b1" name="formhash" type="hidden">
            <table class="tfm" id="profilelist" cellpadding="0"
              cellspacing="0">
              <tbody>
                <tr id="tr_mobile">
                  <th id="th_mobile">手机</th>
                  <td id="td_mobile"><input name="mobile"
                    id="mobile" class="px"
                    value="${userinfo2.umobile.substring(2) }"
                    tabindex="1" type="text">
                    <div class="rq mtn" id="showerror_mobile"></div>
                    <p class="d"></p></td>
                  <td class="p"><select name="privacy_mobile">
                      <option value="0">公开</option>
                      <option value="1">好友可见</option>
                      <option value="3">保密</option>
                  </select></td>
                </tr>
                <tr id="tr_qq">
                  <th id="th_qq">QQ</th>
                  <td id="td_qq"><input name="qq" id="qq"
                    class="px" value="" tabindex="1" type="text">
                    <div class="rq mtn" id="showerror_qq"></div>
                    <p class="d"></p></td>
                  <td class="p"><select name="privacy_qq">
                      <option value="0">公开</option>
                      <option value="1">好友可见</option>
                      <option value="3">保密</option>
                  </select></td>
                </tr>
                <tr id="tr_field1">
                  <th id="th_field1">Email</th>
                  <td id="td_field1"><input name="field1"
                    id="field1" class="px" value="" tabindex="1"
                    type="text">
                    <div class="rq mtn" id="showerror_field1"></div>
                    <p class="d"></p></td>
                  <td class="p"><select name="privacy_field1">
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
                  <td class="p"><select name="privacy_telephone">
                      <option value="0">公开</option>
                      <option value="1">好友可见</option>
                      <option value="3">保密</option>
                  </select></td>
                </tr>
                <tr id="tr_msn">
                  <th id="th_msn">MSN</th>
                  <td id="td_msn"><input name="msn" id="msn"
                    class="px" value="" tabindex="1" type="text">
                    <div class="rq mtn" id="showerror_msn"></div>
                    <p class="d"></p></td>
                  <td class="p"><select name="privacy_msn">
                      <option value="0">公开</option>
                      <option value="1">好友可见</option>
                      <option value="3">保密</option>
                  </select></td>
                </tr>
                <tr id="tr_taobao">
                  <th id="th_taobao">阿里旺旺</th>
                  <td id="td_taobao"><input name="taobao"
                    id="taobao" class="px" value="" tabindex="1"
                    type="text">
                    <div class="rq mtn" id="showerror_taobao"></div>
                    <p class="d"></p></td>
                  <td class="p"><select name="privacy_taobao">
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
        </c:if>
        <c:if test="${info==true }">
          <form action="bbs!saveContact.action" method="post">
            <input value="17b588b1" name="formhash" type="hidden">
            <table class="tfm" id="profilelist" cellpadding="0"
              cellspacing="0">
              <tbody>
                <tr id="tr_mobile">
                  <th id="th_mobile">手机</th>
                  <td id="td_mobile"><input name="mobile"
                    id="mobile" class="px"
                    value="${userinfo2.umobile.substring(2) }"
                    tabindex="1" type="text">
                    <div class="rq mtn" id="showerror_mobile"></div>
                    <p class="d"></p></td>
                  <td class="p"><select name="privacy_mobile">
                      <c:if
                        test="${userinfo2.umobile.substring(0, 1)=='0' }">
                        <option value="0" selected="selected">公开</option>
                        <option value="1">好友可见</option>
                        <option value="3">保密</option>
                      </c:if>
                      <c:if
                        test="${userinfo2.umobile.substring(0, 1)=='1' }">
                        <option value="0">公开</option>
                        <option value="1" selected="selected">好友可见</option>
                        <option value="3">保密</option>
                      </c:if>
                      <c:if
                        test="${userinfo2.umobile.substring(0, 1)=='3' }">
                        <option value="0">公开</option>
                        <option value="1">好友可见</option>
                        <option value="3" selected="selected">保密</option>
                      </c:if>
                  </select></td>
                </tr>
                <tr id="tr_qq">
                  <th id="th_qq">QQ</th>
                  <td id="td_qq"><input name="qq" id="qq"
                    class="px" value="${userinfo2.uqq.substring(2) }"
                    tabindex="1" type="text">
                    <div class="rq mtn" id="showerror_qq"></div>
                    <p class="d"></p></td>
                  <td class="p"><select name="privacy_qq">
                      <c:if
                        test="${userinfo2.uqq.substring(0, 1)=='0' }">
                        <option value="0" selected="selected">公开</option>
                        <option value="1">好友可见</option>
                        <option value="3">保密</option>
                      </c:if>
                      <c:if
                        test="${userinfo2.uqq.substring(0, 1)=='1' }">
                        <option value="0">公开</option>
                        <option value="1" selected="selected">好友可见</option>
                        <option value="3">保密</option>
                      </c:if>
                      <c:if
                        test="${userinfo2.uqq.substring(0, 1)=='3' }">
                        <option value="0">公开</option>
                        <option value="1">好友可见</option>
                        <option value="3" selected="selected">保密</option>
                      </c:if>
                  </select></td>
                </tr>
                <tr id="tr_field1">
                  <th id="th_field1">Email</th>
                  <td id="td_field1"><input name="field1"
                    id="field1" class="px"
                    value="${userinfo2.uemail.substring(2) }"
                    tabindex="1" type="text">
                    <div class="rq mtn" id="showerror_field1"></div>
                    <p class="d"></p></td>
                  <td class="p"><select name="privacy_field1">
                      <c:if
                        test="${userinfo2.uemail.substring(0, 1)=='0' }">
                        <option value="0" selected="selected">公开</option>
                        <option value="1">好友可见</option>
                        <option value="3">保密</option>
                      </c:if>
                      <c:if
                        test="${userinfo2.uemail.substring(0, 1)=='1' }">
                        <option value="0">公开</option>
                        <option value="1" selected="selected">好友可见</option>
                        <option value="3">保密</option>
                      </c:if>
                      <c:if
                        test="${userinfo2.uemail.substring(0, 1)=='3' }">
                        <option value="0">公开</option>
                        <option value="1">好友可见</option>
                        <option value="3" selected="selected">保密</option>
                      </c:if>
                  </select></td>
                </tr>
                <tr id="tr_telephone">
                  <th id="th_telephone">固定电话</th>
                  <td id="td_telephone"><input name="telephone"
                    id="telephone" class="px"
                    value="${userinfo2.utelephone.substring(2) }"
                    tabindex="1" type="text">
                    <div class="rq mtn" id="showerror_telephone"></div>
                    <p class="d"></p></td>
                  <td class="p"><select name="privacy_telephone">
                      <c:if
                        test="${userinfo2.utelephone.substring(0, 1)=='0' }">
                        <option value="0" selected="selected">公开</option>
                        <option value="1">好友可见</option>
                        <option value="3">保密</option>
                      </c:if>
                      <c:if
                        test="${userinfo2.utelephone.substring(0, 1)=='1' }">
                        <option value="0">公开</option>
                        <option value="1" selected="selected">好友可见</option>
                        <option value="3">保密</option>
                      </c:if>
                      <c:if
                        test="${userinfo2.utelephone.substring(0, 1)=='3' }">
                        <option value="0">公开</option>
                        <option value="1">好友可见</option>
                        <option value="3" selected="selected">保密</option>
                      </c:if>
                  </select></td>
                </tr>
                <tr id="tr_msn">
                  <th id="th_msn">MSN</th>
                  <td id="td_msn"><input name="msn" id="msn"
                    class="px" value="${userinfo2.umsn.substring(2) }"
                    tabindex="1" type="text">
                    <div class="rq mtn" id="showerror_msn"></div>
                    <p class="d"></p></td>
                  <td class="p"><select name="privacy_msn">
                      <c:if
                        test="${userinfo2.umsn.substring(0, 1)=='0' }">
                        <option value="0" selected="selected">公开</option>
                        <option value="1">好友可见</option>
                        <option value="3">保密</option>
                      </c:if>
                      <c:if
                        test="${userinfo2.umsn.substring(0, 1)=='1' }">
                        <option value="0">公开</option>
                        <option value="1" selected="selected">好友可见</option>
                        <option value="3">保密</option>
                      </c:if>
                      <c:if
                        test="${userinfo2.umsn.substring(0, 1)=='3' }">
                        <option value="0">公开</option>
                        <option value="1">好友可见</option>
                        <option value="3" selected="selected">保密</option>
                      </c:if>
                  </select></td>
                </tr>
                <tr id="tr_taobao">
                  <th id="th_taobao">阿里旺旺</th>
                  <td id="td_taobao"><input name="taobao"
                    id="taobao" class="px"
                    value="${userinfo2.utaobao.substring(2) }"
                    tabindex="1" type="text">
                    <div class="rq mtn" id="showerror_taobao"></div>
                    <p class="d"></p></td>
                  <td class="p"><select name="privacy_taobao">
                      <c:if
                        test="${userinfo2.utaobao.substring(0, 1)=='0' }">
                        <option value="0" selected="selected">公开</option>
                        <option value="1">好友可见</option>
                        <option value="3">保密</option>
                      </c:if>
                      <c:if
                        test="${userinfo2.utaobao.substring(0, 1)=='1' }">
                        <option value="0">公开</option>
                        <option value="1" selected="selected">好友可见</option>
                        <option value="3">保密</option>
                      </c:if>
                      <c:if
                        test="${userinfo2.utaobao.substring(0, 1)=='3' }">
                        <option value="0">公开</option>
                        <option value="1">好友可见</option>
                        <option value="3" selected="selected">保密</option>
                      </c:if>
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
        </c:if>

      </div>
    </div>
    <div class="appl" style="margin: 0 auto; text-align: center">
      <div class="h-home-left">
        <h2 class="mt bbda">设置</h2>
        <ul>
          <li><a href="#maincontent" onclick="openpage('img')">修改头像</a></li>
          <li class="a"><a href="#maincontent"
            onclick="openpage('base')">个人资料</a></li>
          <li><a href="#maincontent">积分</a></li>
          <li><a href="#maincontent">用户组</a></li>
          <li><a href="#maincontent">隐私筛选</a></li>
          <li><a href="#maincontent">密码安全</a></li>
          <li><a href="#maincontent">QQ绑定</a></li>
        </ul>
      </div>
    </div>
  </div>
</body>
