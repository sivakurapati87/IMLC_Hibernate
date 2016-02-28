package com.intuiture.imlc.controller;

import java.util.Arrays;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.Random;

import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.intuiture.imlc.bean.Primary_DetailBean;
import com.intuiture.imlc.json.CounterpartyJson;
import com.intuiture.imlc.json.CustomerJson;
import com.intuiture.imlc.json.GlobalParameterJson;
import com.intuiture.imlc.json.ImportLCIssueJson;
import com.intuiture.imlc.json.LookUpDetailJson;
import com.intuiture.imlc.util.CommonUtil;
import com.intuiture.imlc.util.Constants;

@RestController
@RequestMapping("/PrimaryDetailController")
public class PrimaryDetailController {
	@SuppressWarnings("unchecked")
	@RequestMapping(value = "/init")
	@ResponseBody
	public Primary_DetailBean init() {
		Primary_DetailBean bean = new Primary_DetailBean();
		String[] lookUpTypes = { Constants.APPLICABLERULE, Constants.TRANSCUSTBENIFICIARY, Constants.ISSUEBTNSTATES };
		List<String> typesList = Arrays.asList(lookUpTypes);
		Map<String, List<LookUpDetailJson>> lookUpMap = CommonUtil.getLookupDetailsListByTypeList(Constants.LookUp.GETLOOKUPDETAILSBYTYPELIST, typesList);
		// bean.setTypeOfLCList(lookUpMap.get(Constants.TEMPLATE));
		bean.setProductIdsList((List<GlobalParameterJson>) CommonUtil.findAll(Constants.GlobalParameter.FINDALL));
		bean.setBenificieriesList((List<CounterpartyJson>) CommonUtil.findAll(Constants.CounterParty.FINDALL));
		bean.setCustomersList((List<CustomerJson>) CommonUtil.findAll(Constants.Customer.FINDALL));
		bean.setApplicableRules(lookUpMap.get(Constants.APPLICABLERULE));
		bean.setTransNr_CustomerOrBenificiaryIdList(lookUpMap.get(Constants.TRANSCUSTBENIFICIARY));
		bean.setIssueRadioBtnStatusList(lookUpMap.get(Constants.ISSUEBTNSTATES));
		bean.setCountryList(CommonUtil.getAllCountries());
		bean.setLcAmountList(CommonUtil.getAllCurrency());
		return bean;
	}

	@RequestMapping(value = "/init_ImportLCIssueJson", method = RequestMethod.GET)
	@ResponseBody
	public ImportLCIssueJson init_ImportLCIssueJson() {
		Random ran = new Random();
		ImportLCIssueJson json = new ImportLCIssueJson();
		json.setTransaction_Ref_number(String.valueOf(100000 + ran.nextInt(900000)));// Generating
																						// 6
																						// random
																						// numbers
		json.setLimitAvailable_For_Utilization(Long.parseLong(String.valueOf(1000000 + ran.nextInt(9000000))));// Generating
																												// 7
																												// random
																												// numbers
		json.setStrCreation_Date(CommonUtil.convertDateToString(new Date()));
		json.setStrIssue_Date(CommonUtil.convertDateToString(new Date()));
		json.setSub_Msg_Type("MT700");
		return json;
	}

	@RequestMapping(value = "/submit", method = RequestMethod.POST)
	@ResponseBody
	public Boolean submit(@RequestBody ImportLCIssueJson importLCIssueJson) {

		if (CommonUtil.compareTwoDates(CommonUtil.convertDiffferentFormatString(importLCIssueJson.getStrExpiry_Date()), CommonUtil.convertDiffferentFormatString(importLCIssueJson.getStrIssue_Date())) <= 0) {
			return null;
		} else {
			CommonUtil.submitPrimaryDetails(importLCIssueJson);
		}
		return true;
	}
}
