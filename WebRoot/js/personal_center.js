$(function(){
	openpage("all");
});

//ajxa通用代码
function loadPage(url, dataName, id) {
	$.ajax({
		type : "post",// 请求方式
		url : url,// 发送请求地址
		data : dataName,// 发送给服务端的数据
		// 请求成功后的回调函数有两个参数

		success : function(data, textStatus) {

			$("#" + id).html(data);
		}

	});
}

// 修改个人资料
function openpage(command) {

	if (command == "img") {
		$("#imgContent").css("display","block");
		$("#maincontent").css("display","none");
	} else {
		$("#maincontent").css("display","block");
		$("#imgContent").css("display","none");
		var dataName = eval('(' + "{command : command}" + ')');
		loadPage("ajax!showModify.action", dataName, "maincontent");
	}

}

function load(page){
	if(page=="base"){
		$("#changePage").openpage("base");
	}
	if(page=="contact"){
		$("#changePage").load("contact.jsp");
	}
	if(page=="education"){
		$("#changePage").load("education.jsp");
	}
	if(page=="work"){
		$("#changePage").load("work.jsp");
	}
	if(page=="personal"){
		$("#changePage").load("personal.jsp");
	}
}
