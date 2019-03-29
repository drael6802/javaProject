package com.spring.view;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.biz.UserService;
import com.spring.biz.vo.UserVO;

@Controller
public class ShoppingController {
	@Resource(name = "UserService")
	UserService userService;
	
	String viewPage = "viewPage";
	String viewTemplate = "/jsp/Template_main.jsp";
	String subViewTemplate = "/jsp/Template_sub.jsp";
	
	/*
	@RequestMapping(value = "/test")
	public String test() {
		System.out.println("==========>test");
		model.addAttribute(viewPage, "test.jsp");
		return viewTemplate;
	}
	*/
	
	@RequestMapping(value = "/templateMain.do")
	public String mainPage(Model model , UserVO vo) {
		System.out.println("==========>mainTemplate");
		
		model.addAttribute(viewPage, "shop_main.jsp");
		return viewTemplate;
	}
	
	//로그인 폼 이동
	@RequestMapping(value = "/userLogin.do")
	public String userLogin(Model model ) {
		System.out.println("==========>userLogin");
		model.addAttribute(viewPage, "user_login.jsp");
		return subViewTemplate;
	}
	
	//회원가입 폼 이동
	@RequestMapping(value = "/userJoin.do")
	public String userJoin(Model model ) {
		System.out.println("==========>userJoin");
		model.addAttribute(viewPage, "user_join.jsp");
		return subViewTemplate;
	}
	
	//회원가입 폼 프로세스
	@RequestMapping(value = "/userJoinProc.do")
	public String userJoinProc(Model model , UserVO vo ) {
		System.out.println("==========>userJoin");
		model.addAttribute(viewPage, "shop_main.jsp");
		userService.insertUser(vo);
		System.out.println(vo.getUserId());
		
		
		return subViewTemplate;
	}

}
