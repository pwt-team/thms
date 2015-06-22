package com.thms.util;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.core.convert.converter.Converter;
import org.springframework.util.StringUtils;

public class StringToDateConverter implements Converter<String, Date> {

	private final SimpleDateFormat DATE_PARTTEN = new SimpleDateFormat("yyyy-MM-dd");
	private final SimpleDateFormat DATETIME_PARTTEN = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	
	@Override
	public Date convert(String source) {
		if(!StringUtils.hasLength(source)) return null; 
		if(source.contains("-") && source.length() == 10){
			try {
				return DATE_PARTTEN.parse(source);
			} catch (ParseException e) {
				throw new IllegalArgumentException(String.format("输入的 ["+ source +"] 格式与 ["+DATE_PARTTEN+"]不匹配,导致转换失败!",source),e);
			}
			
		}else if(source.contains("-") && source.contains(":") && source.length()==19){
			try {
				return DATETIME_PARTTEN.parse(source);
			} catch (ParseException e) {
				throw new IllegalArgumentException(String.format("输入的 ["+ source +"] 格式与 ["+DATETIME_PARTTEN+"]不匹配,导致转换失败!",source),e);
			}
		}else{
			throw new IllegalArgumentException(String.format("输入的 ["+ source +"] 格式不匹配,导致转换失败!",source));
		}
	}

}
