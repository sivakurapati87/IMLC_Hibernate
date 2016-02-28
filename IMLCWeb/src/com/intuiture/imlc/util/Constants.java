package com.intuiture.imlc.util;

import java.util.ResourceBundle;

public class Constants {
	public static final String EMAIL_PATTERN = "^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@" + "[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$";
	public static final String DATEFORMAT = "dd-MMM-yyyy";
	public static final ResourceBundle RB = ResourceBundle.getBundle("config");
	public static final String SERVICEURL = RB.getString("RESTWebServiceUrl");
	public static final String CAPTCHASTRING = "012345abcdefghijklmnopqurstuvwxyz6789ABCDEFGHIJKLMNOPQRSTUVWXYZ";
	public static final String ALGO = "AES";
	public static final byte[] KEYVALUE = new byte[] { 'T', 'h', 'e', 'B', 'e', 's', 't', 'S', 'e', 'c', 'r', 'e', 't', 'K', 'e', 'y' };
	public static final String GENID = "ELG";
	public static final String TRUEORFALSE = "TRUEORFALSE";
	public static final String REVERSALENTRIES = "REVERSALENTRIES";
	public static final String ENTRIESFORBILL = "ENTRIESFORBILL";
	public static final String CCURRENCY = "CCURRENCY";
	public static final String BUSCONVENTION = "BUSCONVENTION";
	public static final String ACCAMENDMENT = "ACCAMENDMENT";
	public static final String TEMPLATE = "TEMPLATE";
	public static final String APPLICABLERULE = "APPLICABLERULE";
	public static final String TRANSCUSTBENIFICIARY = "TRANSCUSTBENIFICIARY";
	public static final String ISSUEBTNSTATES = "ISSUEBTNSTATES";

	public static class LookUp {
		public static final String GETLOOKUPDETAILSBYTYPE = SERVICEURL + "/LookUpController/getAllLookupDetailsByType";
		public static final String GETLOOKUPDETAILSBYTYPELIST = SERVICEURL + "/LookUpController/getAllLookupDetailsByTypeList";
		public static final String GETLOOKUPDETAILSBYPARENT = SERVICEURL + "/LookUpController/getLookUpDetailsByParent";
		public static final String LOOKUPDETAILSBYPREVDETAILID = SERVICEURL + "/LookUpController/lookupDetailsByPrevDetailId";
		public static final String GETALLCURRENCY = SERVICEURL + "/LookUpController/getAllCurrencies";
		public static final String GETALLCOUNTRIES = SERVICEURL + "/LookUpController/getAllCountries";
	}

	public static class GlobalParameter {
		public static final String Submit = SERVICEURL + "/ImportLCGlobalParameterDeclarationController/saveOrUpdateGlobalParameter";
		public static final String FINDALL = SERVICEURL + "/ImportLCGlobalParameterDeclarationController/findAllProductIds";
	}

	public static class PrimaryDetails {
		public static final String Submit = SERVICEURL + "/PrimaryDetailController/saveOrUpdatePrimaryDetails";
	}

	public static class CounterParty {
		public static final String FINDALL = SERVICEURL + "/CounterPartyController/getAllCounterParty";
	}

	public static class Customer {
		public static final String FINDALL = SERVICEURL + "/CustomerController/getAllCustomersInfo";
	}

}
