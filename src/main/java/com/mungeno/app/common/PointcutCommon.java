package com.mungeno.app.common;

import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;

@Aspect
public class PointcutCommon {
	@Pointcut("execution(* com.mungeno.app..*Impl.*(..))")
	public void aPointcut() {} // 참조 메서드
	@Pointcut("execution(* com.mungeno.app..*Impl.get*(..))")
	public void bPointcut() {}
}
