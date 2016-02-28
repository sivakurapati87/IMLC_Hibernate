package com.intuiture.imlc.json;

public class CurrencyJson {
	private Integer currencyId;
	private String currencyCode;
	private String currencyName;
	private Double forexRate;

	public Integer getCurrencyId() {
		return currencyId;
	}

	public void setCurrencyId(Integer currencyId) {
		this.currencyId = currencyId;
	}

	public String getCurrencyCode() {
		return currencyCode;
	}

	public void setCurrencyCode(String currencyCode) {
		this.currencyCode = currencyCode;
	}

	public String getCurrencyName() {
		return currencyName;
	}

	public void setCurrencyName(String currencyName) {
		this.currencyName = currencyName;
	}

	public Double getForexRate() {
		return forexRate;
	}

	public void setForexRate(Double forexRate) {
		this.forexRate = forexRate;
	}
}
