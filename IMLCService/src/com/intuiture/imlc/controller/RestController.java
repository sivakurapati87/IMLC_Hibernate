//package com.intuiture.imlc.controller;
//
//import java.util.List;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestMethod;
//import org.springframework.web.bind.annotation.ResponseBody;
//
//import com.intuiture.imlc.json.UserJson;
//import com.intuiture.imlc.services.DataService;
//
//@Controller
//@RequestMapping("/api/users")
//public class RestController {
//
//	@Autowired
//	DataService dataService;
//
//	@RequestMapping(value = "/", method = RequestMethod.GET)
//	@ResponseBody
//	public List<UserJson> list() {
////		new org.springframework.security.core.userdetails.User(username, password, authorities)
//		return dataService.getUserList();
//
//	}
//}
