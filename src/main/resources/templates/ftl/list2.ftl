<#assign base=request.contextPath />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="zh-CN" lang="zh-CN">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="Content-Language" content="zh-CN" />
<meta name="keywords" content="你我网,圈圈说,汉中,汉中圈圈,你我,如是观,心理,感情,youmew" />
<meta name="description"
	content="你我网，缘自圈圈说，记载着圈圈的生活过往，只为留住那份曾经的感动；圈圈，又名小尤，前半生执著于感情，命途多舛，故孑然一身。" />
<title>光与影的艺术</title>
<link rel="stylesheet" rev="stylesheet" href="${base}/style/style.css"
	type="text/css" media="screen" />
<link rel="shortcut icon" href="/favicon.ico" />
<script src="${base}/style/common.js" type="text/javascript"></script>
<script src="${base}/style/c_html_js_add.js" type="text/javascript"></script>
<script src="${base}/style/custom.js" type="text/javascript"></script>
<script src="${base}/js/jquery-3.1.1.js"></script>
<script>
	
	$(function(){
		$.ajax({
			url:"/article/getActicleByClassify",
			type:"Post",
			data:"classify=2",
			
			success:function(msg){
				var data = eval(msg);
				if(data.error!=200){
					alert(map.msg)
					return
				}
				var list = data.msg;
				var content = "";
				for(var i = 0;i<list.length;i++){
					
					var li = list[i];
					
					content+="<h4 class='post-date'>"+li.createtime+"</h4>";
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
						content+="<a href='#catalog.asp?tags=%E6%91%84%E5%BD%B1'>"+ll[j].name+"</a>&nbsp;&nbsp;";
					}
					content+="</span>"
					content+="</h5>";
					content+="<h6 class='post-footer'>";
					content+="分类:大生活 | 评论:6 | 浏览:<span id='spn75'>";
					content+="| <a href='article.ftl?id="+li.id+"'>阅读全文 ></a>";
					content+="</h6>";
					
				}
				
				$("#article").append(content);
			}
			
		});
	});
	

</script>
</head>
<body class="multi catalog">
	<div id="divAll">
		<div id="divPage">
			<div id="divMiddle">
				
				<!-- 引入头部begin -->
				<#include "model/head.ftl"/>
				<!-- 引入头部end -->
				
				<div id="divMain">
	
					<div class="post multi-post cate2 auth1" id="article">
					
						<!-- 数据填充位置  -->
						
					</div>
					
					<div class="post pagebar">
						<a href="#catalog.asp?cate=2"><span class="page first-page">&laquo;</span></a><span
							class="page now-page">1</span><a
							href="#catalog.asp?cate=2&page=2"><span class="page">2</span></a><a
							href="#catalog.asp?cate=2&page=3"><span class="page">3</span></a><a
							href="#catalog.asp?cate=2&page=4"><span class="page">4</span></a><a
							href="#catalog.asp?cate=2&page=4"><span
							class="page last-page">&raquo;</span></a>
					</div>
				</div>
				<div id="divSidebar">

					<dl class="function" id="divComments">
						<dt class="function_t">最新留言</dt>
						<dd class="function_c">
							<ul>
								<li style="text-overflow: ellipsis;"><a
									href="#post/76.html#cmt1492"
									title="2016-7-14 20:22:16 post by 卢松松博客">说的很不错呢！</a></li>
								<li style="text-overflow: ellipsis;"><a
									href="#post/68.html#cmt1491"
									title="2016-7-12 16:21:06 post by 52微商网">一个很好的微商货源平台，非常适合做微商推</a></li>
								<li style="text-overflow: ellipsis;"><a
									href="#post/77.html#cmt1490"
									title="2016-7-10 9:48:23 post by 巴力迅猛龙">谢谢博主分享 支持</a></li>
								<li style="text-overflow: ellipsis;"><a
									href="#guestbook.html#cmt1488"
									title="2016-7-8 17:20:43 post by 个人博客">第一次过来看看</a></li>
								<li style="text-overflow: ellipsis;"><a
									href="#post/76.html#cmt1487"
									title="2016-7-6 17:08:25 post by 免费小说在线阅读">懂得取舍吧，最好留有后路、</a></li>
								<li style="text-overflow: ellipsis;"><a
									href="#post/77.html#cmt1486"
									title="2016-7-5 13:12:38 post by 免费小说在线阅读">靠自己丰衣足食！</a></li>
								<li style="text-overflow: ellipsis;"><a
									href="#post/77.html#cmt1485"
									title="2016-7-3 10:53:55 post by 贝蒂斯橄榄油总代理">第一次来，写的不错，关注下</a></li>
								<li style="text-overflow: ellipsis;"><a
									href="#post/77.html#cmt1484"
									title="2016-7-2 16:18:16 post by 卢松松博客">当初看这个并没有觉得什么，现在看来里面和</a></li>
								<li style="text-overflow: ellipsis;"><a
									href="#post/76.html#cmt1483"
									title="2016-7-2 12:04:12 post by 青岛礼品公司">人生确实就是个赌局，就看赌注和勇气大小了</a></li>
								<li style="text-overflow: ellipsis;"><a
									href="#post/74.html#cmt1482"
									title="2016-6-29 15:50:16 post by 青岛小礼品">长大了，烦恼也就多了</a></li>
							</ul>
						</dd>
					</dl>
					<dl class="function" id="divMisc">
						<dt class="function_t">分享到：</dt>
						<dd class="function_c">
							<ul>
								<li><img src="./images/weixin.jpg" height="110" width="110"
									border="0" alt="你我网微信公众平台" title="微信扫一扫，关注圈圈的最新消息。" /></li>
								<li>
									<!-- Baidu Button BEGIN -->
									<div class="bdsharebuttonbox">
										<a href="#" class="bds_more" data-cmd="more"></a><a
											title="分享到微信" href="#" class="bds_weixin" data-cmd="weixin"></a><a
											title="分享到QQ空间" href="#" class="bds_qzone" data-cmd="qzone"></a><a
											title="分享到百度贴吧" href="#" class="bds_tieba" data-cmd="tieba"></a><a
											title="分享到新浪微博" href="#" class="bds_tsina" data-cmd="tsina"></a>
									</div>
									<script>
										window._bd_share_config = {
											"common" : {
												"bdSnsKey" : {},
												"bdText" : "",
												"bdMini" : "2",
												"bdMiniList" : [ "sqq",
														"weixin", "qzone",
														"tsina", "tieba",
														"douban" ],
												"bdPic" : "",
												"bdStyle" : "0",
												"bdSize" : "16"
											},
											"share" : {}
										};
										with (document)
											0[(getElementsByTagName('head')[0] || body)
													.appendChild(createElement('script')).src = 'http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion='
													+ ~(-new Date() / 36e5)];
									</script>
									<!-- Baidu Button END -->
								</li>
								<li><a href="#feed.asp" target="_blank"><img
										src="./images/rss.png" height="31" width="88" border="0"
										alt="订阅本站的 RSS 2.0 新闻聚合" /></a></li>
							</ul>
						</dd>
					</dl>

				</div>
				
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
</html>
<!--266ms-->