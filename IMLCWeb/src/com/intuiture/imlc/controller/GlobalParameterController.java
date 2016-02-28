package com.intuiture.imlc.controller;

import java.util.Arrays;
import java.util.Date;
import java.util.List;
import java.util.Map;

import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.intuiture.imlc.bean.GlobalParameterBean;
import com.intuiture.imlc.json.GlobalParameterJson;
import com.intuiture.imlc.json.LookUpDetailJson;
import com.intuiture.imlc.util.CommonUtil;
import com.intuiture.imlc.util.Constants;

@RestController
@RequestMapping("/ImportLCGlobalParameterDeclarationController")
public class GlobalParameterController {
	@RequestMapping(value = "/init")
	@ResponseBody
	public GlobalParameterBean init() {
		GlobalParameterBean bean = new GlobalParameterBean();
		String[] lookUpTypes = { Constants.TRUEORFALSE, Constants.TEMPLATE, Constants.REVERSALENTRIES, Constants.ENTRIESFORBILL, Constants.CCURRENCY, Constants.BUSCONVENTION, Constants.ACCAMENDMENT };
		List<String> typesList = Arrays.asList(lookUpTypes);
		Map<String, List<LookUpDetailJson>> lookUpMap = CommonUtil.getLookupDetailsListByTypeList(Constants.LookUp.GETLOOKUPDETAILSBYTYPELIST, typesList);
		bean.setContingentLiabilityList(lookUpMap.get(Constants.TRUEORFALSE));
		bean.setAccounting_For_AmendmenList(lookUpMap.get(Constants.ACCAMENDMENT));
		bean.setBusiness_ConventionList(lookUpMap.get(Constants.BUSCONVENTION));
		bean.setContingent_CurrencyList(lookUpMap.get(Constants.CCURRENCY));
		bean.setContingent_Entries_for_BillsList(lookUpMap.get(Constants.ENTRIESFORBILL));
		bean.setContingent_Reversal_Account_EntriesList(lookUpMap.get(Constants.REVERSALENTRIES));
		bean.setTemplateList(lookUpMap.get(Constants.TEMPLATE));
		bean.setStrEffectiveFrom(CommonUtil.convertDateToString(new Date()));
		return bean;
	}

	@RequestMapping(value = "/submit", method = RequestMethod.POST)
	@ResponseBody
	public GlobalParameterBean submit(@RequestBody GlobalParameterJson json) {
		CommonUtil.submitGlobalParameter(json);
		return null;
	}
}
