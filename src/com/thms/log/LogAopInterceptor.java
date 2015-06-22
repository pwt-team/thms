package com.thms.log;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.stereotype.Component;

@Aspect
@Component
public class LogAopInterceptor {

	
	//拦截所有方法 ("execution(* * *(..))")
	//拦截save方法 ("execution(* * save*(..))")
	//拦截方法所有find方法   (excution(* com.thms.service.*.impl.*.find*(..))")
	@Around("execution(* com.thms.web.*.*(..))")
	public void log(ProceedingJoinPoint point) throws Throwable{
		System.out.println("===========哈哈哈！");
		//获取请求里的参数
		Object[] params = point.getArgs();
		//获取请求类
		Class clz = point.getTarget().getClass();
		String className = clz.getName();
		//获取
		String kind = point.getKind();
		//获取请求方法名
		String method = point.getSignature().getName();
		System.out.println("请求方法名:"+ className +"===/==="+method);
		point.proceed();
	}
}
