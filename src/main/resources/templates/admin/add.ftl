<#assign base=request.contextPath />
<!DOCTYPE html>
<html lang="zh-cn">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<meta name="renderer" content="webkit">
<title></title>
<link rel="stylesheet" href="${base}/style/pintuer.css">
<link rel="stylesheet" href="${base}/style/admin.css">
<script src="${base}/js/jquery.js"></script>
<script src="${base}/js/pintuer.js"></script>
<script src="${base}/js/jquery.form.js"></script>
<link rel="stylesheet" href="${base}/layui/css/layui.css" />
<link rel="stylesheet" href="${base}/kindeditor/themes/default/default.css" />
<link rel="stylesheet" href="${base}/kindeditor/plugins/code/prettify.css" />
<script charset="utf-8" src="${base}/kindeditor/kindeditor-all-min.js"></script>
<script charset="utf-8" src="${base}/kindeditor/lang/zh_CN.js"></script>
<script charset="utf-8" src="${base}/kindeditor/plugins/code/prettify.js"></script>
<script charset="utf-8" src="${base}/layui/layui.js"></script>
</head>
<body>
<div class="panel admin-panel">
  <div class="panel-head" id="add"><strong><span class="icon-pencil-square-o"></span>添加文章</strong></div>
  <div class="body-content">
    <form method="post" id="subform" class="form-x" action="${base}/articlevo/add">  
      <div class="form-group">
        <div class="label">
          <label>文章标题：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" value="" name="title" data-validate="required:请输入标题" />
          <div class="tips"></div>
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label>图片：</label>
        </div>
        <div class="field">
          <input type="hidden" name="articleimg">
          <div style="border:1px solid #ccc;width:100px;height:100px" id="imgHX">
          	
          </div>
          <input type="button" class="button bg-blue" id="image1" value="+ 浏览上传"  style="float:left;">
          <div class="tipss">图片尺寸：680*440</div>
        </div>
      </div>     
      <if condition="$iscid eq 1">
        <div class="form-group">
          <div class="label">
            <label>文章分类：</label>
          </div>
          <div class="field">
            <select name="classify" class="input w50">
              <option value="">请选择分类</option>
              <option value="1">关辉岁月</option>
              <option value="2">光影斑斓</option>
              <option value="3">旅途</option>
              <option value="4">一席</option>
            </select>
            <div class="tips"></div>
          </div>
        </div>
        <div class="form-group">
          <div class="label">
            <label>文章标签：</label>
          </div>
          <div class="field" style="padding-top:8px;" id="labers"> 
		           
         
          </div>
        </div>
      </if>
      <div class="form-group">
        <div class="label">
          <label>文章简介：</label>
        </div>
        <div class="field">
          <textarea class="input" name="intro" style=" height:90px;"></textarea>
          <div class="tips"></div>
        </div>
      </div>
      
     
      <div class="clear"></div>
      
      <div class="form-group">
        <div class="label">
          <label>发布时间：</label>
        </div>
        <div class="field"> 
          <input type="text" id="createtimes"  placeholder="yyyy-MM-dd HH:mm:ss" class="laydate-icon input w50" name="createtime" onclick="laydate({istime: true, format: 'YYYY-MM-DD hh:mm:ss'})" value=""  data-validate="required:日期不能为空" style="padding:10px!important; height:auto!important;border:1px solid #ddd!important;" />
          <div class="tips"></div>
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label>文章内容：</label>
        </div>
        <textarea id="asdasd" name="articleDetails" cols="100" rows="8" style="width:1100px;height:500px;visibility:hidden;"></textarea>
      </div>
      <div class="form-group">
        <div class="label">
          <label></label>
        </div>
        <div class="field">
          <button id="butsubmit" class="button bg-main icon-check-square-o" type="button"> 提交</button>
        </div>
      </div>
    </form>
  </div>
</div>

</body>
<script type="text/javascript">
var layer;
var editor1;
KindEditor.ready(function(K) {
	editor1 = K.create('textarea[name="articleDetails"]', {
		uploadJson : '/uploadFile',
		allowFileManager : true
	}); 
	prettyPrint();
	
});

$(function(){
	layui.use('upload', function(){
		 layer=layui.layer;
		  var upload = layui.upload;
		   var load;
		  //执行实例
		  var uploadInst = upload.render({
		    elem: '#image1' //绑定元素
		    ,url: '/uploadFile' //上传接口
		    ,field:"imgFile"
		    ,before:function(){
		    	load=layer.load(2);
		    }
		    ,done: function(data){
		     if(data.error==0){
		    	 layer.close(load);
		    	 $("input[name='articleimg']").val(data.url);
		    	 $("#imgHX").html("<img src='"+data.url+"'style='width:100%;height:100%'/>")
		    	 layer.msg("上传成功",{icon:1})
		     }
		    }
		   
		  });
	});
});

$(function() {
	
	$.ajax({
		url : "/laber/labers", //处理页面的路径
		type : "POST", //提交方式
		success : function(data) { //回调函数 ,成功时返回的数据存在形参data里
			var labers = eval(data);
			var node = "";
			for(var i=0;i<labers.length;i++){
				node += ""+labers[i].name+" <input name='laberids' type='checkbox' value='"+labers[i].id+"'/>";
			}
			$("#labers").append(node);
		}
	});
});
	
layui.use('laydate', function(){
	  var laydate = layui.laydate;
	  
	  //时间选择器
	  laydate.render({
	    elem: '#createtimes'
	    ,type: 'datetime'
	  });
});

$(function(){
	layui.use('layer', function(){
		  var layer = layui.layer;
		  $("#butsubmit").click(function(){
				editor1.sync();
				$("#subform").ajaxSubmit({
					url:"/articlevo/add",
					type:"POST",
					success:function(data){
						if(data.q==1){
							layer.msg("添加文章成功");
						}else{
							layer.msg("添加文章成功");
						}	
					}
				});	

			});
	});
});


</script>
</html>