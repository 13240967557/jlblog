<#assign base=request.contextPath />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="zh-CN" lang="zh-CN">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="Content-Language" content="zh-CN" />
<meta name="keywords" content="你我网,圈圈说,汉中,汉中圈圈,你我,如是观,心理,感情,youmew" />
<meta name="description"
	content="你我网，缘自圈圈说，记载着圈圈的生活过往，只为留住那份曾经的感动；圈圈，又名小尤，前半生执著于感情，命途多舛，故孑然一身。" />
<title>Blog</title>
<link rel="stylesheet" rev="stylesheet" href="${base}/style/style.css"
	type="text/css" media="screen" />
<link rel="shortcut icon" href="/favicon.ico" />
<script src="${base}/style/common.js" type="text/javascript"></script>
<script src="${base}/style/c_html_js_add.js" type="text/javascript"></script>
<script src="${base}/style/custom.js" type="text/javascript"></script>
<link rel="alternate" type="application/rss+xml" href="${base}/style/feed.css"
	title="你我网 " />
</head>
<body class="multi default">
	<div id="divAll">
		<div id="divPage">
			<div id="divMiddle">
				<!-- 头部 -->
				<#include "model/head.ftl"/>
				<!-- 从前一个页面获取标签id -->
				<input type="hidden" id="id" value="${RequestParameters['tagid']}"/>
				
				<div id="divMain">
					<div class="post multi-post cate4 auth1" id="article">
						
					</div>
				</div>
				
				
				<script>
				$(function(){
					var id = $("#id").val();
					$.ajax({
						url:"tagarticle",
						type:"Post",
						data:"id="+id,
						
						success:function(msg){
							var data = eval(msg);
							if(data.stats=="300"){
								alert(data.msg)
								return
							}
							var list = data.data;
							
							var content = "";
							for(var i = 0;i<list.length;i++){
								
								var li = list[i];
								
								content+="<h4 class='post-date'>浏览:"+li.browsenumber+"<span id='spn75'></span> | "+li.createtime+"</h4>";
								content+="<h2 class='post-title'>";
								content+="<a href='article.ftl?id="+li.id+"'>"+li.title+"</a>";
								content+="</h2>";
								content+="<div class='post-body'>";
								content+="<p>"+li.intro+"</p>";
								content+="<p style='text-indent: 0em;'>";
								content+="<a title="+li.title+" target='_self' href='#post/75.html'>";
								content+="<img src="+li.articleimg+" title='啦啦啦' alt='啦啦啦'/>";
								content+="</p>";
								content+="</div>";
								content+="<h5 class='post-tags'>";
								content+="Tags: <span class='tags'>";
								var ll = li.laList
								for(var j = 0;j<ll.length;j++){
									content+="<a href='${base}/blog?tagid="+ll[j].id+"'>"+ll[j].name+"</a>&nbsp;&nbsp;";
								}
								content+="</span>"
								content+="</h5>";
								content+="<h6 class='post-footer'>";
								content+="<a href='article.ftl?id="+li.id+"'>阅读全文 ></a>";
								content+="</h6>";
								
							}
							
							$("#article").append(content);
						}
						
					});
					
					
					
				}); 
				</script>
				
				
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
<!-- 16ms -->