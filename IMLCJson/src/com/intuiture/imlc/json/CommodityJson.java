package com.intuiture.imlc.json;

public class CommodityJson {
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
