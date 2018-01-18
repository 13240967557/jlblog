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
				content+="<h4 class='post-date'>"+article.createtime+"</h4>";
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
				content+="分类:大生活 | 评论:"+article.commentnumber+" | 浏览:"+article.browsenumber+"<span id='spn75'></span>";
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
				<div id="divSidebar">

					<dl class="function" id="divSearchPanel">
						<dt class="function_t">搜索</dt>
						<dd class="function_c">
							<div>
								<div id="mod_searchpanel" style="display: none;">
									<script type="text/javascript">
										LoadFunction('searchpanel');
									</script>
								</div>
							</div>
						</dd>
					</dl>
					<dl class="function" id="divComments">
						<dt class="function_t">最新留言</dt>
						<dd class="function_c">
							<ul>
								<li style="text-overflow: ellipsis;"><a
									href="#post/77.html#cmt1474"
									title="2016-6-20 9:31:36 post by 任务易">要钱还是要脸，这是这个社会应该思考的</a></li>
								<li style="text-overflow: ellipsis;"><a
									href="#post/8.html#cmt1472"
									title="2016-6-16 10:31:18 post by 母婴B2b">感谢博主的分享～</a></li>
								<li style="text-overflow: ellipsis;"><a
									href="#post/67.html#cmt1470"
									title="2016-6-14 13:27:07 post by 母婴B2b">感谢博主的分享~</a></li>
								<li style="text-overflow: ellipsis;"><a
									href="#guestbook.html#cmt1469"
									title="2016-6-13 20:47:03 post by BeautifulDays">博客导航栏图片设计的不错啊，前来逛逛。</a></li>
								<li style="text-overflow: ellipsis;"><a
									href="#post/76.html#cmt1468"
									title="2016-6-12 11:19:36 post by 夏日博客">有的赢得了人生，有的输得一踏糊涂。</a></li>
								<li style="text-overflow: ellipsis;"><a
									href="#post/75.html#cmt1467"
									title="2016-6-9 16:34:35 post by 斯托克笔记">戒什么？</a></li>
								<li style="text-overflow: ellipsis;"><a
									href="#post/6.html#cmt1466"
									title="2016-5-30 14:25:48 post by 母婴B2b">感谢博主分享~</a></li>
								<li style="text-overflow: ellipsis;"><a
									href="#post/76.html#cmt1464"
									title="2016-5-26 18:20:30 post by themebetter">终于搞定新主题tob上线，过来看看，有梦</a></li>
								<li style="text-overflow: ellipsis;"><a
									href="#guestbook.html#cmt1462"
									title="2016-5-24 15:59:25 post by 猫先生">曾经来过</a></li>
								<li style="text-overflow: ellipsis;"><a
									href="#post/77.html#cmt1454"
									title="2016-5-20 16:01:45 post by 软膜天花">第一次来，网站做的很不错</a></li>
							</ul>
						</dd>
					</dl>
					<dl class="function" id="divMisc">
						<dt class="function_t">分享到：</dt>
						<dd class="function_c">
							<ul>
								<li>
									<img src="./images/weixin.jpg"
									height="110" width="110" border="0" alt="JLblog微信公众平台"
									title="微信扫一扫，关注JLblog最新消息。" />
								</li>
								<li>
									<!-- Baidu Button BEGIN -->
									<div class="bdsharebuttonbox">
										<a href="#" class="bds_more" data-cmd="more"></a>
										<a title="分享到微信" href="#" class="bds_weixin" data-cmd="weixin"></a>
										<a title="分享到QQ空间" href="#" class="bds_qzone" data-cmd="qzone"></a>
										<a title="分享到百度贴吧" href="#" class="bds_tieba" data-cmd="tieba"></a>
										<a title="分享到新浪微博" href="#" class="bds_tsina" data-cmd="tsina"></a>
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
								<li>
									<a href="#feed.asp" target="_blank">
										<img src="./images/rss.png" height="31" width="88" border="0" 
										alt="订阅本站的 RSS 2.0 新闻聚合" />
									</a>
								</li>
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