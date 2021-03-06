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
	private String advisingBankId;
	private String advisingBankName;
	private String advisingBankAddress;
	private String adviseThroughBankID;
	private String adviseThroughBankName;
	private String adviseThroughBankAddress;
	private String reimbursementBankID;
	private String remibursementBankName;
	private String remibursementBankAddress;
	private String confirmingBankdID;
	private String confirmingBankName;
	private String documentId;
	private String documentName;
	private String documentDescription;

	private Date latestShipmentDate;
	private String strLatestShipmentDate;
	private String goodsCode;
	private String goodsDescription;
	private String incoterms;
	private String senderRecieverInfo;
	private Integer shipmentPeriod;
	private Integer periodOfPresentation;
	private String addtnlConditnReqd;
	private Integer numCopies;
	private String transshipment;
	private String partialShipment;
	private String placeOfDestination;
	private Double freightEndorsement;
	private String portofLoading;
	private String portofDelivery;
	private String placeofTakingCharge;
	private String instructionsNegotitatingBank;

	private String tenorType;
	private Double tenorTypeUsance;
	private Double tenorTypeSight;
	private String usnaceFrom;
	private String mixedPaymentDetails;
	private String deferredPayment;
	private String availableWithBank;
	private String availableWithBankID;
	private String availableWithBankName;
	private String availableWithBankAddress;
	private String availableWithBankBy;
	private String draftAt;
	private Double interestRate;

	private String marginType;
	private String debitAccountNum;
	private String creditAccountNum;
	private Integer marginPerCent;
	private Double marginAmt;
	private Double availableMargin;
	private Double netMargin;

	private Boolean isFinalSubmit = false;
	private DeferredPaymentJson deferredPaymentJson;

	public String getMarginType() {
		return marginType;
	}

	public void setMarginType(String marginType) {
		this.marginType = marginType;
	}

	public String getDebitAccountNum() {
		return debitAccountNum;
	}

	public void setDebitAccountNum(String debitAccountNum) {
		this.debitAccountNum = debitAccountNum;
	}

	public String getCreditAccountNum() {
		return creditAccountNum;
	}

	public void setCreditAccountNum(String creditAccountNum) {
		this.creditAccountNum = creditAccountNum;
	}

	public Integer getMarginPerCent() {
		return marginPerCent;
	}

	public void setMarginPerCent(Integer marginPerCent) {
		this.marginPerCent = marginPerCent;
	}

	public Double getMarginAmt() {
		return marginAmt;
	}

	public void setMarginAmt(Double marginAmt) {
		this.marginAmt = marginAmt;
	}

	public Double getAvailableMargin() {
		return availableMargin;
	}

	public void setAvailableMargin(Double availableMargin) {
		this.availableMargin = availableMargin;
	}

	public Double getNetMargin() {
		return netMargin;
	}

	public void setNetMargin(Double netMargin) {
		this.netMargin = netMargin;
	}

	public String getTenorType() {
		return tenorType;
	}

	public void setTenorType(String tenorType) {
		this.tenorType = tenorType;
	}

	public Double getTenorTypeUsance() {
		return tenorTypeUsance;
	}

	public void setTenorTypeUsance(Double tenorTypeUsance) {
		this.tenorTypeUsance = tenorTypeUsance;
	}

	public Double getTenorTypeSight() {
		return tenorTypeSight;
	}

	public void setTenorTypeSight(Double tenorTypeSight) {
		this.tenorTypeSight = tenorTypeSight;
	}

	public String getUsnaceFrom() {
		return usnaceFrom;
	}

	public void setUsnaceFrom(String usnaceFrom) {
		this.usnaceFrom = usnaceFrom;
	}

	public String getMixedPaymentDetails() {
		return mixedPaymentDetails;
	}

	public void setMixedPaymentDetails(String mixedPaymentDetails) {
		this.mixedPaymentDetails = mixedPaymentDetails;
	}

	public String getDeferredPayment() {
		return deferredPayment;
	}

	public void setDeferredPayment(String deferredPayment) {
		this.deferredPayment = deferredPayment;
	}

	public String getAvailableWithBank() {
		return availableWithBank;
	}

	public void setAvailableWithBank(String availableWithBank) {
		this.availableWithBank = availableWithBank;
	}

	public String getAvailableWithBankID() {
		return availableWithBankID;
	}

	public void setAvailableWithBankID(String availableWithBankID) {
		this.availableWithBankID = availableWithBankID;
	}

	public String getAvailableWithBankName() {
		return availableWithBankName;
	}

	public void setAvailableWithBankName(String availableWithBankName) {
		this.availableWithBankName = availableWithBankName;
	}

	public String getAvailableWithBankAddress() {
		return availableWithBankAddress;
	}

	public void setAvailableWithBankAddress(String availableWithBankAddress) {
		this.availableWithBankAddress = availableWithBankAddress;
	}

	public String getAvailableWithBankBy() {
		return availableWithBankBy;
	}

	public void setAvailableWithBankBy(String availableWithBankBy) {
		this.availableWithBankBy = availableWithBankBy;
	}

	public String getDraftAt() {
		return draftAt;
	}

	public void setDraftAt(String draftAt) {
		this.draftAt = draftAt;
	}

	public Double getInterestRate() {
		return interestRate;
	}

	public void setInterestRate(Double interestRate) {
		this.interestRate = interestRate;
	}

	public String getStrLatestShipmentDate() {
		return strLatestShipmentDate;
	}

	public void setStrLatestShipmentDate(String strLatestShipmentDate) {
		this.strLatestShipmentDate = strLatestShipmentDate;
	}

	public String getGoodsCode() {
		return goodsCode;
	}

	public void setGoodsCode(String goodsCode) {
		this.goodsCode = goodsCode;
	}

	public String getGoodsDescription() {
		return goodsDescription;
	}

	public void setGoodsDescription(String goodsDescription) {
		this.goodsDescription = goodsDescription;
	}

	public String getIncoterms() {
		return incoterms;
	}

	public void setIncoterms(String incoterms) {
		this.incoterms = incoterms;
	}

	public String getSenderRecieverInfo() {
		return senderRecieverInfo;
	}

	public void setSenderRecieverInfo(String senderRecieverInfo) {
		this.senderRecieverInfo = senderRecieverInfo;
	}

	public Integer getShipmentPeriod() {
		return shipmentPeriod;
	}

	public void setShipmentPeriod(Integer shipmentPeriod) {
		this.shipmentPeriod = shipmentPeriod;
	}

	public Integer getPeriodOfPresentation() {
		return periodOfPresentation;
	}

	public void setPeriodOfPresentation(Integer periodOfPresentation) {
		this.periodOfPresentation = periodOfPresentation;
	}

	public String getAddtnlConditnReqd() {
		return addtnlConditnReqd;
	}

	public void setAddtnlConditnReqd(String addtnlConditnReqd) {
		this.addtnlConditnReqd = addtnlConditnReqd;
	}

	public Integer getNumCopies() {
		return numCopies;
	}

	public void setNumCopies(Integer numCopies) {
		this.numCopies = numCopies;
	}

	public String getTransshipment() {
		return transshipment;
	}

	public void setTransshipment(String transshipment) {
		this.transshipment = transshipment;
	}

	public String getPartialShipment() {
		return partialShipment;
	}

	public void setPartialShipment(String partialShipment) {
		this.partialShipment = partialShipment;
	}

	public String getPlaceOfDestination() {
		return placeOfDestination;
	}

	public void setPlaceOfDestination(String placeOfDestination) {
		this.placeOfDestination = placeOfDestination;
	}

	public Double getFreightEndorsement() {
		return freightEndorsement;
	}

	public void setFreightEndorsement(Double freightEndorsement) {
		this.freightEndorsement = freightEndorsement;
	}

	public String getPortofLoading() {
		return portofLoading;
	}

	public void setPortofLoading(String portofLoading) {
		this.portofLoading = portofLoading;
	}

	public String getPortofDelivery() {
		return portofDelivery;
	}

	public void setPortofDelivery(String portofDelivery) {
		this.portofDelivery = portofDelivery;
	}

	public String getPlaceofTakingCharge() {
		return placeofTakingCharge;
	}

	public void setPlaceofTakingCharge(String placeofTakingCharge) {
		this.placeofTakingCharge = placeofTakingCharge;
	}

	public String getInstructionsNegotitatingBank() {
		return instructionsNegotitatingBank;
	}

	public void setInstructionsNegotitatingBank(String instructionsNegotitatingBank) {
		this.instructionsNegotitatingBank = instructionsNegotitatingBank;
	}

	public String getDocumentId() {
		return documentId;
	}

	public void setDocumentId(String documentId) {
		this.documentId = documentId;
	}

	public String getDocumentName() {
		return documentName;
	}

	public void setDocumentName(String documentName) {
		this.documentName = documentName;
	}

	public String getDocumentDescription() {
		return documentDescription;
	}

	public void setDocumentDescription(String documentDescription) {
		this.documentDescription = documentDescription;
	}

	public String getAdvisingBankId() {
		return advisingBankId;
	}

	public void setAdvisingBankId(String advisingBankId) {
		this.advisingBankId = advisingBankId;
	}

	public String getAdvisingBankName() {
		return advisingBankName;
	}

	public void setAdvisingBankName(String advisingBankName) {
		this.advisingBankName = advisingBankName;
	}

	public String getAdvisingBankAddress() {
		return advisingBankAddress;
	}

	public void setAdvisingBankAddress(String advisingBankAddress) {
		this.advisingBankAddress = advisingBankAddress;
	}

	public String getAdviseThroughBankID() {
		return adviseThroughBankID;
	}

	public void setAdviseThroughBankID(String adviseThroughBankID) {
		this.adviseThroughBankID = adviseThroughBankID;
	}

	public String getAdviseThroughBankName() {
		return adviseThroughBankName;
	}

	public void setAdviseThroughBankName(String adviseThroughBankName) {
		this.adviseThroughBankName = adviseThroughBankName;
	}

	public String getAdviseThroughBankAddress() {
		return adviseThroughBankAddress;
	}

	public void setAdviseThroughBankAddress(String adviseThroughBankAddress) {
		this.adviseThroughBankAddress = adviseThroughBankAddress;
	}

	public String getReimbursementBankID() {
		return reimbursementBankID;
	}

	public void setReimbursementBankID(String reimbursementBankID) {
		this.reimbursementBankID = reimbursementBankID;
	}

	public String getRemibursementBankName() {
		return remibursementBankName;
	}

	public void setRemibursementBankName(String remibursementBankName) {
		this.remibursementBankName = remibursementBankName;
	}

	public String getRemibursementBankAddress() {
		return remibursementBankAddress;
	}

	public void setRemibursementBankAddress(String remibursementBankAddress) {
		this.remibursementBankAddress = remibursementBankAddress;
	}

	public String getConfirmingBankdID() {
		return confirmingBankdID;
	}

	public void setConfirmingBankdID(String confirmingBankdID) {
		this.confirmingBankdID = confirmingBankdID;
	}

	public String getConfirmingBankName() {
		return confirmingBankName;
	}

	public void setConfirmingBankName(String confirmingBankName) {
		this.confirmingBankName = confirmingBankName;
	}

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

	public DeferredPaymentJson getDeferredPaymentJson() {
		return deferredPaymentJson;
	}

	public void setDeferredPaymentJson(DeferredPaymentJson deferredPaymentJson) {
		this.deferredPaymentJson = deferredPaymentJson;
	}

	public Date getLatestShipmentDate() {
		return latestShipmentDate;
	}

	public void setLatestShipmentDate(Date latestShipmentDate) {
		this.latestShipmentDate = latestShipmentDate;
	}

	public Boolean getIsFinalSubmit() {
		return isFinalSubmit;
	}

	public void setIsFinalSubmit(Boolean isFinalSubmit) {
		this.isFinalSubmit = isFinalSubmit;
	}

}
