package com.intuiture.imlc.entities;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

@Entity
@Table(name = "counterparty")
//@NamedQueries({ @NamedQuery(name = "Counterparty.findAll", query = "select c from Counterparty c ") })
public class Counterparty {
	@Id
	private String counterpartyId;
	private String counterpartyName;
	private String counterpartyAddress;
	private Double maximum_exposure_allowed;
	private Double importLCExposureLimit;
	private Double exportLCExposureLimit;
	private Double guaranteeExposureLimit;

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
