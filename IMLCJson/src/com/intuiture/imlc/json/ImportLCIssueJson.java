package com.intuiture.imlc.json;

import java.util.Date;

public class ImportLCIssueJson {
	private Integer importLCIssueId;
	private String transaction_Ref_number;
	private String sub_Msg_Type;
	private Long customerId;
	private String productID;
	private String type_of_LC;
	private Double lCAmount;
	private String purchase_Order_Number;
	private String liabilityAccountsImportLC;
	private Date creation_Date;
	private Date issue_Date;
	private Date expiry_Date;
	private String city_Of_Expiry;
	private String country_of_Expiry;
	private Double lCAmount_Domestic_Currency;
	private Integer tolerance_Min;
	private Integer tolerance_Max;
	private Double max_Credit_Amount;
	private Double risk_Amount;
	private String counterpartyId;
	private String counterpartyName;
	private String counterpartyAddress;
	private Double exchange_Rate;
	private String applicable_Rules;
	private String strCreation_Date;
	private String strIssue_Date;
	private String strExpiry_Date;
	private String customerName;
	private String customerAddress;
	private String confirming_Instructions;
	private String strLCAmount;
	private String lcAmountCurrency;
	private CustomerJson customerJson;
	private CounterpartyJson counterpartyJson;
	private Long limitAvailable_For_Utilization;
	private Integer statusId;
	private String remarks;

	public Integer getStatusId() {
		return statusId;
	}

	public void setStatusId(Integer statusId) {
		this.statusId = statusId;
	}

	public String getRemarks() {
		return remarks;
	}

	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}

	public String getCustomerName() {
		return customerName;
	}

	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}

	public String getCustomerAddress() {
		return customerAddress;
	}

	public void setCustomerAddress(String customerAddress) {
		this.customerAddress = customerAddress;
	}

	public Integer getImportLCIssueId() {
		return importLCIssueId;
	}

	public void setImportLCIssueId(Integer importLCIssueId) {
		this.importLCIssueId = importLCIssueId;
	}

	public String getTransaction_Ref_number() {
		return transaction_Ref_number;
	}

	public void setTransaction_Ref_number(String transaction_Ref_number) {
		this.transaction_Ref_number = transaction_Ref_number;
	}

	public String getSub_Msg_Type() {
		return sub_Msg_Type;
	}

	public void setSub_Msg_Type(String sub_Msg_Type) {
		this.sub_Msg_Type = sub_Msg_Type;
	}

	public Long getCustomerId() {
		return customerId;
	}

	public void setCustomerId(Long customerId) {
		this.customerId = customerId;
	}

	public String getProductID() {
		return productID;
	}

	public void setProductID(String productID) {
		this.productID = productID;
	}

	public String getType_of_LC() {
		return type_of_LC;
	}

	public void setType_of_LC(String type_of_LC) {
		this.type_of_LC = type_of_LC;
	}

	public Double getlCAmount() {
		return lCAmount;
	}

	public void setlCAmount(Double lCAmount) {
		this.lCAmount = lCAmount;
	}

	public String getPurchase_Order_Number() {
		return purchase_Order_Number;
	}

	public void setPurchase_Order_Number(String purchase_Order_Number) {
		this.purchase_Order_Number = purchase_Order_Number;
	}

	public String getLiabilityAccountsImportLC() {
		return liabilityAccountsImportLC;
	}

	public void setLiabilityAccountsImportLC(String liabilityAccountsImportLC) {
		this.liabilityAccountsImportLC = liabilityAccountsImportLC;
	}

	public Date getCreation_Date() {
		return creation_Date;
	}

	public void setCreation_Date(Date creation_Date) {
		this.creation_Date = creation_Date;
	}

	public Date getIssue_Date() {
		return issue_Date;
	}

	public void setIssue_Date(Date issue_Date) {
		this.issue_Date = issue_Date;
	}

	public Date getExpiry_Date() {
		return expiry_Date;
	}

	public void setExpiry_Date(Date expiry_Date) {
		this.expiry_Date = expiry_Date;
	}

	public String getCity_Of_Expiry() {
		return city_Of_Expiry;
	}

	public void setCity_Of_Expiry(String city_Of_Expiry) {
		this.city_Of_Expiry = city_Of_Expiry;
	}

	public String getCountry_of_Expiry() {
		return country_of_Expiry;
	}

	public void setCountry_of_Expiry(String country_of_Expiry) {
		this.country_of_Expiry = country_of_Expiry;
	}

	public Double getlCAmount_Domestic_Currency() {
		return lCAmount_Domestic_Currency;
	}

	public void setlCAmount_Domestic_Currency(Double lCAmount_Domestic_Currency) {
		this.lCAmount_Domestic_Currency = lCAmount_Domestic_Currency;
	}

	public Integer getTolerance_Min() {
		return tolerance_Min;
	}

	public void setTolerance_Min(Integer tolerance_Min) {
		this.tolerance_Min = tolerance_Min;
	}

	public Integer getTolerance_Max() {
		return tolerance_Max;
	}

	public void setTolerance_Max(Integer tolerance_Max) {
		this.tolerance_Max = tolerance_Max;
	}

	public Double getMax_Credit_Amount() {
		return max_Credit_Amount;
	}

	public void setMax_Credit_Amount(Double max_Credit_Amount) {
		this.max_Credit_Amount = max_Credit_Amount;
	}

	public Double getRisk_Amount() {
		return risk_Amount;
	}

	public void setRisk_Amount(Double risk_Amount) {
		this.risk_Amount = risk_Amount;
	}

	public String getCounterpartyId() {
		return counterpartyId;
	}

	public void setCounterpartyId(String counterpartyId) {
		this.counterpartyId = counterpartyId;
	}

	public String getCounterpartyName() {
		return counterpartyName;
	}

	public void setCounterpartyName(String counterpartyName) {
		this.counterpartyName = counterpartyName;
	}

	public String getCounterpartyAddress() {
		return counterpartyAddress;
	}

	public void setCounterpartyAddress(String counterpartyAddress) {
		this.counterpartyAddress = counterpartyAddress;
	}

	public Double getExchange_Rate() {
		return exchange_Rate;
	}

	public void setExchange_Rate(Double exchange_Rate) {
		this.exchange_Rate = exchange_Rate;
	}

	public String getApplicable_Rules() {
		return applicable_Rules;
	}

	public void setApplicable_Rules(String applicable_Rules) {
		this.applicable_Rules = applicable_Rules;
	}

	public String getStrCreation_Date() {
		return strCreation_Date;
	}

	public void setStrCreation_Date(String strCreation_Date) {
		this.strCreation_Date = strCreation_Date;
	}

	public String getStrIssue_Date() {
		return strIssue_Date;
	}

	public void setStrIssue_Date(String strIssue_Date) {
		this.strIssue_Date = strIssue_Date;
	}

	public String getStrExpiry_Date() {
		return strExpiry_Date;
	}

	public void setStrExpiry_Date(String strExpiry_Date) {
		this.strExpiry_Date = strExpiry_Date;
	}

	public String getConfirming_Instructions() {
		return confirming_Instructions;
	}

	public void setConfirming_Instructions(String confirming_Instructions) {
		this.confirming_Instructions = confirming_Instructions;
	}

	public String getStrLCAmount() {
		return strLCAmount;
	}

	public void setStrLCAmount(String strLCAmount) {
		this.strLCAmount = strLCAmount;
	}

	public String getLcAmountCurrency() {
		return lcAmountCurrency;
	}

	public void setLcAmountCurrency(String lcAmountCurrency) {
		this.lcAmountCurrency = lcAmountCurrency;
	}

	public CustomerJson getCustomerJson() {
		return customerJson;
	}

	public void setCustomerJson(CustomerJson customerJson) {
		this.customerJson = customerJson;
	}

	public CounterpartyJson getCounterpartyJson() {
		return counterpartyJson;
	}

	public void setCounterpartyJson(CounterpartyJson counterpartyJson) {
		this.counterpartyJson = counterpartyJson;
	}

	public Long getLimitAvailable_For_Utilization() {
		return limitAvailable_For_Utilization;
	}

	public void setLimitAvailable_For_Utilization(Long limitAvailable_For_Utilization) {
		this.limitAvailable_For_Utilization = limitAvailable_For_Utilization;
	}

}
