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
	String viewTemplate = "/jsp/main_template.jsp";
	String subViewTemplate = "/jsp/sub_template.jsp";
	
	/*
	@RequestMapping(value = "/test")
	public String test() {
		System.out.println("==========>test");
		model.addAttribute(viewPage, "test.jsp");
		return viewTemplate;
	}
	*/
	
	@RequestMapping(value = "/mainTemplate.do")
	public String mainPage(Model model , UserVO vo) {
		System.out.println("==========>mainTemplate");
		userService.selectUserIdList(vo);
		model.addAttribute(viewPage, "shop_main_page.jsp");
		return viewTemplate;
	}
	
	//로그인 폼 이동
	@RequestMapping(value = "/shopLogin.do")
	public String shopLoginPage(Model model ) {
		System.out.println("==========>shopLoginPage");
		model.addAttribute(viewPage, "user_login_form.jsp");
		return subViewTemplate;
	}
	
	//회원가입 폼 이동
		@RequestMapping(value = "/shopJoin.do")
		public String shopJoinPage(Model model ) {
			System.out.println("==========>shopLoginPage");
			model.addAttribute(viewPage, "user_join_form.jsp");
			return subViewTemplate;
		}

}
