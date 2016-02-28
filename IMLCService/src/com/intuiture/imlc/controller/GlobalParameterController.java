package com.intuiture.imlc.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.intuiture.imlc.json.GlobalParameterJson;
import com.intuiture.imlc.json.LookUpDetailJson;
import com.intuiture.imlc.service.GlobalParameterService;
import com.intuiture.imlc.util.TransformDomainToJson;

@Controller
@RequestMapping("/ImportLCGlobalParameterDeclarationController")
public class GlobalParameterController {

	@Autowired
	private GlobalParameterService globalParameterService;

//	@RequestMapping(value = "/", method = RequestMethod.GET)
//	@ResponseBody
//	public List<GlobalParameterJson> list() {
//		// new org.springframework.security.core.userdetails.User(username,
//		// password, authorities)
//		return null;
//
//	}
	@RequestMapping(value = "/checkTheExistenceOfRecords", method = RequestMethod.GET)
	@ResponseBody
	public Long checkTheExistenceOfRecords(HttpServletRequest request, HttpServletResponse response) {
		return globalParameterService.checkTheExistenceOfRecords();
	}
	@RequestMapping(value = "/findGlobalParameterByProductId_TemplateType", method = RequestMethod.GET)
	@ResponseBody
	public GlobalParameterJson findGlobalParameterByProductId_TemplateType(@RequestParam("productId") String productId, @RequestParam("template") String template) {
		return globalParameterService.findGlobalParameterByProductId_TemplateType(productId, template);
	}

	@RequestMapping(value = "/saveOrUpdateGlobalParameter", method = RequestMethod.POST)
	@ResponseBody
	public Boolean saveOrUpdateGlobalParameter(HttpServletRequest request, HttpServletResponse response, @RequestBody GlobalParameterJson globalParameterJson) {
		if (globalParameterJson != null && globalParameterJson.getStrEffective_From() != null) {
			globalParameterJson.setEffective_From(TransformDomainToJson.convertDiffferentFormatString(globalParameterJson.getStrEffective_From()));
		}
		return globalParameterService.saveOrUpdatePFInfo(globalParameterJson);
	}
	@RequestMapping(value = "/findTemplateTypesByProductId/{productId}", method = RequestMethod.GET)
	@ResponseBody
	public List<LookUpDetailJson> findTemplateTypesByProductId(@PathVariable("productId") String productId) {
		return globalParameterService.findTemplateTypesByProductId(productId);
	}
	@RequestMapping(value = "/findAllProductIds", method = RequestMethod.GET)
	@ResponseBody
	public List<GlobalParameterJson> findAllProductIds() {
		return globalParameterService.findAllProductIds();
	}

}
