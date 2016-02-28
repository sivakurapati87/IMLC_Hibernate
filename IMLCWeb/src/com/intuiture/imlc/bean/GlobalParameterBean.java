package com.intuiture.imlc.bean;

import java.util.List;

import com.intuiture.imlc.json.LookUpDetailJson;

public class GlobalParameterBean {
	private List<LookUpDetailJson> contingentLiabilityList;
	private List<LookUpDetailJson> contingent_Reversal_Account_EntriesList;
	private List<LookUpDetailJson> contingent_Entries_for_BillsList;
	private List<LookUpDetailJson> contingent_CurrencyList;
	private List<LookUpDetailJson> business_ConventionList;
	private List<LookUpDetailJson> accounting_For_AmendmenList;
	private List<LookUpDetailJson> templateList;
	private String strEffectiveFrom;

	public List<LookUpDetailJson> getContingentLiabilityList() {
		return contingentLiabilityList;
	}

	public void setContingentLiabilityList(List<LookUpDetailJson> contingentLiabilityList) {
		this.contingentLiabilityList = contingentLiabilityList;
	}

	public List<LookUpDetailJson> getContingent_Reversal_Account_EntriesList() {
		return contingent_Reversal_Account_EntriesList;
	}

	public void setContingent_Reversal_Account_EntriesList(List<LookUpDetailJson> contingent_Reversal_Account_EntriesList) {
		this.contingent_Reversal_Account_EntriesList = contingent_Reversal_Account_EntriesList;
	}

	public List<LookUpDetailJson> getContingent_Entries_for_BillsList() {
		return contingent_Entries_for_BillsList;
	}

	public void setContingent_Entries_for_BillsList(List<LookUpDetailJson> contingent_Entries_for_BillsList) {
		this.contingent_Entries_for_BillsList = contingent_Entries_for_BillsList;
	}

	public List<LookUpDetailJson> getContingent_CurrencyList() {
		return contingent_CurrencyList;
	}

	public void setContingent_CurrencyList(List<LookUpDetailJson> contingent_CurrencyList) {
		this.contingent_CurrencyList = contingent_CurrencyList;
	}

	public List<LookUpDetailJson> getBusiness_ConventionList() {
		return business_ConventionList;
	}

	public void setBusiness_ConventionList(List<LookUpDetailJson> business_ConventionList) {
		this.business_ConventionList = business_ConventionList;
	}

	public List<LookUpDetailJson> getAccounting_For_AmendmenList() {
		return accounting_For_AmendmenList;
	}

	public void setAccounting_For_AmendmenList(List<LookUpDetailJson> accounting_For_AmendmenList) {
		this.accounting_For_AmendmenList = accounting_For_AmendmenList;
	}

	public List<LookUpDetailJson> getTemplateList() {
		return templateList;
	}

	public void setTemplateList(List<LookUpDetailJson> templateList) {
		this.templateList = templateList;
	}

	public String getStrEffectiveFrom() {
		return strEffectiveFrom;
	}

	public void setStrEffectiveFrom(String strEffectiveFrom) {
		this.strEffectiveFrom = strEffectiveFrom;
	}

}
