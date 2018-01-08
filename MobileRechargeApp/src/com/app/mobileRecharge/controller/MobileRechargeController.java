package com.app.mobileRecharge.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.app.mobileRecharge.DAO.MobileRechargeDAO;
import com.app.mobileRecharge.DTO.MobileRechargeDTO;
import com.app.mobileRecharge.DTO.RechargeDTO;
import com.app.mobileRecharge.Service.MobileRechargeService;

@Component
@RequestMapping("/")
public class MobileRechargeController {

	private int mobNum=0;
	
	@Autowired
	private MobileRechargeService service;

	@RequestMapping(value = { "/", "/login" }, method = RequestMethod.GET)
	public ModelAndView getpage1() {
		ModelAndView mv = new ModelAndView("customer/Login");
		mv.addObject("homeactive", "active");
		return mv;

	}

	@RequestMapping(value = { "/home" }, method = RequestMethod.GET)
	public ModelAndView getpage() {
		ModelAndView mv = new ModelAndView("home/home");
		mv.addObject("homeactive", "active");
		return mv;

	}
	
	@RequestMapping(value = { "/userhome" }, method = RequestMethod.GET)
	public ModelAndView getpage2() {
		ModelAndView mv = new ModelAndView("home/userHome");
		mv.addObject("homeactive", "active");
		return mv;

	}

	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public ModelAndView register(@ModelAttribute MobileRechargeDTO dto) {
		System.out.println("inside controller");
		service.register(dto);

		ModelAndView mv = new ModelAndView();

		System.out.println("inside controller 1");
		mv.setViewName("customer/register");
		mv.addObject("fname", dto.getFname());

		return mv;

	}

	@RequestMapping(value = "/load", method = RequestMethod.GET)
	public ModelAndView load() {
		List<MobileRechargeDTO> mob = service.load();
		ModelAndView mv = new ModelAndView();
		mv.setViewName("list");
		mv.addObject("info", mob);

		mv.addObject("customerActive", "active");
		mv.addObject("customerListActive", "active");
		return mv;
	}

	@RequestMapping(value = "/viewProfile", method = RequestMethod.GET)
	public ModelAndView viewProfile(@ModelAttribute MobileRechargeDTO dto) {
		ModelAndView mv = new ModelAndView();
		dto.setMobNo(mobNum);
		MobileRechargeDTO mob = service.viewProfile(dto);
		if (mob != null) {
			System.out.println("inside Search Controller");
			mv.setViewName("customer/UserDetails");
			mv.addObject("fname", mob.getFname());
			mv.addObject("lname", mob.getLname());
			mv.addObject("DOB", mob.getDOB());
			mv.addObject("gender", mob.getGender());
			mv.addObject("mobNo", mob.getMobNo());
			mv.addObject("isAdmin", mob.getIsAdmin());
			mv.addObject("gmail", mob.getGmail());
		} else {
			mv.setViewName("customer/Login");
			mv.addObject("ErrorMessage", "Name Not Found");
		}

		mv.addObject("customerActive", "active");
		mv.addObject("customerViewActive", "active");
		return mv;
	}

	@RequestMapping(value = "/delete/{mobNo}", method = RequestMethod.GET)
	public String delete(@PathVariable("mobNo") long mobNo) {
		service.delete(mobNo);
		return "redirect:/load";
	}

	@RequestMapping(value = "/edit1/{mobNo}", method = RequestMethod.GET)
	public ModelAndView edit(@PathVariable("mobNo") long mobNo) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("editProfile");
		MobileRechargeDTO mobile = service.find(mobNo);
		mv.addObject("info", mobile);
		System.out.println("inside edit");
		return mv;
	}

	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String update(@ModelAttribute MobileRechargeDTO dto) {

		System.out.println("inside update");
		if (dto.getMobNo() > 0) {
			System.out.println(dto.getFname());

			service.update(dto);
			;
		}
		return "redirect:/load";
	}

	@RequestMapping(value = "/search", method = RequestMethod.GET)
	public ModelAndView search(@ModelAttribute MobileRechargeDTO dto) {
		ModelAndView mv = new ModelAndView("customer/Search");

		MobileRechargeDTO mob = service.search(dto);
		if (mob != null) {
			System.out.println("inside Search Controller");
			mv.setViewName("customer/AllSearchValue");
			mv.addObject("fname", mob.getFname());
			mv.addObject("lname", mob.getLname());
			mv.addObject("DOB", mob.getDOB());
			mv.addObject("gender", mob.getGender());
			mv.addObject("mobNo", mob.getMobNo());
			mv.addObject("isAdmin", mob.getIsAdmin());
			mv.addObject("gmail", mob.getGmail());
		} else {
			mv.setViewName("customer/Search");
			mv.addObject("ErrorMessage", "Name Not Found");
		}

		mv.addObject("customerActive", "active");
		mv.addObject("customerSearchActive", "active");
		return mv;

	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public ModelAndView login(@ModelAttribute MobileRechargeDTO dto) {
		System.out.println("inside login");
		ModelAndView mv = new ModelAndView();
		String isAdmin = service.login(dto);
		if (isAdmin != null) {
			if (isAdmin.equals("YES")) {
				System.out.println("inside login2");
				mv.setViewName("home/home");
				mv.addObject("info", dto.getGmail());
			} else {
				mv.setViewName("home/userHome");
				mv.addObject("info", dto.getGmail());
			}

		} else {
			mv.setViewName("customer/Login");
			mv.addObject("ErrorMessage", "Invalid User name Or Pass");
		}
		
		//mv.addObject("customerActive", "active");
		mv.addObject("customerLoginActive", "active");
		return mv;
	}
	
	@RequestMapping(value = "/recharge", method = RequestMethod.GET)
	public ModelAndView recharge(@ModelAttribute RechargeDTO dto)
	{
		ModelAndView mv=new ModelAndView();
		dto.setUserId(mobNum);
		service.recharge(dto);
		
		mv.setViewName("customer/rechargeForm");
		mv.addObject("form",dto.getTransactionId());
		//mv.setViewName("customer/SucessRecharge");
		//mv.addObject("form",dto.getTransactionId());
		
		mv.addObject("customerActive", "active");
		mv.addObject("customerRecargeActive", "active");
		return mv;
	}

	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpServletRequest req) {
		HttpSession session = req.getSession(false);
		if (session != null) {
			session.invalidate();
			System.out.println("inside logout");
		}
		return ("redirect:/login");

	}

}
