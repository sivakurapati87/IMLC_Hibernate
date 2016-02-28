package com.intuiture.imlc.entities;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "bank")
public class Bank {
	@Id
	private String bankId;
	private String bankName;
	private String bankAddress;
	private String bICCode;
	private String correspondent;
	private String nostroAcNum;
	private Double maximum_exposure_allowed;
	private Double importLCExposureLimit;
	private Double exportLCExposureLimit;
	private Double guaranteeExposureLimit;

	public String getBankId() {
		return bankId;
	}

	public void setBankId(String bankId) {
		this.bankId = bankId;
	}

	public String getBankName() {
		return bankName;
	}

	public void setBankName(String bankName) {
		this.bankName = bankName;
	}

	public String getBankAddress() {
		return bankAddress;
	}

	public void setBankAddress(String bankAddress) {
		this.bankAddress = bankAddress;
	}

	public String getbICCode() {
		return bICCode;
	}

	public void setbICCode(String bICCode) {
		this.bICCode = bICCode;
	}

	public String getCorrespondent() {
		return correspondent;
	}

	public void setCorrespondent(String correspondent) {
		this.correspondent = correspondent;
	}

	public String getNostroAcNum() {
		return nostroAcNum;
	}

	public void setNostroAcNum(String nostroAcNum) {
		this.nostroAcNum = nostroAcNum;
	}

	public Double getMaximum_exposure_allowed() {
		return maximum_exposure_allowed;
	}

	public void setMaximum_exposure_allowed(Double maximum_exposure_allowed) {
		this.maximum_exposure_allowed = maximum_exposure_allowed;
	}

	public Double getImportLCExposureLimit() {
		return importLCExposureLimit;
	}

	public void setImportLCExposureLimit(Double importLCExposureLimit) {
		this.importLCExposureLimit = importLCExposureLimit;
	}

	public Double getExportLCExposureLimit() {
		return exportLCExposureLimit;
	}

	public void setExportLCExposureLimit(Double exportLCExposureLimit) {
		this.exportLCExposureLimit = exportLCExposureLimit;
	}

	public Double getGuaranteeExposureLimit() {
		return guaranteeExposureLimit;
	}

	public void setGuaranteeExposureLimit(Double guaranteeExposureLimit) {
		this.guaranteeExposureLimit = guaranteeExposureLimit;
	}

}