package com.intuiture.imlc.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.intuiture.imlc.json.ImportLCIssueJson;
import com.intuiture.imlc.service.PrimaryDetailService;
import com.intuiture.imlc.util.TransformDomainToJson;

@RestController
@RequestMapping("/PrimaryDetailController")
public class PrimaryDetailController {
	@Autowired
	private PrimaryDetailService primaryDetailService;

	@RequestMapping(value = "/saveOrUpdatePrimaryDetails", method = RequestMethod.POST)
	@ResponseBody
	public Integer saveOrUpdatePrimaryDetails(HttpServletRequest request, HttpServletResponse response, @RequestBody ImportLCIssueJson importLCIssueJson) {
		if (importLCIssueJson != null && importLCIssueJson.getStrExpiry_Date() != null) {
			importLCIssueJson.setExpiry_Date(TransformDomainToJson.convertDiffferentFormatString(importLCIssueJson.getStrExpiry_Date()));
		}
		if (importLCIssueJson != null && importLCIssueJson.getStrLatestShipmentDate() != null) {
			importLCIssueJson.setLatestShipmentDate(TransformDomainToJson.convertDiffferentFormatString(importLCIssueJson.getStrLatestShipmentDate()));
		}
		if (importLCIssueJson != null && importLCIssueJson.getDeferredPaymentJson() != null && importLCIssueJson.getDeferredPaymentJson().getStrDate() != null) {
			importLCIssueJson.getDeferredPaymentJson().setDate(TransformDomainToJson.convertDiffferentFormatString(importLCIssueJson.getDeferredPaymentJson().getStrDate()));
		}
		return primaryDetailService.saveOrUpdatePFInfo(importLCIssueJson);
	}

	@RequestMapping(value = "/getPrimaryDetailsByTransactionId/{transactionId}", method = RequestMethod.GET)
	@ResponseBody
	public ImportLCIssueJson getPrimaryDetailsByTransactionId(@PathVariable("transactionId") String transactionId) {
		return primaryDetailService.getPrimaryDetailsByTransactionId(transactionId);
	}

	@RequestMapping(value = "/getAllPrimaryDetails", method = RequestMethod.GET)
	@ResponseBody
	public List<ImportLCIssueJson> getAllPrimaryDetails() {
		return primaryDetailService.getAllPrimaryDetails();
	}

	@RequestMapping(value = "/getAllPrimaryDetailsByCustomerOrBenificiaryId", method = RequestMethod.GET)
	@ResponseBody
	public List<ImportLCIssueJson> getAllPrimaryDetailsByCustomerOrBenificiaryId(@RequestParam("customerId") Long customerId, @RequestParam("benificiaryId") String benificiaryId, @RequestParam("statusId") Integer statusId) {
		return primaryDetailService.getAllPrimaryDetailsByCustomerOrBenificiaryId(customerId, benificiaryId, statusId);
	}

	@RequestMapping(value = "/getAllPrimaryDetailsByStatusId/{statusId}", method = RequestMethod.GET)
	@ResponseBody
	public List<ImportLCIssueJson> getAllPrimaryDetailsByStatusId(@PathVariable("statusId") Integer statusId) {
		return primaryDetailService.getAllPrimaryDetailsByStatusId(statusId);
	}
}
