package com.etc.aop;


import com.etc.entity.SysLog;
import com.etc.entity.User;
import com.etc.service.ISysLogService;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import java.lang.reflect.Method;
import java.sql.Timestamp;
import java.util.Date;


@Component
@Aspect
public class LogAop {

    @Autowired
    private HttpServletRequest request;

    @Autowired
    private ISysLogService sysLogService;

    private Timestamp visitTime; //开始时间
    private Class clazz; //访问的类
    private Method method;//访问的方法

    public  User u= null;
    //前置通知  主要是获取开始时间，执行的类是哪一个，执行的是哪一个方法
    @Before("execution(* com.etc.controller.*.*(..))")
    public void doBefore(JoinPoint jp) throws NoSuchMethodException {
        visitTime = new Timestamp(new Date().getTime());//当前时间就是开始访问的时间
        clazz = jp.getTarget().getClass(); //具体要访问的类
        String methodName = jp.getSignature().getName(); //获取访问的方法的名称
        Object[] args = jp.getArgs();//获取访问的方法的参数

       HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder
                .getRequestAttributes()).getRequest();
//读取session中的用户
        HttpSession session = request.getSession();
        u = (User) session.getAttribute("user");

        //获取具体执行的方法的Method对象
        if (args == null || args.length == 0) {
        method = clazz.getMethod(methodName); //只能获取无参数的方法
            System.out.println(method);
      } else {
//           Class[] classArgs = new Class[args.length];
//            for (int i = 0; i < args.length; i++) {
//                //classArgs[i] = args[i].getClass();
//            }
            //clazz.getMethod(methodName, classArgs);
        }



    }
    //后置通知
    @After("execution(* com.etc.controller.*.*(..))")
    public void doAfter(JoinPoint jp) throws Exception {
        long time = new Date().getTime() - visitTime.getTime(); //获取访问的时长

        String url = "";
        //获取url
        if (clazz != null && method != null && clazz != LogAop.class) {
            //1.获取类上的@RequestMapping("/orders")
            RequestMapping classAnnotation = (RequestMapping) clazz.getAnnotation(RequestMapping.class);
            if (classAnnotation != null) {
                String[] classValue = classAnnotation.value();
                //2.获取方法上的@RequestMapping(xxx)
                RequestMapping methodAnnotation = method.getAnnotation(RequestMapping.class);
                if (methodAnnotation != null) {
                    String[] methodValue = methodAnnotation.value();
                    url = classValue[0] + methodValue[0];

                    //获取访问的ip
                    String ip = request.getRemoteAddr();

                    //将日志相关信息封装到SysLog对象
                    SysLog sysLog = new SysLog();
                    sysLog.setAopLong(time);
                   sysLog.setAopIp(ip);
                  sysLog.setAopMethod("[类名] " + clazz.getName() + "[方法名] " +method.getName());
                  sysLog.setAopUrl(url);
                  if(u!=null)
                  sysLog.setAopName(u.getUname() );
                    if(u!=null)
                  sysLog.setUId(u.getUid());
                   sysLog.setAopTime(visitTime);

                    //调用Service完成操作

                    sysLogService.addSysLog(sysLog);
                }
            }
        }

    }
}
