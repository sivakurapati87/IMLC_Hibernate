package com.intuiture.imlc.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.intuiture.imlc.json.SwiftJson;
import com.intuiture.imlc.service.SwiftService;

@Controller
@RequestMapping("/SwiftController")
public class SwiftController {

	@Autowired
	private SwiftService swiftService;

	/**
	 * This method is to get the swift info based on transaction ref number
	 * 
	 * @param transaction_Type
	 * @param transaction_Ref_number
	 * @return
	 */
	@RequestMapping(value = "/getAllSwiftByTransactionType", method = RequestMethod.GET)
	@ResponseBody
	public List<SwiftJson> getAllSwiftByTransactionType(@RequestParam("transaction_Type") String transaction_Type, @RequestParam("transaction_Ref_number") String transaction_Ref_number) {
		return swiftService.getAllSwiftByTransactionType(transaction_Type, transaction_Ref_number);
	}
}
