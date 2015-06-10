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
<title>美灵思帖子内容</title>
<link rel="icon" href="images/logo.png">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css"
  href="CLEditor1_3_0/jquery.cleditor.css" />
<!-- HTML5 Shim 和 Respond.js 用于让 IE8 支持 HTML5元素和媒体查询 -->
<!-- 注意： 如果通过 file://  引入 Respond.js 文件，则该文件无法起效果 -->
<!--[if lt IE 9]>
         <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
         <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
      <![endif]-->
<link href="css/bbs_content.css" type="text/css" rel="stylesheet" />
<link href="css/font-awesome.css" type="text/css" rel="stylesheet" />
</head>
<body>
<jsp:include page="jsp/header.jsp"></jsp:include>
  <div class="container">
    <div class="row">
      <div class="col-sm-9">
        <div class="bg-white border-blue">
          <div id="content_title" class="pd20">
            <a><img src="/docs/upload/${post.user.uicon2 }" alt="头像"
              width=80px /></a>
            <p style="margin: 22px;">${post.poTitle }</p>
            <a href="#" style="margin: 0px 15px; width: 50%;">
              发帖人：${post.user.uagname }</a>
            <div style="float: right;">
              <f:formatDate value="${post.poTime }"
                pattern="yyyy-MM-dd HH:mm:ss" />
            </div>
          </div>
          <div class="pd20" style="padding-left: 80px;">
            ${post.poContent }</div>

          <div class="pd20" style="margin: 30px;">
            <h3 class="pbm" style="font-size: 1em;">相关帖子</h3>
            <ul id="rel-bbs">
              <li>相关帖子1</li>
              <li>相关帖子2</li>
            </ul>
          </div>
          <div class="h-forum-do">
            <div class="h-forum-do">
              <c:if test="${praise==0 }">
                <a href="bbs!showBBSLogin.action" id="do_praise"
                  class="haspraised"><button
                    class="post-content-btn">
                    <i class="fa fa-thumbs-up"></i>赞
                  </button></a>
                <a href="bbs!showBBSLogin.action" id="do_reward"
                  class="hasreward"><button class="post-content-btn">
                    <i class="fa fa-database"></i>打赏
                  </button></a>
                <a href="bbs!showBBSLogin.action" id="do_favorite"
                  class="hasfavorite"><button
                    class="post-content-btn">
                    <i class="fa fa-star"></i>收藏
                  </button></a>
              </c:if>

              <c:if test="${praise==1 }">
                <a id="do_praise" class="haspraised"><button
                    class="post-content-btn" id="doPraise"
                    onclick="doPraise('${sessionScope.uId }', '${post.poId }')">
                    <i class="fa fa-thumbs-up"></i>赞
                  </button></a>
                <a id="do_reward"
                  onclick="doReward('${sessionScope.uId }', '${post.user.uid }')"
                  class="hasreward"><button class="post-content-btn">
                    <i class="fa fa-database"></i>打赏
                  </button></a>
              </c:if>

              <c:if test="${praise==2 }">
                <a id="do_praise" class="haspraised"><button
                    class="post-content-btn" disabled="disabled">
                    <i class="fa fa-thumbs-up"></i>已赞
                  </button></a>
                <a id="do_reward"
                  onclick="doReward('${sessionScope.uId }', '${post.user.uid }')"
                  class="hasreward"><button class="post-content-btn">
                    <i class="fa fa-database"></i>打赏
                  </button></a>
              </c:if>

              <c:if test="${collection==1 }">
                <a id="do_favorite"
                  onclick="doCollection('${sessionScope.uId }', '${post.poId}')"
                  class="hasfavorite"><button id="doCollection"
                    class="post-content-btn">
                    <i class="fa fa-star"></i>收藏
                  </button></a>
              </c:if>

              <c:if test="${collection==2 }">
                <a id="do_favorite" class="hasfavorite"><button
                    class="post-content-btn" disabled="disabled">
                    <i class="fa fa-star"></i>已收藏
                  </button></a>
              </c:if>

            </div>
            <div>
              <span style="color: red" id="rewardPro" hidden="hidden"></span>
            </div>
          </div>
          <div>
            <div class="tshare">
              <!-- JiaThis Button BEGIN -->
              <div class="jiathis_style">
                <span class="jiathis_txt">分享到：</span> <a
                  class="jiathis_button_tools_1"></a> <a
                  class="jiathis_button_tools_2"></a> <a
                  class="jiathis_button_tools_3"></a> <a
                  class="jiathis_button_tools_4"></a> <a
                  href="http://www.jiathis.com/share"
                  class="jiathis jiathis_txt jiathis_separator jtico jtico_jiathis"
                  target="_blank">更多</a> <a
                  class="jiathis_counter_style"></a>
              </div>
              <script type="text/javascript"
                src="http://v3.jiathis.com/code/jia.js" charset="utf-8"></script>
              <!-- JiaThis Button END -->
            </div>
          </div>
          <div>
            <div class="pob cl" style="margin-bottom: 20px">
               <a class="fastre" href="#doResponse">回复</a>
                <a style="display: none;" href="javascript:;"
                  id="mgc_post_88879" onmouseover="showMenu(this.id)"
                  class="showmenu"></a> <a href="javascript:;"
                  onclick="showWindow('miscreport88879', 'misc.php?mod=report&amp;rtype=post&amp;rid=88879&amp;tid=7492&amp;fid=2', 'get', -1);return false;">举报</a>
            </div>

          </div>
        </div>

        <div id="showRsp">
          <div class="bg-white comment border-blue">
            <ul class="list-unstyled">
              <c:forEach items="${responses }" var="rsp">
                <li><div class="col-sm-9 bg-white pd15">
                    <a href="#" style="float: left;"><img
                      src="/docs/upload/${rsp[1].uicon2 }" alt="头像"
                      style="width: 60px" /></a>
                    <p>
                      <a href="#" style="margin: 0px 15px;">${rsp[1].uagname
                        }</a>

                    </p>
                  </div>
                  <div class="col-sm-3 bg-white pd15 ">
                    <div style="height: 68px; float: right;">
                      <f:formatDate value="${rsp[3] }"
                        pattern="yyyy-MM-dd HH:mm:ss" />
                      &emsp; <span id="position">${rsp[0] }楼</span>
                    </div>
                  </div>
                  <div class="pd15" style="margin-left: 75px">${rsp[2]
                    }</div>
                  <div  class="pd15" style="margin-left: 75px">
                    <c:set scope="page" value="0" var="num"></c:set>
                    <c:forEach items="${childResponses }" var="cRsp">
                      <c:if test="${cRsp[0] == rsp[0] }">
                        <c:if test="${num < 5 }">
                          <div  class="pd15 bg-grey">
                            <c:if test="${sessionScope.uId==null }">
                              <img
                                src="/docs/upload/${cRsp[1].uicon3
                        }"
                                style="width: 16px" />
                              <a onclick="goLogin()"
                                style="cursor: pointer;">${cRsp[1].uagname
                                }</a>&emsp;To&emsp;<img
                                src="/docs/upload/${cRsp[2].uicon3
                        }"
                                style="width: 16px" />
                              <a onclick="goLogin()"
                                style="cursor: pointer;">${cRsp[2].uagname
                                }</a>：${cRsp[3] }&emsp;
                          <f:formatDate value="${cRsp[4] }"
                                pattern="yyyy-MM-dd HH:mm:ss" />
                            </c:if>
                            <c:if test="${sessionScope.uId!=null }">
                              <img
                                src="/docs/upload/${cRsp[1].uicon3
                        }"
                                style="width: 16px" />
                              <a
                                onclick="showRspToU('${cRsp[1].uagname
                            }', '${rsp[0] }', '${post.poId }', '${cRsp[1].uid }')"
                                style="cursor: pointer;">${cRsp[1].uagname
                                }</a>&nbsp;回复&nbsp;<img
                                src="/docs/upload/${cRsp[2].uicon3
                        }"
                                style="width: 16px" />
                              <a
                                onclick="showRspToU('${cRsp[2].uagname
                            }', '${rsp[0] }', '${post.poId }', '${cRsp[2].uid }')"
                                style="cursor: pointer;">${cRsp[2].uagname
                                }</a>：${cRsp[3] }&emsp;
                          <f:formatDate value="${cRsp[4] }"
                                pattern="yyyy-MM-dd HH:mm:ss" />
                            </c:if>
                          </div>
                        </c:if>
                        <c:set scope="page" value="${num+1 }" var="num"></c:set>
                      </c:if>
                    </c:forEach>

                    <input type="hidden" id="clickNum${rsp[0] }" value=1 />

                    <div id="continue${rsp[0] }"></div>

                    <div id="showMore${rsp[0] }">
                      <c:if test="${num>5 }">
                        <a style="cursor: pointer;"
                          onclick="showMore('${post.poId}', '${rsp[0] }')">显示更多</a>
                      </c:if>
                    </div>

                    <div>
                      <span id="rspToU${rsp[0] }"></span><span
                        id="checkRspToU${rsp[0] }"></span>
                    </div>
                  </div>
                  <div class="pd15 border-bottom">
                    <c:if test="${sessionScope.uId==null }">
                      <div class="pob cl " style="margin-bottom: 20px">
                        <em> <a href="#">举报</a> <a
                          onclick="goLogin()" style="cursor: pointer;">回复</a>
                          <a title="2 人 支持" class="replyadd" href="#">支持
                            <span id="review_support_90172">2</span>
                        </a> <a title="0 人 反对" class="replysubtract"
                          href="#">反对 <span
                            id="review_against_90172">0</span>
                        </a>
                        </em>
                      </div>
                    </c:if>
                    <c:if test="${sessionScope.uId!=null }">
                      <div class="pob cl " style="margin-bottom: 20px">
                        <em> <a href="#">举报</a> <a
                          style="cursor: pointer;"
                          onclick="showRspToU('${rsp[1].uagname
                        }', '${rsp[0] }', '${post.poId }', '${rsp[1].uid }')">回复</a>
                          <a title="2 人 支持" class="replyadd" href="#">支持
                            <span id="review_support_90172">2</span>
                        </a> <a title="0 人 反对" class="replysubtract"
                          href="#">反对 <span
                            id="review_against_90172">0</span>
                        </a>
                        </em>
                      </div>
                    </c:if>
                  </div></li>
              </c:forEach>
            </ul>
          </div>
          <c:if test="${existRsp==true}">
            <div align="center" style="margin-top: 15px">
              <a style="cursor: pointer; text-decoration: none;"
                onclick="queryRsp('1')">首页</a> &emsp;

              <c:if test="${pb.totalPageCount<=5 }">
                <c:set var="i" value="1"></c:set>
                <c:forEach begin="0" end="${pb.totalPageCount-1 }">
                  <c:if test="${i==1 }">
                    <span style="color: gray">${i }</span>
                    &emsp;
                  </c:if>
                  <c:if test="${i!=1 }">
                    <a style="cursor: pointer; text-decoration: none;"
                      onclick="queryRsp(${i })">${i }</a>
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
                      onclick="queryRsp(${i })">${i }</a>
                    &emsp;
                  </c:if>
                  <c:set var="i" value="${i+1}"></c:set>
                </c:forEach>
              </c:if>
              <a style="cursor: pointer; text-decoration: none;"
                onclick="queryRsp(${pb.totalPageCount})">末页</a>
            </div>
          </c:if>

        </div>
        <input type="hidden" id="poId" value="${post.poId }">


        <div id="f_pst" class="pl bm bmw bg-white pd20">
          <div id="doResponse">
            <textarea id="response" name="response"></textarea>

            <span id="checkResponse"></span> <br>
            <c:if test="${sessionScope.uId==null }">

              <a onclick="goLogin()" style="cursor: pointer;">回复请先登录！</a>

            </c:if>
            <c:if test="${sessionScope.uId!=null }">
              <input type="submit" value="回复"
                onclick="doResponse(${post.poId}, 0, 0)">
            </c:if>

          </div>
        </div>

      </div>

      <div class="col-sm-3">
        <div class="bg-white border-blue" style="height: 100%;">
          <div class="pd15">
            <span class="topic">xxx的最新主题</span><br>
            <hr>
            <ul class="list-unstyled">
              <li>主题1</li>
              <li>主题1</li>
              <li>主题1</li>
              <li>主题1</li>
            </ul>
            <br> <br> <span class="topic">最新主题</span><br>
            <hr>
            <ul class="list-unstyled">
              <li>主题1</li>
              <li>主题1</li>
              <li>主题1</li>
              <li>主题1</li>
            </ul>
            <br> <br> <span class="topic">推荐阅读</span><br>
            <hr>
            版主： aerohobby, 风火轮<br> 简介：
            【产品讨论】是为进阶型玩家设立的一个技术交流，生活分享版块。这里有一堆志同道合的好飞友和你一起讨论各种产品话题，这里有一整支专业的技术支持团队为你答疑解惑，这里还有一群因大疆无人机相识的小伙伴们陪你分享飞行生活的点点滴滴。<br>
            ----------本版规则----------<br>
            1.转帖请注明作者，出处，请勿贴外链。如未能注明而导致的版权问题，由发帖者自行承担。<br>
            2.禁止发布人身攻击的言辞，发帖或回帖中出现严重的政治言论。<br>
            3.请勿纯表情以及其他无意义的发帖回帖，标题党或发布严重误导的帖子。<br>
            4.请勿连续转载或发表内容相似的主题，违者将直接删帖。<br> 5.请勿在标题使用大量任何无意义符号加长标题。<br>
            6.禁止在本区发布任何涉及交易信息的帖子。<br> 7.禁止一句话的水帖，以及毫无意义的灌水帖。<br>
            8.请勿发帖或回复中出现不文明用语，污言秽语等。<br>
            如发现任何内容侵犯了您的版权，请发邮件到forum@dji.com进行处理。<br>
            关于被禁言，删帖申诉建议请到社区服务版块发帖。<br>
            请大家遵守版规，违规者轻则警告扣分，重则永久禁言处理。详细信息请见《大疆社区规则》<br> <br>
            <em>推荐阅读</em>
            <hr>
            7.禁止一句话的水帖，以及毫无意义的灌水帖。<br> 8.请勿发帖或回复中出现不文明用语，污言秽语等。<br>
            如发现任何内容侵犯了您的版权，请发邮件到forum@dji.com进行处理。<br>
            关于被禁言，删帖申诉建议请到社区服务版块发帖。<br>
            请大家遵守版规，违规者轻则警告扣分，重则永久禁言处理。详细信息请见《大疆社区规则》<br>
          </div>
        </div>
      </div>

    </div>

  </div>


  <!-- jQuery (Bootstrap 的 JavaScript 插件需要引入 jQuery) -->
  <script type="text/javascript" src="js/jquery-2.0.0.min.js"></script>
  <!-- 包括所有已编译的插件 -->
  <script type="text/javascript" src="js/bootstrap.min.js"></script>
  <jsp:include page="jsp/footer.jsp"></jsp:include>
  <script type="text/javascript" src="js/mybbs.js"></script>
  <script type="text/javascript" src="CLEditor1_3_0/jquery.min.js"></script>
  <script type="text/javascript"
    src="CLEditor1_3_0/jquery.cleditor.min.js"></script>
  <script type="text/javascript">
  $(document).ready(function() {
      $("#response").cleditor({
        width:  $("#doPost").width()
          });
    });
		</script>
</body>
</html>
