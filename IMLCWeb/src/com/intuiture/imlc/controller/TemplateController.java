package com.intuiture.imlc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TemplateController {// Serves Templates.

	// login
	@RequestMapping(value = "/login")
	public String loginPage() {
		return "template/login";
	}

	// Sign out
	@RequestMapping(value = "/signout")
	public String signout() {
		return "template/login";
	}

	// home
	@RequestMapping(value = "/home")
	public String homePage() {
		return "template/home";
	}

	// Home Headers
	@RequestMapping(value = "/home_header")
	public String home_header() {
		return "template/home_header";
	}

	// Header Tab
	@RequestMapping(value = "/header_tab")
	public String header_tab() {
		return "template/header_tab";
	}

	// Advising bank
	@RequestMapping(value = "/advising_bank")
	public String advising_bank() {
		return "template/advising_bank";
	}

	// @RequestMapping(value = "/report_Home_header")
	// public String report_Home_header() {
	// return "template/report_Home_header";
	// }

	// footer
	@RequestMapping(value = "/footer")
	public String footer() {
		return "template/footer";
	}

	// import pages
	@RequestMapping(value = "/global_parameters")
	public String global_parameters() {
		return "template/global_parameters";
	}

	@RequestMapping(value = "/primary_details")
	public String primary_details() {
		return "template/primary_details";
	}

	// report pages
	@RequestMapping(value = "/jasper_Text_Report")
	public String jasper_Text_Report() {
		return "template/jasper_Text_Report";
	}

	@RequestMapping(value = "/swift_Message")
	public String swift_Message() {
		return "template/swift_Message";
	}

}
