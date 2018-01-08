package com.jlblog.jlblog.pojo;

import org.apache.ibatis.type.Alias;

@Alias(value = "Jl")
public class Jl {
	
	private String name;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	
	
}
