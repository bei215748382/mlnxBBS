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
      <li><a href="#maincontent" onclick="load('work')">工作情况</a></li>
      <li class="a"><a href="#maincontent">个人信息</a></li>
    </ul>
    <iframe id="frame_profile" name="frame_profile"
      style="display: none"></iframe>
    <form action="home.php?mod=spacecp&ac=profile&op=info" method="post"
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
        <tr id="tr_idcardtype">
          <th id="th_idcardtype">证件类型</th>
          <td id="td_idcardtype"><input type="file" value=""
            name="idcardtype" id="idcardtype" tabindex="1" class="pf"
            style="height: 26px;" /><input type="hidden"
            name="idcardtype" value="" />
            <div class="rq mtn" id="showerror_idcardtype"></div>
            <p class="d"></p></td>
          <td class="p"><select name="privacy[idcardtype]">
              <option value="0">公开</option>
              <option value="1">好友可见</option>
              <option value="3">保密</option>
          </select></td>
        </tr>
        <tr id="tr_idcard">
          <th id="th_idcard">证件号</th>
          <td id="td_idcard"><input type="file" value=""
            name="idcard" id="idcard" tabindex="1" class="pf"
            style="height: 26px;" /><input type="hidden" name="idcard"
            value="" />
            <div class="rq mtn" id="showerror_idcard"></div>
            <p class="d"></p></td>
          <td class="p"><select name="privacy[idcard]">
              <option value="0">公开</option>
              <option value="1">好友可见</option>
              <option value="3" selected="selected">保密</option>
          </select></td>
        </tr>
        <tr id="tr_address">
          <th id="th_address">邮寄地址</th>
          <td id="td_address"><input type="text" name="address"
            id="address" class="px" value="" tabindex="1" />
            <div class="rq mtn" id="showerror_address"></div>
            <p class="d"></p></td>
          <td class="p"><select name="privacy[address]">
              <option value="0">公开</option>
              <option value="1">好友可见</option>
              <option value="3">保密</option>
          </select></td>
        </tr>
        <tr id="tr_site">
          <th id="th_site">个人主页</th>
          <td id="td_site"><input type="text" name="site" id="site"
            class="px" value="" tabindex="1" />
            <div class="rq mtn" id="showerror_site"></div>
            <p class="d"></p></td>
          <td class="p"><select name="privacy[site]">
              <option value="0">公开</option>
              <option value="1">好友可见</option>
              <option value="3">保密</option>
          </select></td>
        </tr>
        <tr id="tr_bio">
          <th id="th_bio">自我介绍</th>
          <td id="td_bio"><textarea name="bio" id="bio" class="pt"
              rows="3" cols="40" tabindex="1"></textarea>
            <div class="rq mtn" id="showerror_bio"></div>
            <p class="d"></p></td>
          <td class="p"><select name="privacy[bio]">
              <option value="0">公开</option>
              <option value="1">好友可见</option>
              <option value="3">保密</option>
          </select></td>
        </tr>
        <tr id="tr_zipcode">
          <th id="th_zipcode">邮编</th>
          <td id="td_zipcode"><input type="text" name="zipcode"
            id="zipcode" class="px" value="" tabindex="1" />
            <div class="rq mtn" id="showerror_zipcode"></div>
            <p class="d"></p></td>
          <td class="p"><select name="privacy[zipcode]">
              <option value="0">公开</option>
              <option value="1">好友可见</option>
              <option value="3">保密</option>
          </select></td>
        </tr>
        <tr id="tr_interest">
          <th id="th_interest">兴趣爱好</th>
          <td id="td_interest"><textarea name="interest"
              id="interest" class="pt" rows="3" cols="40" tabindex="1"></textarea>
            <div class="rq mtn" id="showerror_interest"></div>
            <p class="d"></p></td>
          <td class="p"><select name="privacy[interest]">
              <option value="0">公开</option>
              <option value="1">好友可见</option>
              <option value="3">保密</option>
          </select></td>
        </tr>
        <tr>
          <th id="th_sightml">个人签名</th>
          <td id="td_sightml">
            <div class="tedt">
              <div class="bar">
                <span class="y"><a href="javascript:;"
                  onclick="$('signhtmlpreview').innerHTML = bbcode2html($('sightmlmessage').value)">预览</a></span>
                <script src="static/js/seditor.js?tPF"
                  type="text/javascript"></script>
                <div class="fpd">
                  <a href="javascript:;" title="文字加粗" class="fbld"
                    onclick="seditor_insertunit('sightml', '[b]', '[/b]');doane(event);">B</a>
                  <a href="javascript:;" title="设置文字颜色" class="fclr"
                    id="sightmlforecolor"
                    onclick="showColorBox(this.id, 2, 'sightml');doane(event);">Color</a>
                  <a id="sightmlurl" href="javascript:;" title="添加链接"
                    class="flnk"
                    onclick="seditor_menu('sightml', 'url');doane(event);">Link</a>
                  <a href="javascript:;" class="fsml" id="sightmlsml"
                    onclick="showMenu({'ctrlid':this.id,'evt':'click','layer':2});return false;">Smilies</a>
                  <script type="text/javascript" reload="1">
																			smilies_show(
																					'sightmlsmiliesdiv',
																					8,
																					'sightml');
																		</script>
                </div>
              </div>
              <div class="area">
                <textarea rows="3" cols="80" name="sightml"
                  id="sightmlmessage" class="pt"
                  onkeydown="ctrlEnter(event, 'profilesubmitbtn');"></textarea>
              </div>
            </div>
            <div id="signhtmlpreview"></div>
            <div id="showerror_sightml" class="rq mtn"></div> <script
              src="static/js/bbcode.js?tPF" type="text/javascript"></script>
            <script type="text/javascript">
													var forumallowhtml = 0, allowhtml = 0, allowsmilies = 0, allowbbcode = parseInt('1'), allowimgcode = parseInt('0');
													var DISCUZCODE = [];
													DISCUZCODE['num'] = '-1';
													DISCUZCODE['html'] = [];
												</script>
          </td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <th id="th_timeoffset">时区</th>
          <td id="td_timeoffset"><select name="timeoffset"><option
                value="9999" selected="selected">使用系统默认</option>
              <option value="-12">(GMT -12:00) 埃尼威托克岛, 夸贾林环礁</option>
              <option value="-11">(GMT -11:00) 中途岛, 萨摩亚群岛</option>
              <option value="-10">(GMT -10:00) 夏威夷</option>
              <option value="-9">(GMT -09:00) 阿拉斯加</option>
              <option value="-8">(GMT -08:00) 太平洋时间(美国和加拿大),
                提华纳</option>
              <option value="-7">(GMT -07:00) 山区时间(美国和加拿大),
                亚利桑那</option>
              <option value="-6">(GMT -06:00) 中部时间(美国和加拿大),
                墨西哥城</option>
              <option value="-5">(GMT -05:00) 东部时间(美国和加拿大),
                波哥大, 利马, 基多</option>
              <option value="-4">(GMT -04:00) 大西洋时间(加拿大), 加拉加斯,
                拉巴斯</option>
              <option value="-3.5">(GMT -03:30) 纽芬兰</option>
              <option value="-3">(GMT -03:00) 巴西利亚, 布宜诺斯艾利斯,
                乔治敦, 福克兰群岛</option>
              <option value="-2">(GMT -02:00) 中大西洋, 阿森松群岛,
                圣赫勒拿岛</option>
              <option value="-1">(GMT -01:00) 亚速群岛, 佛得角群岛
                [格林尼治标准时间] 都柏林, 伦敦, 里斯本, 卡萨布兰卡</option>
              <option value="0">(GMT) 卡萨布兰卡，都柏林，爱丁堡，伦敦，里斯本，蒙罗维亚</option>
              <option value="1">(GMT +01:00) 柏林, 布鲁塞尔, 哥本哈根,
                马德里, 巴黎, 罗马</option>
              <option value="2">(GMT +02:00) 赫尔辛基, 加里宁格勒, 南非,
                华沙</option>
              <option value="3">(GMT +03:00) 巴格达, 利雅得, 莫斯科, 奈洛比</option>
              <option value="3.5">(GMT +03:30) 德黑兰</option>
              <option value="4">(GMT +04:00) 阿布扎比, 巴库, 马斯喀特,
                特比利斯</option>
              <option value="4.5">(GMT +04:30) 坎布尔</option>
              <option value="5">(GMT +05:00) 叶卡特琳堡, 伊斯兰堡, 卡拉奇,
                塔什干</option>
              <option value="5.5">(GMT +05:30) 孟买, 加尔各答, 马德拉斯,
                新德里</option>
              <option value="5.75">(GMT +05:45) 加德满都</option>
              <option value="6">(GMT +06:00) 阿拉木图, 科伦坡, 达卡,
                新西伯利亚</option>
              <option value="6.5">(GMT +06:30) 仰光</option>
              <option value="7">(GMT +07:00) 曼谷, 河内, 雅加达</option>
              <option value="8">(GMT +08:00) 北京, 香港, 帕斯, 新加坡,
                台北</option>
              <option value="9">(GMT +09:00) 大阪, 札幌, 首尔, 东京,
                雅库茨克</option>
              <option value="9.5">(GMT +09:30) 阿德莱德, 达尔文</option>
              <option value="10">(GMT +10:00) 堪培拉, 关岛, 墨尔本, 悉尼,
                海参崴</option>
              <option value="11">(GMT +11:00) 马加丹, 新喀里多尼亚,
                所罗门群岛</option>
              <option value="12">(GMT +12:00) 奥克兰, 惠灵顿, 斐济,
                马绍尔群岛</option>
          </select>
            <p class="mtn">当前时间 : 2015-5-26 15:39</p>
            <p class="d">如果发现当前显示的时间与您本地时间相差几个小时，那么您需要更改自己的时区设置</p></td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <th>&nbsp;</th>
          <td colspan="2"><input type="hidden" name="profilesubmit"
            value="true" />
            <button type="submit" name="profilesubmitbtn"
              id="profilesubmitbtn" value="true" class="pn pnc">
              <strong>保存</strong>
            </button> <span id="submit_result" class="rq"></span></td>
        </tr>
      </table>

    </form>
  </div>
</body>
</html>