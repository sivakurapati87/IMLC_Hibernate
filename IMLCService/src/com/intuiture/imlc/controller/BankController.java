package com.intuiture.imlc.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.intuiture.imlc.json.BankJson;
import com.intuiture.imlc.service.BankService;

@RestController
@RequestMapping("/BankController")
public class BankController {
	@Autowired
	private BankService bankService;

	// @RequestMapping(value = "/saveOrUpdatePrimaryDetails", method =
	// RequestMethod.POST)
	// @ResponseBody
	// public Boolean saveOrUpdatePrimaryDetails(HttpServletRequest request,
	// HttpServletResponse response, @RequestBody ImportLCIssueJson
	// importLCIssueJson) {
	// if (importLCIssueJson != null && importLCIssueJson.getStrExpiry_Date() !=
	// null) {
	// importLCIssueJson.setExpiry_Date(TransformDomainToJson.convertDiffferentFormatString(importLCIssueJson.getStrExpiry_Date()));
	// }
	// return primaryDetailService.saveOrUpdatePFInfo(importLCIssueJson);
	// }

	@RequestMapping(value = "/getAllBanks", method = RequestMethod.GET)
	@ResponseBody
	public List<BankJson> getAllBanks() {
		return bankService.getAllBanks();
	}

}
