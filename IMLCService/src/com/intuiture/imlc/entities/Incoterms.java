package com.intuiture.imlc.entities;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "incoterms")
public class Incoterms {
	@Id
	private String incotermsId;
	private String incotermName;

	public String getIncotermsId() {
		return incotermsId;
	}

	public void setIncotermsId(String incotermsId) {
		this.incotermsId = incotermsId;
	}

	public String getIncotermName() {
		return incotermName;
	}

	public void setIncotermName(String incotermName) {
		this.incotermName = incotermName;
	}

}
