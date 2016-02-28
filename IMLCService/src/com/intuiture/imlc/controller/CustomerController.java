package com.intuiture.imlc.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.intuiture.imlc.json.CustomerJson;
import com.intuiture.imlc.service.CustomerService;

@Controller
@RequestMapping("/CustomerController")
public class CustomerController {

	@Autowired
	private CustomerService customerService;

	@RequestMapping(value = "/getCustomerInfoByCustomerId/{customerId}", method = RequestMethod.GET)
	@ResponseBody
	public CustomerJson getCustomerInfoByCustomerId(@PathVariable("customerId") Long customerId) {
		return customerService.getCustomerInfoByCustomerId(customerId);
	}

	@RequestMapping(value = "/getAllCustomersInfo", method = RequestMethod.GET)
	@ResponseBody
	public List<CustomerJson> getAllCustomersInfo() {
		return customerService.getAllCustomersInfo();
	}

}
