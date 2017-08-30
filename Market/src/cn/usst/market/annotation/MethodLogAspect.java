package cn.usst.market.annotation;

import java.lang.reflect.Method;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import cn.usst.market.po.Log;
import cn.usst.market.po.Teacher;
import cn.usst.market.service.LogService;

@Component
@Aspect
public class MethodLogAspect {
	
	@Autowired
	private LogService logService;
	/** 
     * 日志记录 
     */  
    private static final Logger LOGGER = Logger.getLogger(MethodLogAspect.class);
    
    /**
     * Service层切点配置
     * 直接定位到annotation的类的类的路径名cn.usst.market.annotation.MethodLog
     */
    @Pointcut("@annotation(cn.usst.market.annotation.MethodLog)")
    public void methodLogAspect(){
    	
    }
    
    /** 
     * doMethodLog:获取注解参数，记录日志.
     */
    @After("methodLogAspect()")
    public void doMethodLog(JoinPoint joinPoint){
    	LOGGER.info("日志记录");
    	HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();
    	Teacher tea = (Teacher) request.getSession().getAttribute("teacher");
    	try {
    		Log log = new Log();
    		Date date = new Date();
    		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    		log.setOperateDate(sdf.format(date));
    		log.setContent(tea.getName()+":"+getServiceMthodDescription(joinPoint));
    		log.setMemberId(tea.getId());
    		log.setQuarter(1);
    		log.setSubmitTag(1);
    		List<Log> oldLogs = logService.selectLog(log);
    		int size = oldLogs.size();
    		if(size>0){
    			long newMinutes = date.getTime();
	    		Date oldDate = sdf.parse(oldLogs.get(size-1).getOperateDate());
	    		long oldMinutes = oldDate.getTime();
	    		if(newMinutes-oldMinutes > 60000){
	    			logService.insertLog(log);
	    		}
    		}else{
    			logService.insertLog(log);
    		}
			System.out.println(tea.getId()+":"+getServiceMthodDescription(joinPoint));
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    }
    
    /**
     * 获取方法注解中方法的描述信息
     */
    public String getServiceMthodDescription(JoinPoint joinPoint)
			throws Exception {
		String targetName = joinPoint.getTarget().getClass().getName();  
        String methodName = joinPoint.getSignature().getName();  
        Object[] arguments = joinPoint.getArgs();  
        Class targetClass = Class.forName(targetName);  
        Method[] methods = targetClass.getMethods();  
        String description = "";  
         for(Method method : methods) {  
             if(method.getName().equals(methodName)) {  
                Class[] clazzs = method.getParameterTypes();  
                 if(clazzs.length == arguments.length) {  
                    description = method.getAnnotation(MethodLog.class).description();  
                     break;  
                }  
            }  
        }  
        return description;
	}
    
    public int getSubmitTag(JoinPoint joinPoint){
    	String methodName = joinPoint.getSignature().getName();
    	if(methodName.indexOf("submit")>=0){
    		return 1;
    	}else{
    		return 0;
    	}
    }
}
