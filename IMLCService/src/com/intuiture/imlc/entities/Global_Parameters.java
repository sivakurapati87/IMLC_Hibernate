package com.intuiture.imlc.entities;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "global_parameters")
//@NamedQueries({ @NamedQuery(name = "Global_Parameters.findByProductId_Template", query = "select gp from Global_Parameters gp where gp.productId = ?1 and gp.type_Of_LC = ?2"),
//		@NamedQuery(name = "Global_Parameters.findByProductId", query = "select gp from Global_Parameters gp where gp.productId = ?1"), @NamedQuery(name = "Global_Parameters.findAll", query = "select gp from Global_Parameters gp group by gp.productId") })
public class Global_Parameters {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer global_ParameterId;
	private String productId;
	private Date effective_From;
	private Double margin_Percent;
	private Integer tolerance_Threshold_Limit;
	private Integer tolerance_Min;
	private Integer tolerance_Max;
	private String contingent_Liability;
	private String contingent_Reversal_Account_Entries;
	private String contingent_Entries_for_Bills;
	private String contingent_Currency;
	private String business_Convention;
	private Boolean auto_Reversal_On_Expiry;
	private Integer auto_Reversal_Period;
	private Boolean amortization;
	private Integer period_Of_Presentation;
	private Integer grace_Days_For_Sight_Payment;
	private Integer maximum_Tenor_Days;
	private String accounting_For_Amendmen;
	private Integer overdue_Intereset;
	private String type_Of_LC;

	public String getProductId() {
		return productId;
	}

	public void setProductId(String productId) {
		this.productId = productId;
	}

	public Date getEffective_From() {
		return effective_From;
	}

	public void setEffective_From(Date effective_From) {
		this.effective_From = effective_From;
	}

	public Double getMargin_Percent() {
		return margin_Percent;
	}

	public void setMargin_Percent(Double margin_Percent) {
		this.margin_Percent = margin_Percent;
	}

	public Integer getTolerance_Threshold_Limit() {
		return tolerance_Threshold_Limit;
	}

	public void setTolerance_Threshold_Limit(Integer tolerance_Threshold_Limit) {
		this.tolerance_Threshold_Limit = tolerance_Threshold_Limit;
	}

	public String getContingent_Liability() {
		return contingent_Liability;
	}

	public void setContingent_Liability(String contingent_Liability) {
		this.contingent_Liability = contingent_Liability;
	}

	public Integer getTolerance_Min() {
		return tolerance_Min;
	}

	public void setTolerance_Min(Integer tolerance_Min) {
		this.tolerance_Min = tolerance_Min;
	}

	public Integer getTolerance_Max() {
		return tolerance_Max;
	}

	public void setTolerance_Max(Integer tolerance_Max) {
		this.tolerance_Max = tolerance_Max;
	}

	public String getContingent_Reversal_Account_Entries() {
		return contingent_Reversal_Account_Entries;
	}

	public void setContingent_Reversal_Account_Entries(String contingent_Reversal_Account_Entries) {
		this.contingent_Reversal_Account_Entries = contingent_Reversal_Account_Entries;
	}

	public String getContingent_Entries_for_Bills() {
		return contingent_Entries_for_Bills;
	}

	public void setContingent_Entries_for_Bills(String contingent_Entries_for_Bills) {
		this.contingent_Entries_for_Bills = contingent_Entries_for_Bills;
	}

	public String getContingent_Currency() {
		return contingent_Currency;
	}

	public void setContingent_Currency(String contingent_Currency) {
		this.contingent_Currency = contingent_Currency;
	}

	public String getBusiness_Convention() {
		return business_Convention;
	}

	public void setBusiness_Convention(String business_Convention) {
		this.business_Convention = business_Convention;
	}

	public Boolean getAuto_Reversal_On_Expiry() {
		return auto_Reversal_On_Expiry;
	}

	public void setAuto_Reversal_On_Expiry(Boolean auto_Reversal_On_Expiry) {
		this.auto_Reversal_On_Expiry = auto_Reversal_On_Expiry;
	}

	public Integer getAuto_Reversal_Period() {
		return auto_Reversal_Period;
	}

	public void setAuto_Reversal_Period(Integer auto_Reversal_Period) {
		this.auto_Reversal_Period = auto_Reversal_Period;
	}

	public Boolean getAmortization() {
		return amortization;
	}

	public void setAmortization(Boolean amortization) {
		this.amortization = amortization;
	}

	public Integer getPeriod_Of_Presentation() {
		return period_Of_Presentation;
	}

	public void setPeriod_Of_Presentation(Integer period_Of_Presentation) {
		this.period_Of_Presentation = period_Of_Presentation;
	}

	public Integer getGrace_Days_For_Sight_Payment() {
		return grace_Days_For_Sight_Payment;
	}

	public void setGrace_Days_For_Sight_Payment(Integer grace_Days_For_Sight_Payment) {
		this.grace_Days_For_Sight_Payment = grace_Days_For_Sight_Payment;
	}

	public Integer getMaximum_Tenor_Days() {
		return maximum_Tenor_Days;
	}

	public void setMaximum_Tenor_Days(Integer maximum_Tenor_Days) {
		this.maximum_Tenor_Days = maximum_Tenor_Days;
	}

	public String getAccounting_For_Amendmen() {
		return accounting_For_Amendmen;
	}

	public void setAccounting_For_Amendmen(String accounting_For_Amendmen) {
		this.accounting_For_Amendmen = accounting_For_Amendmen;
	}

	public Integer getOverdue_Intereset() {
		return overdue_Intereset;
	}

	public void setOverdue_Intereset(Integer overdue_Intereset) {
		this.overdue_Intereset = overdue_Intereset;
	}

	public String getType_Of_LC() {
		return type_Of_LC;
	}

	public void setType_Of_LC(String type_Of_LC) {
		this.type_Of_LC = type_Of_LC;
	}

	public Integer getGlobal_ParameterId() {
		return global_ParameterId;
	}

	public void setGlobal_ParameterId(Integer global_ParameterId) {
		this.global_ParameterId = global_ParameterId;
	}

}
