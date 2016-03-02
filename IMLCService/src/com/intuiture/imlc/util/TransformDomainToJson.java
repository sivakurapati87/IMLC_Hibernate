package com.intuiture.imlc.util;

import java.lang.reflect.Field;
import java.math.BigDecimal;
import java.text.Format;
import java.text.NumberFormat;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import org.apache.log4j.Logger;

import com.intuiture.imlc.entities.Bank;
import com.intuiture.imlc.entities.Commodity;
import com.intuiture.imlc.entities.Counterparty;
import com.intuiture.imlc.entities.Country;
import com.intuiture.imlc.entities.Currency;
import com.intuiture.imlc.entities.Customer;
import com.intuiture.imlc.entities.DeferredPayment;
import com.intuiture.imlc.entities.Document;
import com.intuiture.imlc.entities.Global_Parameters;
import com.intuiture.imlc.entities.ImportLCIssue;
import com.intuiture.imlc.entities.Incoterms;
import com.intuiture.imlc.entities.LookUpDetails;
import com.intuiture.imlc.entities.Swift;
import com.intuiture.imlc.json.BankJson;
import com.intuiture.imlc.json.CommodityJson;
import com.intuiture.imlc.json.CounterpartyJson;
import com.intuiture.imlc.json.CountryJson;
import com.intuiture.imlc.json.CurrencyJson;
import com.intuiture.imlc.json.CustomerJson;
import com.intuiture.imlc.json.DeferredPaymentJson;
import com.intuiture.imlc.json.DocumentJson;
import com.intuiture.imlc.json.GlobalParameterJson;
import com.intuiture.imlc.json.ImportLCIssueJson;
import com.intuiture.imlc.json.IncotermsJson;
import com.intuiture.imlc.json.LookUpDetailJson;
import com.intuiture.imlc.json.SwiftJson;

public class TransformDomainToJson {
	private static Logger LOG = Logger.getLogger(TransformDomainToJson.class);
	private static SimpleDateFormat sdf = new SimpleDateFormat("dd-MMM-yyyy");

	public static List<Integer> splitStringInList(String idsInString) {
		Integer[] ids = splitString(idsInString);
		List<Integer> listOfIds = ids != null ? Arrays.asList(ids) : null;
		return listOfIds;
	}

	public static Integer[] splitString(String idsInString) {
		Integer[] ids = null;
		if (idsInString != null && idsInString.length() > 0) {
			String[] strIds = idsInString.split(",");
			ids = new Integer[strIds.length];
			for (int i = 0; i < strIds.length; i++) {
				ids[i] = Integer.parseInt(strIds[i]);
			}
		}
		return ids;
	}

	public static Date convertDiffferentFormatString(String str) {
		Date date = null;
		try {
			if (str != null && str.length() > 9) {
				SimpleDateFormat dateformat = null;
				String s1 = null;
				if (str.length() == 11) {
					dateformat = new SimpleDateFormat("dd-MMM-yyyy");
					s1 = str.subSequence(0, 11).toString();
				} else {
					dateformat = new SimpleDateFormat("yyyy-MM-dd");
					s1 = str.subSequence(0, 10).toString();
				}

				date = dateformat.parse(s1);
				date = convertStringToDate(convertDateToString(date));
			}
		} catch (Exception e) {
			e.printStackTrace();
			LOG.error("Error at convertDateToString() in TransformDomainToJson:" + e.getMessage(), e);
		}
		return date;
	}

	public static LookUpDetailJson getLookUpDetailJson(LookUpDetails lookUpDetails) {
		LookUpDetailJson json = new LookUpDetailJson();
		if (lookUpDetails != null) {
			json.setDescription(lookUpDetails.getDescription());
			json.setLookupDetailId(lookUpDetails.getLookupDetailId());
			json.setParent(lookUpDetails.getParent());
			json.setLookupMasterId(lookUpDetails.getLookupMasterId());
		}
		return json;
	}

	public static String convertDoubleToMoney(Double dbl) {
		String str = null;
		if (dbl != null) {
			Format format = NumberFormat.getCurrencyInstance(new Locale("en", "in"));
			str = format.format(new BigDecimal(dbl));
		}
		return str;
	}

	public static String concateStringValues(String[] strArray) {
		if (strArray != null && strArray.length > 0) {
			String strValue = null;
			for (String str : strArray) {
				if (strValue == null) {
					strValue = str;
				} else {
					strValue += "," + str;
				}
			}
			return strValue;
		}
		return null;
	}

	// public static String getInputStream(String fileName, String filePath) {
	// String inputStreamToString = null;
	// try {
	// File initialFile = new File(filePath + "\\" + fileName);
	// InputStream inputStream = new FileInputStream(initialFile);
	// inputStreamToString = IOUtils.toString(inputStream, "UTF-8");
	// } catch (Exception e) {
	// e.printStackTrace();
	// }
	// return inputStreamToString;
	//
	// }

	public static String[] getListOfStringsByIntArray(Integer[] listOfIds, Map<Integer, String> idWithDescriptionMap) {
		String[] strAmenities = null;
		if (listOfIds != null && listOfIds.length > 0) {
			strAmenities = new String[listOfIds.length];
			for (int i = 0; i < listOfIds.length; i++) {
				strAmenities[i] = idWithDescriptionMap.get(listOfIds[i]);
			}
		}
		return strAmenities;

	}

	public static Date convertStringToDate(String strDate) {
		Date date = null;
		try {
			if (strDate != null && strDate.trim().length() > 0) {
				date = sdf.parse(strDate);
			}

		} catch (Exception e) {
			e.printStackTrace();
			LOG.error("Error at convertStringToDate() in TransformDomainToJson:" + e.getMessage(), e);
		}
		return date;
	}

	/**
	 * This method is to convert Date to String
	 * 
	 * @param date
	 * @return
	 */
	public static String convertDateToString(Date date) {
		String strDate = null;
		try {
			if (date != null) {
				strDate = sdf.format(date);
			}

		} catch (Exception e) {
			e.printStackTrace();
			LOG.error("Error at convertDateToString() in TransformDomainToJson:" + e.getMessage(), e);
		}
		return strDate;
	}

	public static GlobalParameterJson getImportLCGlobalParameterJson(Global_Parameters global_Parameters) {
		GlobalParameterJson json = new GlobalParameterJson();
		json.setAccounting_For_Amendmen(global_Parameters.getAccounting_For_Amendmen());
		json.setAmortization(global_Parameters.getAmortization());
		json.setAuto_Reversal_On_Expiry(global_Parameters.getAuto_Reversal_On_Expiry());
		json.setAuto_Reversal_Period(global_Parameters.getAuto_Reversal_Period());
		json.setBusiness_Convention(global_Parameters.getBusiness_Convention());
		json.setContingent_Currency(global_Parameters.getContingent_Currency());
		json.setContingent_Entries_for_Bills(global_Parameters.getContingent_Entries_for_Bills());
		json.setContingent_Liability(global_Parameters.getContingent_Liability());
		json.setContingent_Reversal_Account_Entries(global_Parameters.getContingent_Reversal_Account_Entries());
		json.setEffective_From(global_Parameters.getEffective_From());
		json.setStrEffective_From(convertDateToString(json.getEffective_From()));
		json.setGlobal_ParameterId(global_Parameters.getGlobal_ParameterId());
		json.setGrace_Days_For_Sight_Payment(global_Parameters.getGrace_Days_For_Sight_Payment());
		json.setMargin_Percent(global_Parameters.getMargin_Percent());
		json.setMaximum_Tenor_Days(global_Parameters.getMaximum_Tenor_Days());
		json.setOverdue_Intereset(global_Parameters.getOverdue_Intereset());
		json.setPeriod_Of_Presentation(global_Parameters.getPeriod_Of_Presentation());
		json.setProductId(global_Parameters.getProductId());
		json.setTolerance_Threshold_Limit(global_Parameters.getTolerance_Threshold_Limit());
		json.setType_Of_LC(global_Parameters.getType_Of_LC());
		json.setTolerance_Max(global_Parameters.getTolerance_Max());
		json.setTolerance_Min(global_Parameters.getTolerance_Min());
		return json;

	}

	public static CurrencyJson getCurrencyJson(Currency currency) {
		CurrencyJson json = new CurrencyJson();
		json.setCurrencyCode(currency.getCurrencyCode());
		json.setCurrencyId(currency.getCurrencyId());
		json.setCurrencyName(currency.getCurrencyName());
		json.setForexRate(currency.getForexRate());
		return json;
	}

	public static CountryJson getCoutryJson(Country country) {
		CountryJson json = new CountryJson();
		json.setCountryCode(country.getCountryCode());
		json.setCountryId(country.getCountryId());
		json.setCountryName(country.getCountryName());
		return json;
	}

	public static CustomerJson getCustomerJson(Customer customer) {
		CustomerJson customerJson = new CustomerJson();
		customerJson.setConstitution(customer.getConstitution());
		customerJson.setContactDetailsEmailId1(customer.getContactDetailsEmailId1());
		customerJson.setContactDetailsEmailId2(customer.getContactDetailsEmailId2());
		customerJson.setContactDetailsName1(customer.getContactDetailsName1());
		customerJson.setContactDetailsName2(customer.getContactDetailsName2());
		customerJson.setCustomerAddress(customer.getCustomerAddress());
		customerJson.setCustomerId(customer.getCustomerId());
		customerJson.setCustomerName(customer.getCustomerName());
		customerJson.setDateofIncorporation(customer.getDateofIncorporation());
		customerJson.setLiabilityAccountsImportLC(customer.getLiabilityAccountsImportLC());
		return customerJson;
	}

	public static CounterpartyJson getCounterpartyJson(Counterparty counterparty) {
		CounterpartyJson counterpartyJson = new CounterpartyJson();
		counterpartyJson.setCounterpartyId(counterparty.getCounterpartyId());
		counterpartyJson.setCounterpartyName(counterparty.getCounterpartyName());
		counterpartyJson.setCounterpartyAddress(counterparty.getCounterpartyAddress());
		return counterpartyJson;
	}

	public static IncotermsJson getIncotermsJson(Incoterms incoterms) {
		IncotermsJson incotermsJson = new IncotermsJson();
		incotermsJson.setIncotermName(incoterms.getIncotermName());
		incotermsJson.setIncotermsId(incoterms.getIncotermsId());
		return incotermsJson;
	}

	public static BankJson getBankJson(Bank bank) {
		BankJson bankJson = new BankJson();
		bankJson.setBankAddress(bank.getBankAddress());
		bankJson.setBankId(bank.getBankId());
		bankJson.setBankName(bank.getBankName());
		bankJson.setbICCode(bank.getbICCode());
		bankJson.setCorrespondent(bank.getCorrespondent());
		bankJson.setExportLCExposureLimit(bank.getExportLCExposureLimit());
		bankJson.setGuaranteeExposureLimit(bank.getGuaranteeExposureLimit());
		bankJson.setImportLCExposureLimit(bank.getImportLCExposureLimit());
		bankJson.setMaximum_exposure_allowed(bank.getMaximum_exposure_allowed());
		bankJson.setNostroAcNum(bank.getNostroAcNum());
		return bankJson;
	}

	public static DocumentJson getDocumentJson(Document document) {
		DocumentJson documentJson = new DocumentJson();
		documentJson.setDocumentDescription(document.getDocumentDescription());
		documentJson.setDocumentId(document.getDocumentId());
		documentJson.setDocumentName(document.getDocumentName());
		return documentJson;
	}

	public static CommodityJson getCommodityJson(Commodity commodity) {
		CommodityJson commodityJson = new CommodityJson();
		commodityJson.setCommodityCode(commodity.getCommodityCode());
		commodityJson.setCommodityDescription(commodity.getCommodityDescription());
		commodityJson.setRestrictedCommodity(commodity.getRestrictedCommodity());
		commodityJson.setRestrictionType(commodity.getRestrictionType());
		return commodityJson;
	}

	public static ImportLCIssueJson getImportLCIssueJson(ImportLCIssue importLCIssue) {
		ImportLCIssueJson json = new ImportLCIssueJson();
		json.setApplicable_Rules(importLCIssue.getApplicable_Rules());
		json.setCity_Of_Expiry(importLCIssue.getCity_Of_Expiry());
		json.setConfirming_Instructions(importLCIssue.getConfirming_Instructions());
		json.setCounterpartyAddress(importLCIssue.getCounterpartyAddress());
		json.setCounterpartyId(importLCIssue.getCounterpartyId());
		json.setCounterpartyName(importLCIssue.getCounterpartyName());
		json.setCountry_of_Expiry(importLCIssue.getCountry_of_Expiry());
		json.setStrCreation_Date(convertDateToString(importLCIssue.getCreation_Date()));
		json.setCustomerId(importLCIssue.getCustomerId());
		json.setExchange_Rate(importLCIssue.getExchange_Rate());
		json.setImportLCIssueId(importLCIssue.getImportLCIssueId());
		json.setStrExpiry_Date(convertDateToString(importLCIssue.getExpiry_Date()));
		json.setStrIssue_Date(convertDateToString(importLCIssue.getIssue_Date()));
		json.setlCAmount(importLCIssue.getlCAmount());
		json.setlCAmount_Domestic_Currency(importLCIssue.getlCAmount_Domestic_Currency());
		json.setLiabilityAccountsImportLC(importLCIssue.getLiabilityAccountsImportLC());
		json.setMax_Credit_Amount(importLCIssue.getMax_Credit_Amount());
		json.setProductID(importLCIssue.getProductID());
		json.setStatusId(importLCIssue.getStatusId());
		json.setPurchase_Order_Number(importLCIssue.getPurchase_Order_Number());
		json.setLcAmountCurrency(importLCIssue.getLcAmountCurrency());
		json.setRisk_Amount(importLCIssue.getRisk_Amount());
		json.setSub_Msg_Type(importLCIssue.getSub_Msg_Type());
		json.setLimitAvailable_For_Utilization(importLCIssue.getLimitAvailable_For_Utilization());
		json.setTolerance_Max(importLCIssue.getTolerance_Max());
		json.setTolerance_Min(importLCIssue.getTolerance_Min());
		json.setTransaction_Ref_number(importLCIssue.getTransaction_Ref_number());
		json.setType_of_LC(importLCIssue.getType_of_LC());
		if (importLCIssue.getCustomer() != null) {
			json.setCustomerJson(getCustomerJson(importLCIssue.getCustomer()));
			json.setCustomerName(importLCIssue.getCustomer().getCustomerName());
			json.setCustomerAddress(importLCIssue.getCustomer().getCustomerAddress());
		}
		if (importLCIssue.getCounterparty() != null) {
			json.setCounterpartyJson(getCounterpartyJson(importLCIssue.getCounterparty()));
		}
		if (importLCIssue.getDeferredPayment() != null) {
			json.setDeferredPaymentJson(getDeferredPaymentJson(importLCIssue.getDeferredPayment()));
		}
		json.setAdvisingBankId(importLCIssue.getAdvisingBankId());
		json.setAdvisingBankName(importLCIssue.getAdvisingBankName());
		json.setAdvisingBankAddress(importLCIssue.getAdvisingBankAddress());
		json.setAdviseThroughBankID(importLCIssue.getAdviseThroughBankID());
		json.setAdviseThroughBankName(importLCIssue.getAdviseThroughBankName());
		json.setAdviseThroughBankAddress(importLCIssue.getAdviseThroughBankAddress());
		json.setReimbursementBankID(importLCIssue.getReimbursementBankID());
		json.setRemibursementBankName(importLCIssue.getRemibursementBankName());
		json.setRemibursementBankAddress(importLCIssue.getRemibursementBankAddress());
		json.setConfirming_Instructions(importLCIssue.getConfirming_Instructions());
		json.setConfirmingBankdID(importLCIssue.getConfirmingBankdID());
		json.setConfirmingBankName(importLCIssue.getConfirmingBankName());
		json.setDocumentId(importLCIssue.getDocumentId());
		json.setDocumentName(importLCIssue.getDocumentName());
		json.setDocumentDescription(importLCIssue.getDocumentDescription());

		// json.setLatestShipmentDate(importLCIssue.getLatestShipmentDate());
		json.setStrLatestShipmentDate(convertDateToString(importLCIssue.getLatestShipmentDate()));
		json.setGoodsCode(importLCIssue.getGoodsCode());
		json.setGoodsDescription(importLCIssue.getGoodsDescription());
		json.setIncoterms(importLCIssue.getIncoterms());
		json.setSenderRecieverInfo(importLCIssue.getSenderRecieverInfo());
		json.setShipmentPeriod(importLCIssue.getShipmentPeriod());
		json.setPeriodOfPresentation(importLCIssue.getPeriodOfPresentation());
		json.setAddtnlConditnReqd(importLCIssue.getAddtnlConditnReqd());
		json.setNumCopies(importLCIssue.getNumCopies());
		json.setTransshipment(importLCIssue.getTransshipment());
		json.setPartialShipment(importLCIssue.getPartialShipment());
		json.setPlaceOfDestination(importLCIssue.getPlaceOfDestination());
		json.setFreightEndorsement(importLCIssue.getFreightEndorsement());
		json.setPortofLoading(importLCIssue.getPortofLoading());
		json.setPortofDelivery(importLCIssue.getPortofDelivery());
		json.setPlaceofTakingCharge(importLCIssue.getPlaceofTakingCharge());
		json.setInstructionsNegotitatingBank(importLCIssue.getInstructionsNegotitatingBank());
		json.setTenorType(importLCIssue.getTenorType());
		json.setTenorTypeUsance(importLCIssue.getTenorTypeUsance());
		json.setTenorTypeSight(importLCIssue.getTenorTypeSight());
		json.setUsnaceFrom(importLCIssue.getUsnaceFrom());
		json.setMixedPaymentDetails(importLCIssue.getMixedPaymentDetails());
		// json.setDeferredPayment(importLCIssue.getDeferredPayment());
		json.setAvailableWithBank(importLCIssue.getAvailableWithBank());
		json.setAvailableWithBankID(importLCIssue.getAvailableWithBankID());
		json.setAvailableWithBankName(importLCIssue.getAvailableWithBankName());
		json.setAvailableWithBankAddress(importLCIssue.getAvailableWithBankAddress());
		json.setAvailableWithBankBy(importLCIssue.getAvailableWithBankBy());
		json.setDraftAt(importLCIssue.getDraftAt());
		json.setInterestRate(importLCIssue.getInterestRate());

		json.setMarginType(importLCIssue.getMarginType());
		json.setDebitAccountNum(importLCIssue.getDebitAccountNum());
		json.setCreditAccountNum(importLCIssue.getCreditAccountNum());
		json.setMarginPerCent(importLCIssue.getMarginPerCent());
		json.setMarginAmt(importLCIssue.getMarginAmt());
		json.setAvailableMargin(importLCIssue.getAvailableMargin());
		json.setNetMargin(importLCIssue.getNetMargin());

		return json;
	}

	public static SwiftJson getSwiftJson(Swift swift, ImportLCIssueJson importLCIssueJson) {
		SwiftJson swiftJson = new SwiftJson();
		try {
			swiftJson.setField_Name(swift.getField_Name());
			swiftJson.setTransaction_Type(swift.getTransaction_Type());
			swiftJson.setField_Type(swift.getField_Type());
			swiftJson.setTagNumber(swift.getTagNumber());
			Field[] fields = ImportLCIssueJson.class.getDeclaredFields();
			Field requiredField = null;
			String searchField = swift.getField_Name();
			// If it is date
			if (swift.getField_Name().toLowerCase().contains("date")) {
				searchField = "str" + swift.getField_Name();
			}
			for (Field field : fields) {
				field.setAccessible(true);
				// checking the required field
				if (field.getName().toLowerCase().contains(searchField.toLowerCase())) {
					requiredField = field;
					break;
				}
			}
			requiredField.setAccessible(true);
			String fieldValue = null;
			if (requiredField.get(importLCIssueJson) != null) {
				fieldValue = requiredField.get(importLCIssueJson).toString();
			}
			if (swift.getField_Name().toLowerCase().contains("lcamount")) {
				swiftJson.setFieldValue(fieldValue + " " + importLCIssueJson.getLcAmountCurrency());
			} else {
				swiftJson.setFieldValue(fieldValue);
			}
			if (swift.getField_Name().toLowerCase().contains("tolerance")) {
				swiftJson.setFieldValue(fieldValue + " %");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return swiftJson;
	}

	public static DeferredPaymentJson getDeferredPaymentJson(DeferredPayment deferredPayment) {
		DeferredPaymentJson json = new DeferredPaymentJson();
		json.setAmount(deferredPayment.getAmount());
		json.setDeferredPaymentId(deferredPayment.getDeferredPaymentId());
		json.setImportLCIssueId(deferredPayment.getImportLCIssueId());
		json.setRemarks(deferredPayment.getRemarks());
		json.setStrDate(convertDateToString(deferredPayment.getDate()));
		return json;
	}
}
