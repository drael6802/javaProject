package com.spring.view;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.biz.UserService;
import com.spring.biz.vo.UserVO;

@Controller
public class ItemController {
	//@Resource(name = "BoardService")
	
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

}
