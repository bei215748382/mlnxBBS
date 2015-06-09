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
          <li><a href="#maincontent" onclick="openpage('work')">工作情况</a></li>
          <li class="a"><a href="#maincontent">个人信息</a></li>
        </ul>
        <iframe id="frame_profile" name="frame_profile"
          style="display: none"></iframe>
        <c:if test="${info==false }">
          <form action="bbs!savePersonal.action" method="post">
            <input type="hidden" value="b79f7eb1" name="formhash" />
            <table cellspacing="0" cellpadding="0" class="tfm"
              id="profilelist">
              <tr id="tr_address">
                <th id="th_address">邮寄地址</th>
                <td id="td_address"><input type="text"
                  name="address" id="address" class="px" value=""
                  tabindex="1" />
                  <div class="rq mtn" id="showerror_address"></div>
                  <p class="d"></p></td>
                <td class="p"><select name="privacy_address">
                    <option value="0">公开</option>
                    <option value="1">好友可见</option>
                    <option value="3">保密</option>
                </select></td>
              </tr>
              <tr id="tr_zipcode">
                <th id="th_zipcode">邮编</th>
                <td id="td_zipcode"><input type="text"
                  name="zipcode" id="zipcode" class="px" value=""
                  tabindex="1" />
                  <div class="rq mtn" id="showerror_zipcode"></div>
                  <p class="d"></p></td>
                <td class="p"><select name="privacy_zipcode">
                    <option value="0">公开</option>
                    <option value="1">好友可见</option>
                    <option value="3">保密</option>
                </select></td>
              </tr>
              <tr id="tr_bio">
                <th id="th_bio">自我介绍</th>
                <td id="td_bio"><textarea name="bio" id="bio"
                    class="pt" rows="3" cols="40" tabindex="1"></textarea>
                  <div class="rq mtn" id="showerror_bio"></div>
                  <p class="d"></p></td>
                <td class="p"><select name="privacy_bio">
                    <option value="0">公开</option>
                    <option value="1">好友可见</option>
                    <option value="3">保密</option>
                </select></td>
              </tr>

              <tr id="tr_interest">
                <th id="th_interest">兴趣爱好</th>
                <td id="td_interest"><textarea name="interest"
                    id="interest" class="pt" rows="3" cols="40"
                    tabindex="1"></textarea>
                  <div class="rq mtn" id="showerror_interest"></div>
                  <p class="d"></p></td>
                <td class="p"><select name="privacy_interest">
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
          <form action="bbs!savePersonal.action" method="post">
            <input type="hidden" value="b79f7eb1" name="formhash" />
            <table cellspacing="0" cellpadding="0" class="tfm"
              id="profilelist">
              <tr id="tr_address">
                <th id="th_address">邮寄地址</th>
                <td id="td_address"><input type="text"
                  name="address" id="address" class="px"
                  value="${userinfo5.uaddress.substring(2) }"
                  tabindex="1" />
                  <div class="rq mtn" id="showerror_address"></div>
                  <p class="d"></p></td>
                <td class="p"><select name="privacy_address">
                    <c:if
                      test="${userinfo5.uaddress.substring(0, 1)=='0' }">
                      <option value="0" selected="selected">公开</option>
                      <option value="1">好友可见</option>
                      <option value="3">保密</option>
                    </c:if>
                    <c:if
                      test="${userinfo5.uaddress.substring(0, 1)=='1' }">
                      <option value="0">公开</option>
                      <option value="1" selected="selected">好友可见</option>
                      <option value="3">保密</option>
                    </c:if>
                    <c:if
                      test="${userinfo5.uaddress.substring(0, 1)=='3' }">
                      <option value="0">公开</option>
                      <option value="1">好友可见</option>
                      <option value="3" selected="selected">保密</option>
                    </c:if>
                </select></td>
              </tr>
              <tr id="tr_zipcode">
                <th id="th_zipcode">邮编</th>
                <td id="td_zipcode"><input type="text"
                  name="zipcode" id="zipcode" class="px"
                  value="${userinfo5.uzipcode.substring(2) }"
                  tabindex="1" />
                  <div class="rq mtn" id="showerror_zipcode"></div>
                  <p class="d"></p></td>
                <td class="p"><select name="privacy_zipcode">
                    <c:if
                      test="${userinfo5.uzipcode.substring(0, 1)=='0' }">
                      <option value="0" selected="selected">公开</option>
                      <option value="1">好友可见</option>
                      <option value="3">保密</option>
                    </c:if>
                    <c:if
                      test="${userinfo5.uzipcode.substring(0, 1)=='1' }">
                      <option value="0">公开</option>
                      <option value="1" selected="selected">好友可见</option>
                      <option value="3">保密</option>
                    </c:if>
                    <c:if
                      test="${userinfo5.uzipcode.substring(0, 1)=='3' }">
                      <option value="0">公开</option>
                      <option value="1">好友可见</option>
                      <option value="3" selected="selected">保密</option>
                    </c:if>
                </select></td>
              </tr>
              <tr id="tr_bio">
                <th id="th_bio">自我介绍</th>
                <td id="td_bio"><textarea name="bio" id="bio"
                    class="pt" rows="3" cols="40" tabindex="1">${userinfo5.ubio.substring(2) }</textarea>
                  <div class="rq mtn" id="showerror_bio"></div>
                  <p class="d"></p></td>
                <td class="p"><select name="privacy_bio">
                    <c:if test="${userinfo5.ubio.substring(0, 1)=='0' }">
                      <option value="0" selected="selected">公开</option>
                      <option value="1">好友可见</option>
                      <option value="3">保密</option>
                    </c:if>
                    <c:if test="${userinfo5.ubio.substring(0, 1)=='1' }">
                      <option value="0">公开</option>
                      <option value="1" selected="selected">好友可见</option>
                      <option value="3">保密</option>
                    </c:if>
                    <c:if test="${userinfo5.ubio.substring(0, 1)=='3' }">
                      <option value="0">公开</option>
                      <option value="1">好友可见</option>
                      <option value="3" selected="selected">保密</option>
                    </c:if>
                </select></td>
              </tr>

              <tr id="tr_interest">
                <th id="th_interest">兴趣爱好</th>
                <td id="td_interest"><textarea name="interest"
                    id="interest" class="pt" rows="3" cols="40"
                    tabindex="1">${userinfo5.uinterest.substring(2) }</textarea>
                  <div class="rq mtn" id="showerror_interest"></div>
                  <p class="d"></p></td>
                <td class="p"><select name="privacy_interest">
                    <c:if
                      test="${userinfo5.uinterest.substring(0, 1)=='0' }">
                      <option value="0" selected="selected">公开</option>
                      <option value="1">好友可见</option>
                      <option value="3">保密</option>
                    </c:if>
                    <c:if
                      test="${userinfo5.uinterest.substring(0, 1)=='1' }">
                      <option value="0">公开</option>
                      <option value="1" selected="selected">好友可见</option>
                      <option value="3">保密</option>
                    </c:if>
                    <c:if
                      test="${userinfo5.uinterest.substring(0, 1)=='3' }">
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