package com.intuiture.imlc.entities;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "commodity")
public class Commodity {
	@Id
	private String commodityCode;
	private String commodityDescription;
	private String restrictedCommodity;
	private String restrictionType;
	public String getCommodityCode() {
		return commodityCode;
	}
	public void setCommodityCode(String commodityCode) {
		this.commodityCode = commodityCode;
	}
	public String getCommodityDescription() {
		return commodityDescription;
	}
	public void setCommodityDescription(String commodityDescription) {
		this.commodityDescription = commodityDescription;
	}
	public String getRestrictedCommodity() {
		return restrictedCommodity;
	}
	public void setRestrictedCommodity(String restrictedCommodity) {
		this.restrictedCommodity = restrictedCommodity;
	}
	public String getRestrictionType() {
		return restrictionType;
	}
	public void setRestrictionType(String restrictionType) {
		this.restrictionType = restrictionType;
	}

}
