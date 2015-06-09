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
          <li class="a"><a href="#maincontent">教育情况</a></li>
          <li><a href="#maincontent" onclick="openpage('work')">工作情况</a></li>
          <li><a href="#maincontent" onclick="openpage('personal')">个人信息</a></li>
        </ul>
        <c:if test="${info==false }">
          <form action="bbs!saveEducation.action" method="post">
            <input type="hidden" value="b79f7eb1" name="formhash" />
            <table cellspacing="0" cellpadding="0" class="tfm"
              id="profilelist">
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
                <td class="p"><select name="privacy_education">
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
                <td class="p"><select name="privacy_graduateschool">
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
          <form action="bbs!saveEducation.action" method="post">
            <input type="hidden" value="b79f7eb1" name="formhash" />
            <table cellspacing="0" cellpadding="0" class="tfm"
              id="profilelist">
              <tr id="tr_education">
                <th id="th_education">学历</th>
                <td id="td_education"><select name="education"
                  id="education" class="ps" tabindex="1">
                    <c:if
                      test="${userinfo3.ueducation.substring(2)=='博士' }">
                      <option value="博士" selected="selected">博士</option>
                      <option value="硕士">硕士</option>
                      <option value="本科">本科</option>
                      <option value="专科">专科</option>
                      <option value="中学">中学</option>
                      <option value="小学">小学</option>
                      <option value="其它">其它</option>
                    </c:if>
                    <c:if
                      test="${userinfo3.ueducation.substring(2)=='硕士' }">
                      <option value="博士">博士</option>
                      <option value="硕士" selected="selected">硕士</option>
                      <option value="本科">本科</option>
                      <option value="专科">专科</option>
                      <option value="中学">中学</option>
                      <option value="小学">小学</option>
                      <option value="其它">其它</option>
                    </c:if>
                    <c:if
                      test="${userinfo3.ueducation.substring(2)=='本科' }">
                      <option value="博士">博士</option>
                      <option value="硕士">硕士</option>
                      <option value="本科" selected="selected">本科</option>
                      <option value="专科">专科</option>
                      <option value="中学">中学</option>
                      <option value="小学">小学</option>
                      <option value="其它">其它</option>
                    </c:if>
                    <c:if
                      test="${userinfo3.ueducation.substring(2)=='专科' }">
                      <option value="博士">博士</option>
                      <option value="硕士">硕士</option>
                      <option value="本科">本科</option>
                      <option value="专科" selected="selected">专科</option>
                      <option value="中学">中学</option>
                      <option value="小学">小学</option>
                      <option value="其它">其它</option>
                    </c:if>
                    <c:if
                      test="${userinfo3.ueducation.substring(2)=='中学' }">
                      <option value="博士">博士</option>
                      <option value="硕士">硕士</option>
                      <option value="本科">本科</option>
                      <option value="专科">专科</option>
                      <option value="中学" selected="selected">中学</option>
                      <option value="小学">小学</option>
                      <option value="其它">其它</option>
                    </c:if>
                    <c:if
                      test="${userinfo3.ueducation.substring(2)=='小学' }">
                      <option value="博士">博士</option>
                      <option value="硕士">硕士</option>
                      <option value="本科">本科</option>
                      <option value="专科">专科</option>
                      <option value="中学">中学</option>
                      <option value="小学" selected="selected">小学</option>
                      <option value="其它">其它</option>
                    </c:if>
                    <c:if
                      test="${userinfo3.ueducation.substring(2)=='其它' }">
                      <option value="博士">博士</option>
                      <option value="硕士">硕士</option>
                      <option value="本科">本科</option>
                      <option value="专科">专科</option>
                      <option value="中学">中学</option>
                      <option value="小学">小学</option>
                      <option value="其它" selected="selected">其它</option>
                    </c:if>


                </select>
                  <div class="rq mtn" id="showerror_education"></div>
                  <p class="d"></p></td>
                <td class="p"><select name="privacy_education">
                    <c:if
                      test="${userinfo3.ueducation.substring(0, 1)=='0' }">
                      <option value="0" selected="selected">公开</option>
                      <option value="1">好友可见</option>
                      <option value="3">保密</option>
                    </c:if>
                    <c:if
                      test="${userinfo3.ueducation.substring(0, 1)=='1' }">
                      <option value="0">公开</option>
                      <option value="1" selected="selected">好友可见</option>
                      <option value="3">保密</option>
                    </c:if>
                    <c:if
                      test="${userinfo3.ueducation.substring(0, 1)=='3' }">
                      <option value="0">公开</option>
                      <option value="1">好友可见</option>
                      <option value="3" selected="selected">保密</option>
                    </c:if>
                </select></td>
              </tr>
              <tr id="tr_graduateschool">
                <th id="th_graduateschool">毕业学校</th>
                <td id="td_graduateschool"><input type="text"
                  name="graduateschool" id="graduateschool" class="px"
                  value="${userinfo3.uschool.substring(2) }"
                  tabindex="1" />
                  <div class="rq mtn" id="showerror_graduateschool"></div>
                  <p class="d"></p></td>
                <td class="p"><select name="privacy_graduateschool">
                    <c:if
                      test="${userinfo3.uschool.substring(0, 1)=='0' }">
                      <option value="0" selected="selected">公开</option>
                      <option value="1">好友可见</option>
                      <option value="3">保密</option>
                    </c:if>
                    <c:if
                      test="${userinfo3.uschool.substring(0, 1)=='1' }">
                      <option value="0">公开</option>
                      <option value="1" selected="selected">好友可见</option>
                      <option value="3">保密</option>
                    </c:if>
                    <c:if
                      test="${userinfo3.uschool.substring(0, 1)=='3' }">
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