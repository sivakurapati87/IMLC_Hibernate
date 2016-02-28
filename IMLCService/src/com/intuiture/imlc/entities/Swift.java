package com.intuiture.imlc.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

@Entity
@Table(name = "swift")
//@NamedQueries({ @NamedQuery(name = "Swift.findAllByTransType", query = "select s from Swift s where s.transaction_Type = ?1") })
public class Swift {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer swiftId;
	private String transaction_Type;
	private String field_Name;
	private String tagNumber;
	private String field_Type;

	public Integer getSwiftId() {
		return swiftId;
	}

	public void setSwiftId(Integer swiftId) {
		this.swiftId = swiftId;
	}

	public String getTransaction_Type() {
		return transaction_Type;
	}

	public void setTransaction_Type(String transaction_Type) {
		this.transaction_Type = transaction_Type;
	}

	public String getField_Name() {
		return field_Name;
	}

	public void setField_Name(String field_Name) {
		this.field_Name = field_Name;
	}

	public String getTagNumber() {
		return tagNumber;
	}

	public void setTagNumber(String tagNumber) {
		this.tagNumber = tagNumber;
	}

	public String getField_Type() {
		return field_Type;
	}

	public void setField_Type(String field_Type) {
		this.field_Type = field_Type;
	}

}
