package com.intuiture.imlc.util;

import java.util.Date;

import com.intuiture.imlc.entities.DeferredPayment;
import com.intuiture.imlc.entities.Global_Parameters;
import com.intuiture.imlc.entities.ImportLCIssue;
import com.intuiture.imlc.json.DeferredPaymentJson;
import com.intuiture.imlc.json.GlobalParameterJson;
import com.intuiture.imlc.json.ImportLCIssueJson;

public class TransformJsonToDomain {
	public static Global_Parameters getGlobal_Parameters(Global_Parameters global_Parameters, GlobalParameterJson json) {
		global_Parameters.setAccounting_For_Amendmen(json.getAccounting_For_Amendmen());
		global_Parameters.setAmortization(json.getAmortization());
		global_Parameters.setAuto_Reversal_On_Expiry(json.getAuto_Reversal_On_Expiry());
		global_Parameters.setAuto_Reversal_Period(json.getAuto_Reversal_Period());
		global_Parameters.setBusiness_Convention(json.getBusiness_Convention());
		global_Parameters.setContingent_Currency(json.getContingent_Currency());
		global_Parameters.setContingent_Entries_for_Bills(json.getContingent_Entries_for_Bills());
		global_Parameters.setContingent_Liability(json.getContingent_Liability());
		global_Parameters.setContingent_Reversal_Account_Entries(json.getContingent_Reversal_Account_Entries());
		global_Parameters.setEffective_From(json.getEffective_From());
		global_Parameters.setGrace_Days_For_Sight_Payment(json.getGrace_Days_For_Sight_Payment());
		global_Parameters.setMargin_Percent(json.getMargin_Percent());
		global_Parameters.setMaximum_Tenor_Days(json.getMaximum_Tenor_Days());
		global_Parameters.setOverdue_Intereset(json.getOverdue_Intereset());
		global_Parameters.setPeriod_Of_Presentation(json.getPeriod_Of_Presentation());
		global_Parameters.setProductId(json.getProductId());
		global_Parameters.setTolerance_Max(json.getTolerance_Max());
		global_Parameters.setTolerance_Min(json.getTolerance_Min());
		global_Parameters.setTolerance_Threshold_Limit(json.getTolerance_Threshold_Limit());
		global_Parameters.setType_Of_LC(json.getType_Of_LC());
		return global_Parameters;
	}

	public static ImportLCIssue getImportLCIssueFromJson(ImportLCIssue importLCIssue, ImportLCIssueJson json) {
		importLCIssue.setApplicable_Rules(json.getApplicable_Rules());
		importLCIssue.setCity_Of_Expiry(json.getCity_Of_Expiry());
		importLCIssue.setConfirming_Instructions(json.getConfirming_Instructions());
		importLCIssue.setCounterpartyAddress(json.getCounterpartyAddress());
		importLCIssue.setCounterpartyId(json.getCounterpartyId());
		importLCIssue.setCounterpartyName(json.getCounterpartyName());
		importLCIssue.setCountry_of_Expiry(json.getCountry_of_Expiry());
		importLCIssue.setCreation_Date(TransformDomainToJson.convertStringToDate(TransformDomainToJson.convertDateToString(new Date())));
		importLCIssue.setCustomerId(json.getCustomerId());
		importLCIssue.setExchange_Rate(json.getExchange_Rate());
		importLCIssue.setLimitAvailable_For_Utilization(json.getLimitAvailable_For_Utilization());
		if (json.getExpiry_Date() != null)
			importLCIssue.setExpiry_Date(json.getExpiry_Date());
		importLCIssue.setLcAmountCurrency(json.getLcAmountCurrency());
		importLCIssue.setIssue_Date(TransformDomainToJson.convertStringToDate(TransformDomainToJson.convertDateToString(new Date())));
		importLCIssue.setlCAmount(json.getlCAmount());
		importLCIssue.setlCAmount_Domestic_Currency(json.getlCAmount_Domestic_Currency());
		importLCIssue.setLiabilityAccountsImportLC(json.getLiabilityAccountsImportLC());
		importLCIssue.setMax_Credit_Amount(json.getMax_Credit_Amount());
		importLCIssue.setProductID(json.getProductID());
		importLCIssue.setPurchase_Order_Number(json.getPurchase_Order_Number());
		importLCIssue.setRisk_Amount(json.getRisk_Amount());
		importLCIssue.setSub_Msg_Type(json.getSub_Msg_Type());
		importLCIssue.setTolerance_Max(json.getTolerance_Max());
		importLCIssue.setTolerance_Min(json.getTolerance_Min());
		importLCIssue.setTransaction_Ref_number(json.getTransaction_Ref_number());
		importLCIssue.setType_of_LC(json.getType_of_LC());
		importLCIssue.setStatusId(json.getStatusId());
		importLCIssue.setRemarks(json.getRemarks());
		importLCIssue.setIsDeleted(Boolean.FALSE);
		if (json.getImportLCIssueId() != null) {
			importLCIssue.setUpdatedOn(new Date());
		}

		importLCIssue.setAdvisingBankId(json.getAdvisingBankId());
		importLCIssue.setAdvisingBankName(json.getAdvisingBankName());
		importLCIssue.setAdvisingBankAddress(json.getAdvisingBankAddress());
		importLCIssue.setAdviseThroughBankID(json.getAdviseThroughBankID());
		importLCIssue.setAdviseThroughBankName(json.getAdviseThroughBankName());
		importLCIssue.setAdviseThroughBankAddress(json.getAdviseThroughBankAddress());
		importLCIssue.setReimbursementBankID(json.getReimbursementBankID());
		importLCIssue.setRemibursementBankName(json.getRemibursementBankName());
		importLCIssue.setRemibursementBankAddress(json.getRemibursementBankAddress());
		importLCIssue.setConfirming_Instructions(json.getConfirming_Instructions());
		importLCIssue.setConfirmingBankdID(json.getConfirmingBankdID());
		importLCIssue.setConfirmingBankName(json.getConfirmingBankName());
		importLCIssue.setDocumentId(json.getDocumentId());
		importLCIssue.setDocumentName(json.getDocumentName());
		importLCIssue.setDocumentDescription(json.getDocumentDescription());

		importLCIssue.setLatestShipmentDate(json.getLatestShipmentDate());
		importLCIssue.setGoodsCode(json.getGoodsCode());
		importLCIssue.setGoodsDescription(json.getGoodsDescription());
		importLCIssue.setIncoterms(json.getIncoterms());
		importLCIssue.setSenderRecieverInfo(json.getSenderRecieverInfo());
		importLCIssue.setShipmentPeriod(json.getShipmentPeriod());
		importLCIssue.setPeriodOfPresentation(json.getPeriodOfPresentation());
		importLCIssue.setAddtnlConditnReqd(json.getAddtnlConditnReqd());
		importLCIssue.setNumCopies(json.getNumCopies());
		importLCIssue.setTransshipment(json.getTransshipment());
		importLCIssue.setPartialShipment(json.getPartialShipment());
		importLCIssue.setPlaceOfDestination(json.getPlaceOfDestination());
		importLCIssue.setFreightEndorsement(json.getFreightEndorsement());
		importLCIssue.setPortofLoading(json.getPortofLoading());
		importLCIssue.setPortofDelivery(json.getPortofDelivery());
		importLCIssue.setPlaceofTakingCharge(json.getPlaceofTakingCharge());
		importLCIssue.setInstructionsNegotitatingBank(json.getInstructionsNegotitatingBank());

		importLCIssue.setTenorType(json.getTenorType());
		importLCIssue.setTenorTypeUsance(json.getTenorTypeUsance());
		importLCIssue.setTenorTypeSight(json.getTenorTypeSight());
		importLCIssue.setUsnaceFrom(json.getUsnaceFrom());
		importLCIssue.setMixedPaymentDetails(json.getMixedPaymentDetails());
		// importLCIssue.setDeferredPayment(json.getDeferredPayment());
		importLCIssue.setAvailableWithBank(json.getAvailableWithBank());
		importLCIssue.setAvailableWithBankID(json.getAvailableWithBankID());
		importLCIssue.setAvailableWithBankName(json.getAvailableWithBankName());
		importLCIssue.setAvailableWithBankAddress(json.getAvailableWithBankAddress());
		importLCIssue.setAvailableWithBankBy(json.getAvailableWithBankBy());
		importLCIssue.setDraftAt(json.getDraftAt());
		importLCIssue.setInterestRate(json.getInterestRate());

		importLCIssue.setMarginType(json.getMarginType());
		importLCIssue.setDebitAccountNum(json.getDebitAccountNum());
		importLCIssue.setCreditAccountNum(json.getCreditAccountNum());
		importLCIssue.setMarginPerCent(json.getMarginPerCent());
		importLCIssue.setMarginAmt(json.getMarginAmt());
		importLCIssue.setAvailableMargin(json.getAvailableMargin());
		importLCIssue.setNetMargin(json.getNetMargin());

		return importLCIssue;
	}

	public static void getDeferredPaymentByJson(DeferredPayment deferredPayment, DeferredPaymentJson deferredPaymentJson) {
		deferredPayment.setAmount(deferredPaymentJson.getAmount());
		if (deferredPaymentJson.getDeferredPaymentId() != null) {
			deferredPayment.setCreatedOn(new Date());
		} else {
			deferredPayment.setUpdatedOn(new Date());
		}
		deferredPayment.setDate(deferredPaymentJson.getDate());
		deferredPayment.setImportLCIssueId(deferredPaymentJson.getImportLCIssueId());
		deferredPayment.setRemarks(deferredPaymentJson.getRemarks());
	}
}
