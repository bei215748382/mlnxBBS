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
          <li><a href="#maincontent" onclick="openpage('contact')">联系方式</a></li>
          <li><a href="#maincontent"
            onclick="openpage('education')">教育情况</a></li>
          <li class="a"><a href="#maincontent">工作情况</a></li>
          <li><a href="#maincontent" onclick="openpage('personal')">个人信息</a></li>
        </ul>
        <iframe id="frame_profile" name="frame_profile"
          style="display: none"></iframe>
        <c:if test="${info==false }">
          <form action="bbs!saveWork.action" method="post">
            <input type="hidden" value="b79f7eb1" name="formhash" />
            <table cellspacing="0" cellpadding="0" class="tfm"
              id="profilelist">
              <tr id="tr_company">
                <th id="th_company">公司</th>
                <td id="td_company"><input type="text"
                  name="company" id="company" class="px" value=""
                  tabindex="1" />
                  <div class="rq mtn" id="showerror_company"></div>
                  <p class="d"></p></td>
                <td class="p"><select name="privacy_company">
                    <option value="0" selected="selected">公开</option>
                    <option value="1">好友可见</option>
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
                <td class="p"><select name="privacy_occupation">
                    <option value="0" selected="selected">公开</option>
                    <option value="1">好友可见</option>
                    <option value="3">保密</option>
                </select></td>
              </tr>
              <tr id="tr_position">
                <th id="th_position">职位</th>
                <td id="td_position"><input type="text"
                  name="position" id="position" class="px" value=""
                  tabindex="1" />
                  <div class="rq mtn" id="showerror_position"></div>
                  <p class="d"></p></td>
                <td class="p"><select name="privacy_position">
                    <option value="0">公开</option>
                    <option value="1">好友可见</option>
                    <option value="3">保密</option>
                </select></td>
              </tr>
              <tr id="tr_revenue">
                <th id="th_revenue">年收入</th>
                <td id="td_revenue"><input type="text"
                  name="revenue" id="revenue" class="px" value=""
                  tabindex="1" />
                  <div class="rq mtn" id="showerror_revenue"></div>
                  <p class="d"></p></td>
                <td class="p"><select name="privacy_revenue">
                    <option value="0">公开</option>
                    <option value="1">好友可见</option>
                    <option value="3">保密</option>
                </select></td>
              </tr>
              <tr>
                <th>&nbsp;</th>
                <td colspan="2"><input type="hidden"
                  name="profilesubmit" value="true" />
                  <button type="submit" name="profilesubmitbtn"
                    id="profilesubmitbtn" value="true" class="pn pnc">
                    <strong>保存</strong>
                  </button> <span id="submit_result" class="rq"></span></td>
              </tr>
            </table>
          </form>
        </c:if>
        <c:if test="${info==true }">
          <form action="bbs!saveWork.action" method="post">
            <input type="hidden" value="b79f7eb1" name="formhash" />
            <table cellspacing="0" cellpadding="0" class="tfm"
              id="profilelist">
              <tr id="tr_company">
                <th id="th_company">公司</th>
                <td id="td_company"><input type="text"
                  name="company" id="company" class="px"
                  value="${userinfo4.ucompany.substring(2) }"
                  tabindex="1" />
                  <div class="rq mtn" id="showerror_company"></div>
                  <p class="d"></p></td>
                <td class="p"><select name="privacy_company">
                    <c:if
                      test="${userinfo4.ucompany.substring(0, 1)=='0' }">
                      <option value="0" selected="selected">公开</option>
                      <option value="1">好友可见</option>
                      <option value="3">保密</option>
                    </c:if>
                    <c:if
                      test="${userinfo4.ucompany.substring(0, 1)=='1' }">
                      <option value="0">公开</option>
                      <option value="1" selected="selected">好友可见</option>
                      <option value="3">保密</option>
                    </c:if>
                    <c:if
                      test="${userinfo4.ucompany.substring(0, 1)=='3' }">
                      <option value="0">公开</option>
                      <option value="1">好友可见</option>
                      <option value="3" selected="selected">保密</option>
                    </c:if>
                </select></td>
              </tr>
              <tr id="tr_occupation">
                <th id="th_occupation">职业</th>
                <td id="td_occupation"><input type="text"
                  name="occupation" id="occupation" class="px"
                  value="${userinfo4.uoccupation.substring(2) }"
                  tabindex="1" />
                  <div class="rq mtn" id="showerror_occupation"></div>
                  <p class="d"></p></td>
                <td class="p"><select name="privacy_occupation">
                    <c:if
                      test="${userinfo4.uoccupation.substring(0, 1)=='0' }">
                      <option value="0" selected="selected">公开</option>
                      <option value="1">好友可见</option>
                      <option value="3">保密</option>
                    </c:if>
                    <c:if
                      test="${userinfo4.uoccupation.substring(0, 1)=='1' }">
                      <option value="0">公开</option>
                      <option value="1" selected="selected">好友可见</option>
                      <option value="3">保密</option>
                    </c:if>
                    <c:if
                      test="${userinfo4.uoccupation.substring(0, 1)=='3' }">
                      <option value="0">公开</option>
                      <option value="1">好友可见</option>
                      <option value="3" selected="selected">保密</option>
                    </c:if>
                </select></td>
              </tr>
              <tr id="tr_position">
                <th id="th_position">职位</th>
                <td id="td_position"><input type="text"
                  name="position" id="position" class="px"
                  value="${userinfo4.uposition.substring(2) }"
                  tabindex="1" />
                  <div class="rq mtn" id="showerror_position"></div>
                  <p class="d"></p></td>
                <td class="p"><select name="privacy_position">
                    <c:if
                      test="${userinfo4.uposition.substring(0, 1)=='0' }">
                      <option value="0" selected="selected">公开</option>
                      <option value="1">好友可见</option>
                      <option value="3">保密</option>
                    </c:if>
                    <c:if
                      test="${userinfo4.uposition.substring(0, 1)=='1' }">
                      <option value="0">公开</option>
                      <option value="1" selected="selected">好友可见</option>
                      <option value="3">保密</option>
                    </c:if>
                    <c:if
                      test="${userinfo4.uposition.substring(0, 1)=='3' }">
                      <option value="0">公开</option>
                      <option value="1">好友可见</option>
                      <option value="3" selected="selected">保密</option>
                    </c:if>
                </select></td>
              </tr>
              <tr id="tr_revenue">
                <th id="th_revenue">年收入</th>
                <td id="td_revenue"><input type="text"
                  name="revenue" id="revenue" class="px"
                  value="${userinfo4.urevenue.substring(2) }"
                  tabindex="1" />
                  <div class="rq mtn" id="showerror_revenue"></div>
                  <p class="d"></p></td>
                <td class="p"><select name="privacy_revenue">
                    <c:if
                      test="${userinfo4.urevenue.substring(0, 1)=='0' }">
                      <option value="0" selected="selected">公开</option>
                      <option value="1">好友可见</option>
                      <option value="3">保密</option>
                    </c:if>
                    <c:if
                      test="${userinfo4.urevenue.substring(0, 1)=='1' }">
                      <option value="0">公开</option>
                      <option value="1" selected="selected">好友可见</option>
                      <option value="3">保密</option>
                    </c:if>
                    <c:if
                      test="${userinfo4.urevenue.substring(0, 1)=='3' }">
                      <option value="0">公开</option>
                      <option value="1">好友可见</option>
                      <option value="3" selected="selected">保密</option>
                    </c:if>
                </select></td>
              </tr>
              <tr>
                <th>&nbsp;</th>
                <td colspan="2"><input type="hidden"
                  name="profilesubmit" value="true" />
                  <button type="submit" name="profilesubmitbtn"
                    id="profilesubmitbtn" value="true" class="pn pnc">
                    <strong>保存</strong>
                  </button> <span id="submit_result" class="rq"></span></td>
              </tr>
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
