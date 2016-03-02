package com.intuiture.imlc.entities;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "deferredpayment")
public class DeferredPayment {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer deferredPaymentId;
	private Double amount;
	private String remarks;
	private Date date;
	private Integer importLCIssueId;
	private Date createdOn;
	private Date updatedOn;
	@OneToOne
	@JoinColumn(name = "importLCIssueId", insertable = false, updatable = false)
	private ImportLCIssue importLCIssue;

	public ImportLCIssue getImportLCIssue() {
		return importLCIssue;
	}

	public void setImportLCIssue(ImportLCIssue importLCIssue) {
		this.importLCIssue = importLCIssue;
	}

	public Date getCreatedOn() {
		return createdOn;
	}

	public void setCreatedOn(Date createdOn) {
		this.createdOn = createdOn;
	}

	public Date getUpdatedOn() {
		return updatedOn;
	}

	public void setUpdatedOn(Date updatedOn) {
		this.updatedOn = updatedOn;
	}

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

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public Integer getImportLCIssueId() {
		return importLCIssueId;
	}

	public void setImportLCIssueId(Integer importLCIssueId) {
		this.importLCIssueId = importLCIssueId;
	}

}