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
				
				
				<div id="divMain">
				<#list avlist as av>
					<div class="post multi-post cate4 auth1">
						<h4 class="post-date">浏览:${av.browsenumber}<span id="spn75"></span> | ${av.createtime}</h4>
						<h2 class="post-title">
						<a href="${base}/article.ftl?id=${av.id}">${av.title}</a>
						</h2>
						<div class='post-body'>
						<p>${av.intro}</p>
						<p style="text-indent: 0em;">
						<a title="${av.title}" target="_self" href="#post/75.html">
						<#if av.articleimg??>	
							<img src="${av.articleimg}" title='啦啦啦' alt='啦啦啦'/>
						</#if>
						</p>
						</div>
						<h5 class="post-tags">
						Tags: <span class="tags'">
						<#list av.laList as la>
							<a href="${base}/blog?tagid=${la.id}">${la.name}</a>&nbsp;&nbsp;
						</#list>
						</span>
						</h5>
						<h6 class="post-footer">
						<a href="${base}/article.ftl?id=${av.id}">阅读全文 ></a>
						</h6>
					</div>
				</#list>	
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
<!-- 16ms -->