package com.intuiture.imlc.json;

import java.util.Date;

public class DeferredPaymentJson {
	private Integer deferredPaymentId;
	private Double amount;
	private String remarks;
	private String strDate;
	private Integer importLCIssueId;
	private Date date;

	public Integer getDeferredPaymentId() {
		return deferredPaymentId;
	}

	public void setDeferredPaymentId(Integer deferredPaymentId) {
		this.deferredPaymentId = deferredPaymentId;
	}

	public Double getAmount() {
		return amount;
	}

	public void setAmount(Double amount) {
		this.amount = amount;
	}

	public String getRemarks() {
		return remarks;
	}

	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}

	public Integer getImportLCIssueId() {
		return importLCIssueId;
	}

	public void setImportLCIssueId(Integer importLCIssueId) {
		this.importLCIssueId = importLCIssueId;
	}

	public String getStrDate() {
		return strDate;
	}

	public void setStrDate(String strDate) {
		this.strDate = strDate;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

}