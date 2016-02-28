package com.intuiture.imlc.entities;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

@Entity
@Table(name = "customer")
//@NamedQueries({ @NamedQuery(name = "Customer.findAll", query = "select c from Customer c") })
public class Customer {
	@Id
	private Long customerId;
	private String customerName;
	private String customerAddress;
	private String constitution;
	private Date dateofIncorporation;
	private String contactDetailsName1;
	private String contactDetailsName2;
	private String contactDetailsEmailId1;
	private String contactDetailsEmailId2;
	private String importExportLicenseIdentifier;
	private Date expiryDateOfLicense;
	private Double settlementAccountsPayments;
	private Double settlementAccountsMargin;
	private Double settlementAccountsCharges;
	private String liabilityAccountsImportLC;
	private String liabilityAccountsNumberforBankGuarantee;
	private String liabilityAccountsImportLCbill;
	private Double liabilityAccountMarginLC;
	private Double liabilityAccountMarginBG;

	public Long getCustomerId() {
		return customerId;
	}

	public void setCustomerId(Long customerId) {
		this.customerId = customerId;
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

	public String getConstitution() {
		return constitution;
	}

	public void setConstitution(String constitution) {
		this.constitution = constitution;
	}

	public Date getDateofIncorporation() {
		return dateofIncorporation;
	}

	public void setDateofIncorporation(Date dateofIncorporation) {
		this.dateofIncorporation = dateofIncorporation;
	}

	public String getContactDetailsName1() {
		return contactDetailsName1;
	}

	public void setContactDetailsName1(String contactDetailsName1) {
		this.contactDetailsName1 = contactDetailsName1;
	}

	public String getContactDetailsName2() {
		return contactDetailsName2;
	}

	public void setContactDetailsName2(String contactDetailsName2) {
		this.contactDetailsName2 = contactDetailsName2;
	}

	public String getContactDetailsEmailId1() {
		return contactDetailsEmailId1;
	}

	public void setContactDetailsEmailId1(String contactDetailsEmailId1) {
		this.contactDetailsEmailId1 = contactDetailsEmailId1;
	}

	public String getContactDetailsEmailId2() {
		return contactDetailsEmailId2;
	}

	public void setContactDetailsEmailId2(String contactDetailsEmailId2) {
		this.contactDetailsEmailId2 = contactDetailsEmailId2;
	}

	public String getImportExportLicenseIdentifier() {
		return importExportLicenseIdentifier;
	}

	public void setImportExportLicenseIdentifier(String importExportLicenseIdentifier) {
		this.importExportLicenseIdentifier = importExportLicenseIdentifier;
	}

	public Date getExpiryDateOfLicense() {
		return expiryDateOfLicense;
	}

	public void setExpiryDateOfLicense(Date expiryDateOfLicense) {
		this.expiryDateOfLicense = expiryDateOfLicense;
	}

	public Double getSettlementAccountsPayments() {
		return settlementAccountsPayments;
	}

	public void setSettlementAccountsPayments(Double settlementAccountsPayments) {
		this.settlementAccountsPayments = settlementAccountsPayments;
	}

	public Double getSettlementAccountsMargin() {
		return settlementAccountsMargin;
	}

	public void setSettlementAccountsMargin(Double settlementAccountsMargin) {
		this.settlementAccountsMargin = settlementAccountsMargin;
	}

	public Double getSettlementAccountsCharges() {
		return settlementAccountsCharges;
	}

	public void setSettlementAccountsCharges(Double settlementAccountsCharges) {
		this.settlementAccountsCharges = settlementAccountsCharges;
	}

	public String getLiabilityAccountsImportLC() {
		return liabilityAccountsImportLC;
	}

	public void setLiabilityAccountsImportLC(String liabilityAccountsImportLC) {
		this.liabilityAccountsImportLC = liabilityAccountsImportLC;
	}

	public String getLiabilityAccountsNumberforBankGuarantee() {
		return liabilityAccountsNumberforBankGuarantee;
	}

	public void setLiabilityAccountsNumberforBankGuarantee(String liabilityAccountsNumberforBankGuarantee) {
		this.liabilityAccountsNumberforBankGuarantee = liabilityAccountsNumberforBankGuarantee;
	}

	public String getLiabilityAccountsImportLCbill() {
		return liabilityAccountsImportLCbill;
	}

	public void setLiabilityAccountsImportLCbill(String liabilityAccountsImportLCbill) {
		this.liabilityAccountsImportLCbill = liabilityAccountsImportLCbill;
	}

	public Double getLiabilityAccountMarginLC() {
		return liabilityAccountMarginLC;
	}

	public void setLiabilityAccountMarginLC(Double liabilityAccountMarginLC) {
		this.liabilityAccountMarginLC = liabilityAccountMarginLC;
	}

	public Double getLiabilityAccountMarginBG() {
		return liabilityAccountMarginBG;
	}

	public void setLiabilityAccountMarginBG(Double liabilityAccountMarginBG) {
		this.liabilityAccountMarginBG = liabilityAccountMarginBG;
	}

}
