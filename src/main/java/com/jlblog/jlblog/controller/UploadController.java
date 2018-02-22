package com.jlblog.jlblog.controller;

import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;


import com.qiniu.common.Zone;
import com.qiniu.http.Response;
import com.qiniu.storage.Configuration;
import com.qiniu.storage.UploadManager;
import com.qiniu.util.Auth;


@Controller
public class UploadController {

	/**
	 *   文件上传的方法
	 * @Title: upload  
	 *   @param imgFile
	 *   @param request
	 *   @return Map
	 * @throws
	 */
	@RequestMapping(value="/uploadFile",method=RequestMethod.POST)
	@ResponseBody
	public Map upload(MultipartFile imgFile,HttpServletRequest request){
		String ACCESS_KEY = "QvYcKFqo9J4zMdP_4-thVIsBhR1hLH-FWlI0kUtM"; //这两个登录七牛 账号里面可以找到  
		String SECRET_KEY = "Uy0gZe0qSFw2MHQdlAv_rql3uvmXm2RcwIEozhV2";  
		//要上传的空间  
		String bucketname = "yongxin0109"; //填写新建的那个存储空间对象的名称
		FileItemFactory factory = new DiskFileItemFactory();
		ServletFileUpload upload = new ServletFileUpload(factory);
		upload.setHeaderEncoding("UTF-8");
	    //密钥配置  
	    Auth auth = Auth.create(ACCESS_KEY, SECRET_KEY);  
	    //创建上传对象  
	    Zone z = Zone.autoZone();
	    Configuration c = new Configuration(z);
	    UploadManager uploadManager = new UploadManager(c);  
	
		String fileName=UUID.randomUUID().toString()+imgFile.getOriginalFilename();
		
		Map<String,Object> map=new HashMap<String,Object>();
		try {
			Response res = uploadManager.put(imgFile.getBytes(), fileName, auth.uploadToken(bucketname));
		} catch (Exception e) {
			
			map.put("error",1);
			map.put("message","上传失败");
			return map;
		}
		
		map.put("error",0);
		map.put("url","http://ozymmgz65.bkt.clouddn.com/"+fileName);
		return map;
	}

}

