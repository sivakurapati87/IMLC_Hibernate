package com.intuiture.imlc.controller;

import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.intuiture.imlc.bean.GlobalParameterBean;
import com.intuiture.imlc.json.GlobalParameterJson;
import com.intuiture.imlc.util.CommonUtil;

@RestController
@RequestMapping("/SwiftController")
public class SwiftController {
	@RequestMapping(value = "/init")
	@ResponseBody
	public GlobalParameterBean init() {
//		bean.setCustomersList((List<CustomerJson>) CommonUtil.findAll(Constants.Customer.FINDALL));
		return null;
	}

	@RequestMapping(value = "/submit", method = RequestMethod.POST)
	@ResponseBody
	public GlobalParameterBean submit(@RequestBody GlobalParameterJson json) {
		CommonUtil.submitGlobalParameter(json);
		return null;
	}
}
