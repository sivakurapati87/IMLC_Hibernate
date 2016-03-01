package com.intuiture.imlc.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.intuiture.imlc.json.IncotermsJson;
import com.intuiture.imlc.service.IncotermsService;

@RestController
@RequestMapping("/IncotermsController")
public class IncotermsController {
	@Autowired
	private IncotermsService incotermsService;

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

	@RequestMapping(value = "/getAllIncoterms", method = RequestMethod.GET)
	@ResponseBody
	public List<IncotermsJson> getAllIncoterms() {
		return incotermsService.getAllIncoterms();
	}

}
