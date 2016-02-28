package com.intuiture.imlc.entities;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "insurer")
public class Insurer {
	@Id
	private String insurerId;
	private String insurerName;
	private String insurerAddress;

	public String getInsurerId() {
		return insurerId;
	}

	public void setInsurerId(String insurerId) {
		this.insurerId = insurerId;
	}

	public String getInsurerName() {
		return insurerName;
	}

	public void setInsurerName(String insurerName) {
		this.insurerName = insurerName;
	}

	public String getInsurerAddress() {
		return insurerAddress;
	}

	public void setInsurerAddress(String insurerAddress) {
		this.insurerAddress = insurerAddress;
	}

}
