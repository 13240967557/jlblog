<#assign base=request.contextPath />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="zh-CN" lang="zh-CN">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="Content-Language" content="zh-CN" />
<meta name="keywords" content="你我网,圈圈说,汉中,汉中圈圈,你我,如是观,心理,感情,youmew" />
<meta name="description"
	content="你我网，缘自圈圈说，记载着圈圈的生活过往，只为留住那份曾经的感动；圈圈，又名小尤，前半生执著于感情，命途多舛，故孑然一身。" />
<title>2018年就一个字：虎！​ - 瑬蒗d魚</title>
<link rel="stylesheet" rev="stylesheet" href="${base}/style/style.css"
	type="text/css" media="screen" />
<link rel="shortcut icon" href="/favicon.ico" />
<script src="${base}/style/common.js" type="text/javascript"></script>
<script src="${base}/style/c_html_js_add.js" type="text/javascript"></script>
<script src="${base}/style/custom.js" type="text/javascript"></script>
<script src="${base}/js/jquery-3.1.1.js"></script>
<script type="text/javascript">

	/**
	 * 页面初始化加载文章
	 */
	$(function(){
		
		var id = $("#id").val();
		
		$.ajax({
			url:"/article/getArticleById",
			type:"Post",
			data:"id="+id,
			
			success:function(msg){
				var data = eval(msg);
				if(data.error!=200){
					alert(data.msg)
					return
				}
				article = data.msg;
				var content = "";
				var correlation = "";
				
				/* 文章主体 */
				content+="<h4 class='post-date'>浏览:"+article.browsenumber+"<span id='spn75'></span> | "+article.createtime+"</h4>";
				content+="<h2 class='post-title'>"+article.title+"​</h2>";
				content+="<div class='post-body'>";
				content+=article.articleDetails;
				content+="</div>";
				content+="<h5 class='post-tags'>";
				content+="Tags: <span class='tags'>";
				var laList = article.laList;
				for(var i = 0;i<laList.length;i++){
					content+="<a href='#catalog.asp?tags=%E6%91%84%E5%BD%B1'>"+laList[i].name+"</a>&nbsp;&nbsp;";	
				}
				content+="</span>";
				content+="</h5>";
				content+="<h6 class='post-footer'>";
				content+="";
				content+="<br />";
				content+="<br />";
				content+="<div style='width: 660px;' align='center'></div>";
				content+="</h6>";
				content+="</div>";
				
				/* 相关文章 */
				correlation+="<li class='tbname'>相关文章:</li>";
				correlation+="<li class='msgarticle'>";
				var coList = article.coList;
				for(var i = 0;i<coList.length;i++){
					correlation+="<p>";
					correlation+="<a href='article.ftl?id="+coList[i].id+"'>"+coList[i].title+"</a>&nbsp;&nbsp;"+coList[i].createtime;
					correlation+="</p>";	
				}
				correlation+="</li>";

				$("#article").append(content);
				$("#correlation").append(correlation);
			}
		});
		
		$.ajax({
			url:"/getip",
			data:"id="+id,
			
			success:function(msg){
				
			}
		});
	});
</script>
</head>
<body class="single" >
	<div id="divAll">
		<div id="divPage">
			<div id="divMiddle">

				<#include "model/head.ftl"/>
				
				<input type="hidden" id="id" value="${RequestParameters['id']}"/>
				<div id="divMain">
				
					<div class="post single-post cate2 auth1" id="article">
						
						<!-- 文章数据填充位置 -->
						
					</div>
					
					<ul class="msg mutuality" id="correlation">
						
						<!-- 相关文章填充位置 -->
						
					</ul>
					
					
					<!-- UY BEGIN -->
					<div id="uyan_frame"></div>
					<script type="text/javascript" src="http://v2.uyan.cc/code/uyan.js?uid=2155313"></script>
					<!-- UY END -->
					

					
				</div>
				
				<!-- 搜索内容 -->
				<#include "model/search.ftl"/>
				<!-- 网页底部内容 -->
				<#include "model/foot.ftl"/>
				
				<div class="clear"></div>
			</div>
			<div class="clear"></div>
		</div>
		<div class="clear"></div>
	</div>
	<!-- dd BEGIN -->
	<script language="JavaScript1.2">
		
var typ=["marginTop","marginLeft"],rangeN=10,timeout=0; 
function shake(o,end){ 
var range=Math.floor(Math.random()*rangeN); 
var typN=Math.floor(Math.random()*typ.length); 
o["style"][typ[typN]]=""+range+"px"; 
var shakeTimer=setTimeout(function(){shake(o,end)},timeout); 
o[end]=function(){clearTimeout(shakeTimer)}; 
} 
  
	</script>
	<!-- dd END -->
	

</body>
<#include "model/ttt.ftl"/>
</html>