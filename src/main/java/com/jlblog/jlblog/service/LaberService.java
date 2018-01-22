package com.jlblog.jlblog.service;

import java.util.List;

import com.jlblog.jlblog.pojo.Article;
import com.jlblog.jlblog.pojo.ArticleVo;
import com.jlblog.jlblog.pojo.Laber;

public interface LaberService {

	List<Laber> selectIndexLaber();
	
}
