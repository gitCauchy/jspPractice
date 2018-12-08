package com.cauchy.utils;

import java.util.Map;
import java.util.UUID;

import org.apache.commons.beanutils.BeanUtils;

public class CommonUtils {
	public static String uuid() {
		return UUID.randomUUID().toString().replace("-", "").toUpperCase();
	}
	// map转换为指定类型的javabean
	public static <T> T toBean(Map map,Class<T> clazz) {
		try {
			// 创建指定类型的javabean对象
			T bean = clazz.newInstance();
			BeanUtils.populate(bean, map);
			return bean;
		} catch (Exception e) {
			throw new RuntimeException();
		}
	}
}
