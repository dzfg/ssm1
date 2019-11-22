package com.zyz.ssm.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.zyz.ssm.pojo.User;
import com.zyz.ssm.service.IUserService;
import com.zyz.ssm.service.impl.UserService;

@Controller
@RequestMapping(value = "/user")
public class UserController {

	@Resource
	private IUserService userService;
	/*
	 * 添加
	 */
	@RequestMapping(value = "/addUser")
	public ModelAndView addUser(User user) {

		userService.addUser(user);

		ModelAndView mad = new ModelAndView();
		mad.setViewName("/success.jsp");

		
		return mad;

	}
	
	
    @RequestMapping("/selectAll")
    public String selectAll(Model model){
        List<User> list = userService.selectAllUser();
        model.addAttribute("list",list);
       
        return "/showAllUser.jsp";
    }

	}
	
	
	
	
	
	
	
	
	
	
	


