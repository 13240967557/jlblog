<#assign base=request.contextPath />
<div id="divSidebar">
					<dl class="function" id="divSearchPanel">
						<dt class="function_t">搜索文章</dt>
						<dd class="function_c">
							<div>
								<div style="padding: 0.5em 0 0.5em 1em;">
									<form method="post" action="${base}/laber/search">
										<#if articleVo??>	
											<input type="text" value="${articleVo.title}" name="title" id="edtSearch" size="12" />
										<#else>
											<input type="text" name="title" id="edtSearch" size="12" />
										</#if>
										<input type="submit" value="搜索" name="btnPost" id="btnPost" />
									</form>
								</div>
							</div>
						</dd>
					</dl>
					<dl class="function" id="divTags">
						<dt class="function_t">按标签浏览</dt>
						<dd class="function_c">
							<ul id="labertags">
							
							</ul>
						</dd>
					</dl>
					<script>
					$(function(){
						$.ajax({
							url:"/indexlaber",
							type:"Post",
							
							success:function(msg){
								var laberlist = eval(msg);
								
								var content = "";
								for(var i = 0;i<laberlist.length;i++){
									
									var laber = laberlist[i];
									content+="<li class='tag-name tag-name-size-2'><a href='${base}/blog?tagid="+laber.id+"'>"+laber.name+"<span class='tag-count'> (18)</span></a></li>";	
								}
								$("#labertags").append(content);
							}						
						});
					});
					</script>
					
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
					<dl class="function" id="divLinkage">
						<dt class="function_t">友情链接</dt>
						<dd class="function_c">
							<ul>
								<li><a href="http://blog.csdn.net/jiazhiyuan0" target="_blank">瑬蒗的鱼博客</a>
									<a href="https://github.com/13240967557" target="_blank">gitup</a>
									<a href="http://www.lopwon.com/" target="_blank">立云图志</a></li>
								<li><a href="http://qingchun.org/" target="_blank">青春</a> <a
									href="http://www.gaohaipeng.com" target="_blank">高海鹏博客</a> <a
									href="http://www.ccaipu.com/" target="_blank">程晨爱蒲</a></li>
								</li>
								<li><a href="http://lusongsong.com/daohang"
									rel="external nofollow" target="_blank">博客大全</a> <a
									href="http://bestcherish.com/" target="_blank">灰常记忆</a> <a
									href="http://www.swdsblog.com" target="_blank">随望淡思</a></li>
								<li><a href="http://www.wangzhijun.com.cn" target="_blank">王志军博客</a>
									<a href="http://duonuli.com/" target="_blank">多努力网</a></li>
								<li></li>
								<li><a href="http://www.panoramio.com/user/youmew"
									target="_blank">谷歌地球相册</a></li>
								<li><a href="#t/post-18.html" target="_blank" title="申请链接"><span
										style="color: #006000;">交换友情链接</span></a></li>
							</ul>
						</dd>
					</dl>
					<dl class="function" id="divMisc">
						<dt class="function_t">分享到：</dt>
						<dd class="function_c">
							<ul>
								<li><img src="${base}/images/weixin.jpg" height="110" width="110"
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
										src="${base}/images/rss.png" height="31" width="88" border="0"
										alt="订阅本站的 RSS 2.0 新闻聚合" /></a></li>
							</ul>
						</dd>
					</dl>

				</div>
