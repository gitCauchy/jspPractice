package com.cauchy.domain;

import java.util.HashMap;
import java.util.Map;

import org.apache.commons.beanutils.BeanUtils;
import org.junit.Test;

import com.cauchy.utils.CommonUtils;

public class BeanUtilsDemo {
	@Test
	public void TestFunc1() throws Exception{
		String className = "com.cauchy.domain.Person";
		Class clazz = Class.forName(className);
		Object bean = clazz.newInstance();
		BeanUtils.setProperty(bean, "name", "Cauchy");
		BeanUtils.setProperty(bean, "age", 25);
		BeanUtils.setProperty(bean, "gender", "M");
		
		System.out.println(bean);
	}
	@Test
	public void TestFunc2() throws Exception{
		/**
		 * 把map中的数据封装到一个bean中
		 */
		Map<String,String> map = new HashMap<String,String>();
		map.put("username","Cauchy");
		map.put("password","password");
		User user  = new User();
		BeanUtils.populate(user, map);
	}
	@Test
	public void TestFunc3() {
		Map<String,String> map = new HashMap<String,String>();
		map.put("username","Cauchy");
		map.put("password","password");
		User user = CommonUtils.toBean(map, User.class);
		System.out.println(user);
		
	}
}
