package com.ozh.module.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/***
 * 用户控制器
 * @author ozh
 *
 */
@Controller
@RequestMapping(value = "user")
public class UserController {

    /***
     * 用户登陆
     * <p>注解配置，只允许POST提交到该方法
     * @param username
     * @param password
     * @return
     */
    @RequestMapping(value="login",method=RequestMethod.POST)
    public String login(ModelMap model, String username, String password){
        //验证传递过来的参数是否正确，否则返回到登陆页面。
        if(this.checkParams(new String[]{username,password})){
            //指定要返回的页面为succ.jsp
            //ModelAndView mav = new ModelAndView("succ");
            //将参数返回给页面
            //model.addObject("username",username);
            //model.addObject("password", password);
            model.put("username", username);
            model.put("password", password);
            return "succ";
        }
        return "other";
    }

    /***
     * 用户登陆
     * <p>注解配置，只允许POST提交到该方法
     * @return
     */
    @RequestMapping(value="home.html",method=RequestMethod.GET)
    public String home(){
        return "home";
    }

//	/***
//	 * 另一种参数传递的形式
//	 * 通过request来处理请求过来的参数。
//	 * @param username
//	 * @param password
//	 * @param request
//	 * @return
//	 */
//	@RequestMapping(value="login",method=RequestMethod.POST)
//	public ModelAndView login(String username,String password,HttpServletRequest request){
//		request.setAttribute("username", username);
//		request.setAttribute("password", password);
//		return new ModelAndView("succ");
//	}

    /***
     * 验证参数
     * @param params
     * @return
     */
    private boolean checkParams(String[] params){
        for(String param:params){
            if(param==""||param==null||param.isEmpty()){
                return false;
            }
        }
        return true;
    }
}
