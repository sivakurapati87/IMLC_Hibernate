package com.intuiture.imlc.bean;

import java.util.List;

import com.intuiture.imlc.json.CounterpartyJson;
import com.intuiture.imlc.json.CountryJson;
import com.intuiture.imlc.json.CurrencyJson;
import com.intuiture.imlc.json.CustomerJson;
import com.intuiture.imlc.json.GlobalParameterJson;
import com.intuiture.imlc.json.LookUpDetailJson;

public class Primary_DetailBean {
	private List<LookUpDetailJson> typeOfLCList;
	private List<CurrencyJson> lcAmountList;
	private List<CountryJson> countryList;
	private List<LookUpDetailJson> applicableRules;
	private List<GlobalParameterJson> productIdsList;
	private List<CustomerJson> customersList;
	private List<CounterpartyJson> benificieriesList;
	private List<LookUpDetailJson> transNr_CustomerOrBenificiaryIdList;
	private List<LookUpDetailJson> issueRadioBtnStatusList;
	private List<LookUpDetailJson> confirmingInstructionsList;
	private List<LookUpDetailJson> permittedProhibittedList;
	private List<LookUpDetailJson> availableBankList;
	private List<LookUpDetailJson> tenorTypeList;
	private List<LookUpDetailJson> marginTypeList;

	public List<LookUpDetailJson> getConfirmingInstructionsList() {
		return confirmingInstructionsList;
	}

	public void setConfirmingInstructionsList(List<LookUpDetailJson> confirmingInstructionsList) {
		this.confirmingInstructionsList = confirmingInstructionsList;
	}

	public List<LookUpDetailJson> getPermittedProhibittedList() {
		return permittedProhibittedList;
	}

	public void setPermittedProhibittedList(List<LookUpDetailJson> permittedProhibittedList) {
		this.permittedProhibittedList = permittedProhibittedList;
	}

	public List<LookUpDetailJson> getAvailableBankList() {
		return availableBankList;
	}

	public void setAvailableBankList(List<LookUpDetailJson> availableBankList) {
		this.availableBankList = availableBankList;
	}

	public List<LookUpDetailJson> getTenorTypeList() {
		return tenorTypeList;
	}

	public void setTenorTypeList(List<LookUpDetailJson> tenorTypeList) {
		this.tenorTypeList = tenorTypeList;
	}

	public List<LookUpDetailJson> getMarginTypeList() {
		return marginTypeList;
	}

	public void setMarginTypeList(List<LookUpDetailJson> marginTypeList) {
		this.marginTypeList = marginTypeList;
	}

	public List<GlobalParameterJson> getProductIdsList() {
		return productIdsList;
	}

	public void setProductIdsList(List<GlobalParameterJson> productIdsList) {
		this.productIdsList = productIdsList;
	}

	public List<CustomerJson> getCustomersList() {
		return customersList;
	}

	public void setCustomersList(List<CustomerJson> customersList) {
		this.customersList = customersList;
	}

	public List<CounterpartyJson> getBenificieriesList() {
		return benificieriesList;
	}

	public void setBenificieriesList(List<CounterpartyJson> benificieriesList) {
		this.benificieriesList = benificieriesList;
	}

	public List<LookUpDetailJson> getTypeOfLCList() {
		return typeOfLCList;
	}

	public void setTypeOfLCList(List<LookUpDetailJson> typeOfLCList) {
		this.typeOfLCList = typeOfLCList;
	}

	public List<CurrencyJson> getLcAmountList() {
		return lcAmountList;
	}

	public void setLcAmountList(List<CurrencyJson> lcAmountList) {
		this.lcAmountList = lcAmountList;
	}

	public List<CountryJson> getCountryList() {
		return countryList;
	}

	public void setCountryList(List<CountryJson> countryList) {
		this.countryList = countryList;
	}

	public List<LookUpDetailJson> getApplicableRules() {
		return applicableRules;
	}

	public void setApplicableRules(List<LookUpDetailJson> applicableRules) {
		this.applicableRules = applicableRules;
	}

	public List<LookUpDetailJson> getTransNr_CustomerOrBenificiaryIdList() {
		return transNr_CustomerOrBenificiaryIdList;
	}

	public void setTransNr_CustomerOrBenificiaryIdList(List<LookUpDetailJson> transNr_CustomerOrBenificiaryIdList) {
		this.transNr_CustomerOrBenificiaryIdList = transNr_CustomerOrBenificiaryIdList;
	}

	public List<LookUpDetailJson> getIssueRadioBtnStatusList() {
		return issueRadioBtnStatusList;
	}

	public void setIssueRadioBtnStatusList(List<LookUpDetailJson> issueRadioBtnStatusList) {
		this.issueRadioBtnStatusList = issueRadioBtnStatusList;
	}

}
