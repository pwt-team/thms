package com.thms.util;

import org.apache.commons.lang.StringUtils;
import org.springframework.core.convert.converter.Converter;

public class StringToIntegerConverter implements Converter<String, Integer> {

	@Override
	public Integer convert(String str) {
		if(StringUtils.isNotEmpty(str)){
			return Integer.valueOf(str);
		}
		return null;
	}
}
