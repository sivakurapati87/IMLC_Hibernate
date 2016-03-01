package com.intuiture.imlc.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.intuiture.imlc.json.DocumentJson;
import com.intuiture.imlc.service.DocumentService;

@RestController
@RequestMapping("/DocumentController")
public class DocumentController {
	@Autowired
	private DocumentService documentService;

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

	@RequestMapping(value = "/getAllDocuments", method = RequestMethod.GET)
	@ResponseBody
	public List<DocumentJson> getAllDocuments() {
		return documentService.getAllDocuments();
	}

}
