package com.intuiture.imlc.entities;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "port")
public class Port {
	@Id
	private String portCode;
	private String portName;
	private String portDescription;

	public String getPortCode() {
		return portCode;
	}

	public void setPortCode(String portCode) {
		this.portCode = portCode;
	}

	public String getPortName() {
		return portName;
	}

	public void setPortName(String portName) {
		this.portName = portName;
	}

	public String getPortDescription() {
		return portDescription;
	}

	public void setPortDescription(String portDescription) {
		this.portDescription = portDescription;
	}

}
