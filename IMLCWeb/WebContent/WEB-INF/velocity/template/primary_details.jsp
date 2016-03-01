<div class="container-fluid"
	style="width: 100%; background-image: url('resources/images/bg.jpg'); background-repeat: no-repeat; background-size: cover;"
	align="center">
	<header-tab></header-tab>
	<form ng-submit="saveOrUpdate()" name="form">
		<table class="table tableBg" border="0" style="width: 70%;">
			<tr style="height: 20px"></tr>
			<tr>
				<td align="center" colspan="4"><label class="lable36">Import
						LC_Primary_Details </label></td>
			</tr>
			<tr>
				<td align="center" colspan="4" style="color: #fff;"><label
					ng-repeat="lookup in lookupbean.issueRadioBtnStatusList"> <input
						ng-required="!selectedTypeOfMode" type="radio"
						name="selectedTypeOfMode" ng-model="$parent.selectedTypeOfMode"
						value="{{lookup.description}}"
						ng-change="onclickSelectedTypeOfMode()">
						{{lookup.description}} &nbsp;&nbsp;
				</label></td>
			</tr>

			<tr>
				<td colspan="2" align="center"><i
					class="fa fa-spinner fa-spin text_size" ng-show="loader.loading"></i>
				</td>
			</tr>
			<tr ng-hide="loader.loading">
				<td colspan="2" align="center" width="100%"><table
						style="width: 100%">

						<tr style="height: 20px"></tr>
						<tr class="border1px">
							<td colspan="2" align="center">
								<table style="width: 80%" border="0">
									<tr style="height: 20px"></tr>
									<tr>
										<td width="50%"><label class="lable14">Transaction
												Number</label></td>
										<td align="right"><div class="input-group width90"
												align="left">
												<label class="lable14">Creation Date</label>
											</div></td>
									</tr>

									<tr>
										<td width="50%"><div class="input-group width90">
												<label class="input-group-addon" for="productId"><i
													class="glyphicon glyphicon-asterisk "></i></label><input
													placeholder="Transaction Number" readonly="readonly"
													class="form-control ng-pristine  ng-valid ng-valid-required"
													type="text" required=""
													ng-model="primary_Details_Obj.transaction_Ref_number"
													name="">
											</div></td>
										<td align="right"><div class="input-group width90">
												<input disabled="disabled" type="text" class="form-control"
													ng-model="primary_Details_Obj.strCreation_Date"
													datepicker-popup="dd-MMM-yyyy" is-open="Opened"
													ng-click="Opened=true"> <span
													class="input-group-btn">
													<button type="button" class="btn btn-default"
														disabled="disabled"
														ng-click="Opened=true;$event.stopPropagation();">
														<i class="glyphicon glyphicon-calendar"></i>
													</button>
												</span>
											</div></td>
									</tr>
									<tr style="height: 20px"></tr>
									<tr>
										<td width="50%"><label class="lable14">Issue Date</label></td>
										<td align="right"><div class="input-group width90"
												align="left">
												<label class="lable14">Expiry date</label>
											</div></td>
									</tr>
									<tr>
										<td width="50%"><div class="input-group width90">
												<input disabled="disabled" type="text" class="form-control"
													ng-model="primary_Details_Obj.strIssue_Date"
													datepicker-popup="dd-MMM-yyyy" is-open="issueOpened"
													ng-click="issueOpened=true"> <span
													class="input-group-btn">
													<button type="button" class="btn btn-default"
														disabled="disabled"
														ng-click="issueOpened=true;$event.stopPropagation();">
														<i class="glyphicon glyphicon-calendar"></i>
													</button>
												</span>

											</div></td>
										<td align="right">

											<div class="input-group width90">
												<input type="text" class="form-control" required
													ng-disabled="isDisabled"
													ng-model="primary_Details_Obj.strExpiry_Date"
													datepicker-popup="dd-MMM-yyyy" is-open="strExpiryOpened"
													ng-click="strExpiryOpened=true"> <span
													class="input-group-btn">
													<button type="button" class="btn btn-default"
														ng-disabled="isDisabled"
														ng-click="strExpiryOpened=true;$event.stopPropagation();">
														<i class="glyphicon glyphicon-calendar"></i>
													</button>
												</span>
											</div>
										</td>
									</tr>
									<tr style="height: 20px"></tr>
								</table>
							</td>
						</tr>

						<tr class="border1px">
							<td colspan="2" align="center">
								<table style="width: 80%" border="0">
									<tr style="height: 20px"></tr>
									<tr>
										<td width="50%"><label class="lable14">Sub
												message type</label></td>
										<td align="right"><div class="input-group width90"
												align="left">
												<label class="lable14">Product</label>
											</div></td>
									</tr>
									<tr>
										<td width="50%"><div class="input-group width90">
												<label class="input-group-addon" for="productId"><i
													class="glyphicon glyphicon-asterisk "></i></label><input
													placeholder="Sub message type" readonly="readonly"
													class="form-control ng-pristine  ng-valid ng-valid-required"
													type="text" required=""
													ng-model="primary_Details_Obj.sub_Msg_Type" name="">
											</div></td>
										<td align="right">

											<div class="input-group width90">
												<table style="width: 100%">
													<tr>
														<td class="width90"><input placeholder="Product"
															ng-readonly="isDisabled"
															class="form-control ng-pristine  ng-valid ng-valid-required"
															type="text" required="" ng-blur="onchangeProductId()"
															ng-model="primary_Details_Obj.productID"></td>
														<td>
															<button type="button" ng-disabled="isDisabled"
																style="height: 34px; width: 40px; text-align: center;"
																class="btn btn-info" data-toggle="modal"
																data-target="#productIdsListId">
																<i class="glyphicon glyphicon-search"></i>
															</button>
														</td>
													</tr>
												</table>
											</div>
										</td>
									</tr>
									<tr style="height: 20px"></tr>
									<tr>
										<td width="50%"></td>
										<td align="right"><div class="input-group width90"
												align="left">
												<label class="lable14">Type of LC</label>
											</div></td>
									</tr>
									<tr>
										<td width="50%"></td>
										<td align="right"><div class="input-group width90">
												<label class="input-group-addon" for="productId"><i
													class="glyphicon glyphicon-asterisk "></i></label><select
													class="form-control ng-pristine ng-valid ng-valid-required ng-touched"
													required ng-change="getGlobalParameterInfo()"
													ng-disabled="isDisabled"
													ng-model="primary_Details_Obj.type_of_LC"
													ng-options="typeOfLC.description as typeOfLC.description for typeOfLC in  lookupbean.typeOfLCList">
													<option value="" disabled selected>Type of LC</option>
												</select>
											</div></td>
									</tr>
									<tr style="height: 20px"></tr>

								</table>
							</td>
						</tr>
						<tr class="border1px">
							<td colspan="2" align="center">
								<table style="width: 80%" border="0">

									<tr style="height: 20px"></tr>
									<tr>
										<td width="50%"><label class="lable14"> Customer
												ID</label></td>
										<td align="right"><div class="input-group width90"
												ng-hide="tempImportLCObj.contingent_Liability !='Yes'"
												align="left">
												<label class="lable14">Liability Account A/C No</label>
											</div></td>
									</tr>
									<tr>
										<td width="50%">
											<div class="input-group width90">
												<table style="width: 100%">
													<tr>
														<td class="width90"><div class="input-group"
																style="width: 100%">
																<label class="input-group-addon" for="productId"><i
																	class="glyphicon glyphicon-asterisk "></i></label>
																<div angucomplete-alt id="customerId" class="lable16"
																	placeholder="Customer ID" pause="100"
																	disable-input="isDisabled"
																	selected-object="selectedCustomerIdAction"
																	local-data="lookupbean.customersList"
																	search-fields="customerId" title-field="customerId"
																	minlength="2" initial-value="customer"
																	input-class="search-control height34 "
																	match-class="highlight"></div>

															</div></td>
														<td>
															<button type="button" style="height: 34px; width: 40px;"
																class="btn btn-info" data-toggle="modal"
																ng-disabled="isDisabled" data-target="#customersListId">
																<i class="glyphicon glyphicon-search"></i>
															</button>
														</td>
													</tr>
												</table>
											</div>

										</td>
										<td align="right"><input
											placeholder="Liability Account A/C No"
											class="form-control ng-pristine  ng-valid ng-valid-required width90"
											type="text" required=""
											ng-hide="tempImportLCObj.contingent_Liability !='Yes'"
											ng-disabled="(tempImportLCObj.contingent_Liability !='Yes' || isDisabled) ? true : false"
											ng-model="primary_Details_Obj.liabilityAccountsImportLC"
											name="productId"></td>
									</tr>
									<tr style="height: 20px"></tr>
									<tr>
										<td width="50%"><label class="lable14">Customer
												Name</label></td>
										<td align="right"><div class="input-group width90"
												align="left">
												<label class="lable14">Limit Available for
													utilization</label>
											</div></td>
									</tr>
									<tr>
										<td width="50%"><input placeholder="Customer Name"
											readonly="readonly"
											class="form-control ng-pristine  ng-valid ng-valid-required width90"
											type="text" required=""
											ng-model="primary_Details_Obj.customerName" name="productId"></td>
										<td align="right">
											<table class="width90" border="0">
												<tr>
													<td width="70%"><input
														placeholder="Limit Available for utilization"
														class="form-control ng-pristine  ng-valid ng-valid-required"
														type="text" required="" readonly="readonly"
														ng-model="primary_Details_Obj.limitAvailable_For_Utilization"
														name="productId"></td>
													<td style="width: 4px"></td>
													<td><label class="lable14">INR</label></td>
												</tr>
											</table>


										</td>
									</tr>
									<tr style="height: 20px"></tr>
									<tr>
										<td width="50%"><label class="lable14">Customer
												Address</label></td>
										<td align="right"><div class="input-group width90"
												align="left">
												<label class="lable14">Contract/Agreement/Purchase
													Number</label>
											</div></td>
									</tr>
									<tr>
										<td width="50%"><textarea rows="5" cols=""
												style="resize: none;"
												class="form-control ng-pristine  ng-valid ng-valid-required width90"
												placeholder="Customer Address" readonly="readonly"
												ng-model="primary_Details_Obj.customerAddress"></textarea></td>
										<td align="right" valign="top"><div
												class="input-group width90">
												<label class="input-group-addon" for="productId"> <i
													class="glyphicon glyphicon-asterisk "></i></label><input
													ng-model="primary_Details_Obj.purchase_Order_Number"
													placeholder="Contract/Agreement/Purchase Number"
													required="" ng-disabled="isDisabled"
													class="form-control ng-pristine  ng-valid ng-valid-required">
											</div></td>
									</tr>
									<tr style="height: 20px"></tr>

								</table>
							</td>
						</tr>
						<tr class="border1px">
							<td colspan="2" align="center">
								<table style="width: 80%" border="0">

									<tr style="height: 20px"></tr>
									<tr>
										<td width="50%"><label class="lable14">
												Beneficiary ID</label></td>
										<td align="right"><div class="input-group width90"
												align="left">
												<label class="lable14">Beneficiary Name</label>
											</div></td>
									</tr>
									<tr>

										<td width="50%">
											<div class="input-group width90">
												<table style="width: 100%">
													<tr>
														<td class="width90"><div class="input-group"
																style="width: 100%">
																<label class="input-group-addon" for="productId"><i
																	class="glyphicon glyphicon-asterisk "></i></label>
																<div angucomplete-alt class="lable16"
																	placeholder="Beneficiary ID" pause="100"
																	selected-object="selectedBenificieryIdAction"
																	local-data="lookupbean.benificieriesList"
																	search-fields="counterpartyId" id="counterpartyId"
																	initial-value="counterParty" disable-input="isDisabled"
																	title-field="counterpartyId" minlength="2"
																	input-class="search-control" match-class="highlight"></div>

															</div></td>
														<td>
															<button type="button" style="height: 34px; width: 40px;"
																class="btn btn-info" data-toggle="modal"
																ng-disabled="isDisabled"
																data-target="#counterpartyListId">
																<i class="glyphicon glyphicon-search"></i>
															</button>
														</td>
													</tr>
												</table>
											</div>

										</td>
										<td align="right"><input placeholder="Beneficiary Name"
											readonly="readonly"
											class="form-control ng-pristine  ng-valid ng-valid-required width90"
											type="text" required=""
											ng-model="primary_Details_Obj.counterpartyName"
											name="productId"></td>
									</tr>
									<tr style="height: 20px"></tr>
									<tr>
										<td width="50%"></td>
										<td align="right"><div class="input-group width90"
												align="left">
												<label class="lable14">Beneficiary Address</label>
											</div></td>
									</tr>
									<tr>
										<td width="50%"></td>
										<td align="right"><textarea rows="5" cols=""
												readonly="readonly" style="resize: none;"
												class="form-control ng-pristine  ng-valid ng-valid-required width90"
												placeholder="Beneficiary Address"
												ng-model="primary_Details_Obj.counterpartyAddress"></textarea></td>
									</tr>
									<tr style="height: 20px"></tr>
								</table>
							</td>

						</tr>
						<tr class="border1px">
							<td colspan="2" align="center">
								<table style="width: 80%" border="0">

									<tr style="height: 20px"></tr>

									<tr>
										<td width="45%" align="left">
											<table style="width: 100%" border="0">
												<tr>
													<td width="30%" align="center"><label class="lable14">
															LC Amount </label></td>
													<td width="25%" align="center"><select
														ng-disabled="isDisabled"
														class="form-control ng-pristine ng-valid ng-valid-required ng-touched width60"
														required ng-model="primary_Details_Obj.lcAmountCurrency"
														ng-change="checkLCAmount_With_LimitAvailableForUtil()"
														ng-options="lcAmount.currencyCode as lcAmount.currencyCode for lcAmount in  lookupbean.lcAmountList">
															<option value="" disabled selected></option>
													</select></td>

													<td width="25%"><input required="" valid-number
														ng-model="primary_Details_Obj.lCAmount"
														ng-disabled="isDisabled"
														ng-blur="checkLCAmount_With_LimitAvailableForUtil()"
														class="form-control ng-pristine  ng-valid ng-valid-required width70"
														type="text" name="productId"></td>
												</tr>
											</table>
										</td>
										<td width="50%"></td>


									</tr>
									<tr>
										<td width="50%"></td>
										<td align="right"><div class="input-group width90"
												align="left">
												<label class="lable14">LC Amount in Domestic
													Currency</label>
											</div></td>
									</tr>
									<tr>
										<td width="50%"></td>
										<td align="right" width="50%">
											<table class="width90" border="0">
												<tr>
													<td width="70%"><input
														placeholder="LC Amount in Domestic Currency"
														class="form-control ng-pristine  ng-valid ng-valid-required"
														type="text" readonly="readonly"
														ng-model="primary_Details_Obj.lCAmount_Domestic_Currency"
														name="productId"></td>
													<td style="width: 4px"></td>
													<td><label class="lable14">INR</label></td>
												</tr>
											</table>
										</td>


									</tr>
									<tr>
										<td align="left" width="">
											<table style="width: 100%" border="0">
												<tr>
													<td width="30%" align="center"><label class="lable14">
															Tolerance % </label></td>
													<td width="28%" align="right"><input valid-number
														ng-disabled="isDisabled"
														class="form-control ng-pristine  ng-valid ng-valid-required width70"
														type="text" ng-model="primary_Details_Obj.tolerance_Min"
														name="productId"></td>
													<td width="4%" class="lable22_Medium" align="center">/</td>
													<td width="28%"><input valid-number
														ng-disabled="isDisabled" ng-blur="isGreaterThanPrevious()"
														ng-model="primary_Details_Obj.tolerance_Max"
														class="form-control ng-pristine  ng-valid ng-valid-required width70"
														type="text" name="productId"></td>
												</tr>
											</table>
										</td>
										<td width="50%"></td>

									</tr>


									<tr style="height: 20px"></tr>
								</table>
							</td>
						</tr>





						<tr class="border1px">
							<td colspan="2" align="center">
								<table style="width: 80%" border="0">

									<tr style="height: 20px"></tr>

									<tr>
										<td width="50%"><label class="lable14">City of
												Expiry</label></td>
										<td align="right"><div class="input-group width90"
												align="left">
												<label class="lable14">Country of Expiry</label>
											</div></td>
									</tr>
									<tr>
										<td width="50%"><div class="input-group width90">
												<label class="input-group-addon" for="productId"><i
													class="glyphicon glyphicon-asterisk "></i></label><input
													placeholder="City of Expiry" ng-disabled="isDisabled"
													class="form-control ng-pristine  ng-valid ng-valid-required"
													type="text" required="" valid-alphabet
													ng-model="primary_Details_Obj.city_Of_Expiry" name="">
											</div></td>
										<td align="right"><div class="input-group width90">
												<label class="input-group-addon" for="productId"><i
													class="glyphicon glyphicon-asterisk "></i></label><select
													class="form-control ng-pristine ng-valid ng-valid-required ng-touched"
													ng-model="primary_Details_Obj.country_of_Expiry"
													required="" ng-disabled="isDisabled"
													ng-options="liability.countryName as liability.countryName for liability in  lookupbean.countryList">
													<option value="" disabled selected>Country of
														Expiry</option>
												</select>
											</div></td>
									</tr>


									<tr style="height: 20px"></tr>
								</table>
							</td>
						</tr>

						<tr class="border1px">
							<td colspan="2" align="center">
								<table style="width: 80%" border="0">

									<tr style="height: 20px"></tr>
									<tr>
										<td width="50%"><label class="lable14"
											ng-hide="primary_Details_Obj.tolerance_Min"> Maximum
												Credit Amount</label></td>
										<td align="right"><div class="input-group width90"
												align="left">
												<label class="lable14">Risk Amount</label>
											</div></td>
									</tr>
									<tr>
										<td width="50%"><div class="input-group width90"
												ng-hide="primary_Details_Obj.tolerance_Min">
												<label class="input-group-addon" for="productId"><i
													class="glyphicon glyphicon-asterisk "></i></label><input
													placeholder="Maximum Credit Amount" required=""
													valid-number
													class="form-control ng-pristine  ng-valid ng-valid-required"
													type="text"
													ng-disabled="(primary_Details_Obj.tolerance_Min || isDisabled) ? true : false"
													ng-blur="findRiskAmount()"
													ng-model="primary_Details_Obj.max_Credit_Amount" name="">
											</div></td>
										<td align="right">
											<table class="width90" border="0">
												<tr>
													<td width="70%"><input placeholder="Risk Amount"
														readonly="readonly"
														class="form-control ng-pristine  ng-valid ng-valid-required"
														type="text" required=""
														ng-model="primary_Details_Obj.risk_Amount"
														name="productId"></td>
													<td style="width: 4px"></td>
													<td><label class="lable14">{{primary_Details_Obj.lcAmountCurrency}}</label></td>
												</tr>
											</table>

										</td>
									</tr>
									<tr style="height: 20px"></tr>
									<tr>
										<td width="50%"></td>
										<td align="right"><div class="input-group width90"
												align="left">
												<label class="lable14">Exchange Rate</label>
											</div></td>
									</tr>
									<tr>
										<td width="50%"></td>
										<td align="right">
											<div class="input-group width90">
												<label class="input-group-addon" for="productId"><i
													class="glyphicon glyphicon-asterisk "></i></label><input
													placeholder="Exchange Rate" readonly=""
													class="form-control ng-pristine  ng-valid ng-valid-required"
													type="text" ng-model="primary_Details_Obj.exchange_Rate"
													name="">
											</div>

										</td>
									</tr>

									<tr style="height: 20px"></tr>
								</table>
							</td>
						</tr>



						<tr class="border1px">
							<td colspan="2" align="center">
								<table style="width: 80%" border="0">

									<tr style="height: 20px"></tr>
									<tr>
										<td width="50%"><label class="lable14">Applicable
												Rules</label></td>
										<td align="right"><div class="input-group width90"
												align="left"
												ng-hide="primary_Details_Obj.applicable_Rules!='OTHER'">
												<label class="lable14">Confirming Instructions</label>
											</div></td>
									</tr>
									<tr>
										<td width="50%"><div class="input-group width90">
												<label class="input-group-addon" for="productId"><i
													class="glyphicon glyphicon-asterisk "></i></label><select
													ng-disabled="isDisabled"
													class="form-control ng-pristine ng-valid ng-valid-required ng-touched"
													required ng-model="primary_Details_Obj.applicable_Rules"
													ng-options="rule.description as rule.description for rule in  lookupbean.applicableRules">
													<option value="" disabled selected>Applicable
														Rules</option>
												</select>
											</div></td>
										<td align="right"><div class="input-group width90"
												ng-hide="primary_Details_Obj.applicable_Rules!='OTHER'">
												<label class="input-group-addon" for="productId"><i
													class="glyphicon glyphicon-asterisk "></i></label><input
													placeholder="If OTHER option is choosen in Applicable Rules, Narrative field to be given"
													class="form-control ng-pristine  ng-valid ng-valid-required"
													type="text" required=""
													ng-disabled="(primary_Details_Obj.applicable_Rules!='OTHER' || isDisabled) ? true : false"
													ng-model="primary_Details_Obj.confirming_Instructions"
													name="">
											</div></td>
									</tr>


									<tr style="height: 20px"></tr>
								</table>
							</td>
						</tr>

						<tr class="border1px"
							ng-show="(isVerifyBlockDisplay || isApproveBlockDisplay) ? true:false">
							<td colspan="2" align="center">
								<table style="width: 80%" border="0">

									<tr style="height: 20px"></tr>
									<tr>
										<td width="50%"><label class="lable14">Remarks</label></td>
										<td align="right"></td>
									</tr>
									<tr>
										<td colspan="2"><textarea rows="5" cols=""
												style="resize: none;"
												class="form-control ng-pristine  ng-valid ng-valid-required width90"
												placeholder="Remarks" ng-model="primary_Details_Obj.remarks"></textarea>

										</td>
									</tr>


									<tr style="height: 20px"></tr>
								</table>
							</td>
						</tr>

						<tr
							ng-show="(isVerifyBlockDisplay || isApproveBlockDisplay || isDeletedBlockDisplay || isViewMode) ? false : true">
							<td colspan="4" align="center">
								<table style="width: 24%" border="0">
									<tr style="height: 20px"></tr>
									<tr>
										<td width="50%"><button type="button"
												class="btn btn-info width86"
												style="width: 90px; height: 34px;" ng-click="resetAction()">Reset</button></td>
										<td style="width: 5px"></td>
										<td width="50%"><input type="submit" value="Submit"
											style="width: 90px; height: 34px;"
											class="btn btn-primary btn-sm"></td>
									</tr>

								</table>
							</td>
						</tr>
						<tr ng-show="isVerifyBlockDisplay">
							<td colspan="4" align="center">
								<table style="width: 24%" border="0">
									<tr style="height: 20px"></tr>
									<tr>
										<td width="50%"><button type="button"
												class="btn btn-info width86"
												style="width: 90px; height: 34px;"
												ng-click="submitStatusCodeAction('Reject')">Reject</button></td>
										<td style="width: 5px"></td>
										<td width="50%"><button type="button"
												class="btn btn-info width86"
												style="width: 90px; height: 34px;"
												ng-click="submitStatusCodeAction('Verify')">Verify</button></td>
									</tr>

								</table>
							</td>
						</tr>
						<tr ng-show="isApproveBlockDisplay">
							<td colspan="4" align="center">
								<table style="width: 24%" border="0">
									<tr style="height: 20px"></tr>
									<tr>
										<td width="50%"><button type="button"
												class="btn btn-info width86"
												style="width: 90px; height: 34px;"
												ng-click="submitStatusCodeAction('Reject')">Reject</button></td>
										<td style="width: 5px"></td>
										<td width="50%"><button type="button"
												class="btn btn-info width86"
												style="width: 90px; height: 34px;"
												ng-click="submitStatusCodeAction('Approve')">Approve</button></td>
									</tr>

								</table>
							</td>
						</tr>
						<tr ng-show="isDeletedBlockDisplay">
							<td colspan="4" align="center">
								<button type="button" class="btn btn-info width86"
									style="width: 90px; height: 34px;"
									ng-click="submitStatusCodeAction('Delete')">Delete</button>
						</tr>
						<tr>
							<td colspan="4" align="right" ng-hide="transactionData == undefined"><a ui-sref="advising_bank" tooltip="Next">
									<i class="fa fa-arrow-right fa-2x colorWhite"></i>
							</a>
						</tr>

					</table></td>
			</tr>
		</table>
	</form>
</div>
<div class="container">
	<!-- Trigger the modal with a button -->
	<button type="button" id="customerPopupId" class="btn btn-info btn-lg"
		style="display: none;" data-toggle="modal"
		data-target="#customerPopup">Open Modal</button>

	<!-- Modal -->
	<div class="modal fade" id="customerPopup" role="dialog">
		<div class="modal-dialog" align="center">

			<!-- Modal content-->
			<div class="modal-content" style="width: 400px;">
				<div class="modal-body">
					<p>No Customer Found</p>
				</div>
				<div class="modal-footer" align="center">
					<table style="width: 55%" border="0">
						<tr>
							<td width="100%">
								<button type="button" class="btn btn-danger"
									data-dismiss="modal">Ok</button>
							</td>
						</tr>
					</table>
				</div>
			</div>

		</div>
	</div>
	<button type="button" id="benificieryPopupId"
		class="btn btn-info btn-lg" style="display: none;" data-toggle="modal"
		data-target="#benificieryPopup">Open Modal</button>

	<!-- Modal -->
	<div class="modal fade" id="benificieryPopup" role="dialog">
		<div class="modal-dialog" align="center">

			<!-- Modal content-->
			<div class="modal-content" style="width: 400px;">
				<div class="modal-body">
					<p>No Benificiery Found</p>
				</div>
				<div class="modal-footer" align="center">
					<table style="width: 55%" border="0">
						<tr>
							<td width="100%">
								<button type="button" class="btn btn-danger"
									data-dismiss="modal">Ok</button>
							</td>
						</tr>
					</table>
				</div>
			</div>

		</div>
	</div>
	<button type="button" id="pickTransactionPopupId"
		class="btn btn-info btn-lg" style="display: none;" data-toggle="modal"
		data-target="#pickTransactionPopup">Open Modal</button>

	<!-- Modal -->
	<div class="modal fade" id="pickTransactionPopup" role="dialog">
		<div class="modal-dialog" align="center">

			<!-- Modal content-->
			<div class="modal-content" style="width: 400px;">
				<div class="modal-header" align="center">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<label>Enter the Transaction number to clone</label>
				</div>
				<div class="modal-body" align="center">
					<table style="width: 50%">
						<tr>
							<td width="100%"><input placeholder="Transaction Number"
								class="form-control ng-pristine  ng-valid ng-valid-required"
								type="text" required="" ng-model="transactionRefNumber">
							</td>
						</tr>
					</table>
				</div>
				<div class="modal-footer" align="center">
					<table style="width: 55%" border="0">
						<tr>
							<td width="100%"><button type="button"
									class="btn btn-primary" data-dismiss="modal"
									ng-click="onClickTransactionPopup()">Ok</button></td>
						</tr>
					</table>
				</div>
			</div>

		</div>
	</div>
	<button type="button" id="successBlockId" class="btn btn-info btn-lg"
		style="display: none;" data-toggle="modal" data-target="#successBlock">Open
		Modal</button>

	<!-- Modal -->
	<div class="modal fade" id="successBlock" role="dialog">
		<div class="modal-dialog" align="center">

			<!-- Modal content-->
			<div class="modal-content" style="width: 400px;">
				<div class="modal-body">
					<p style="text-align: center;">Transaction created successfully</p>
				</div>
				<div class="modal-footer" align="center">
					<table style="width: 55%" border="0">
						<tr>
							<td width="100%">
								<button type="button" class="btn btn-success"
									data-dismiss="modal" ng-click="onClickSuccessOkAction()">Ok</button>
							</td>
						</tr>
					</table>
				</div>
			</div>

		</div>
	</div>
	<button type="button" id="productIdErrorPopupId"
		class="btn btn-info btn-lg" style="display: none;" data-toggle="modal"
		data-target="#productIdErrorPopup">Open Modal</button>

	<!-- Modal -->
	<div class="modal fade" id="productIdErrorPopup" role="dialog">
		<div class="modal-dialog" align="center">

			<!-- Modal content-->
			<div class="modal-content" style="width: 400px;">
				<div class="modal-body">
					<p>No Product exists</p>
				</div>
				<div class="modal-footer" align="center">
					<table style="width: 55%" border="0">
						<tr>
							<td width="100%">
								<button type="button" class="btn btn-danger"
									data-dismiss="modal">Ok</button>
							</td>
						</tr>
					</table>
				</div>
			</div>

		</div>
	</div>

	<button type="button" id="erroPopupId" class="btn btn-info btn-lg"
		style="display: none;" data-toggle="modal" data-target="#erroPopup">Open
		Modal</button>

	<!-- Modal -->
	<div class="modal fade" id="erroPopup" role="dialog">
		<div class="modal-dialog" align="center">

			<!-- Modal content-->
			<div class="modal-content" style="width: 400px;">
				<div class="modal-body">
					<p>{{error}}</p>
				</div>
				<div class="modal-footer" align="center">
					<table style="width: 55%" border="0">
						<tr>
							<td width="100%">
								<button type="button" class="btn btn-danger"
									data-dismiss="modal">Ok</button>
							</td>
						</tr>
					</table>
				</div>
			</div>

		</div>
	</div>


	<div class="modal fade" id="productIdsListId" role="dialog">
		<div class="modal-dialog" align="center">

			<!-- Modal content-->
			<div class="modal-content" style="width: 400px;">
				<div class="modal-body">
					<table border="0" width="100%"
						class="table table-hover table table-bordered">
						<tr>
							<th></th>
							<th>Product id</th>
						</tr>
						<tr>
							<td></td>
							<td align="center"><input ng-model="search.productId"
								class="width90"></td>
						</tr>
						<tr
							ng-repeat="product in lookupbean.productIdsList | filter:search:strict"
							ng-class-odd="'odd'" ng-class-even="'even'">
							<td><input type="radio" name="groupName"
								ng-click="onselectProductId(product.productId)" /></td>
							<td>{{product.productId}}</td>
						</tr>
					</table>
				</div>
			</div>

		</div>
	</div>
	<div class="modal fade" id="customersListId" role="dialog">
		<div class="modal-dialog" align="center">

			<!-- Modal content-->
			<div class="modal-content" style="width: 400px;">
				<div class="modal-body">
					<table border="0" width="100%"
						class="table table-hover table table-bordered">
						<tr>
							<th></th>
							<th>Customer id</th>
							<th>Customer name</th>
							<th>Customer address</th>
						</tr>
						<tr>
							<td></td>
							<td align="center"><input ng-model="search.customerId"
								class="width90"></td>
							<td align="center"><input ng-model="search.customerName"
								class="width90"></td>
							<td align="center"><input ng-model="search.customerAddress"
								class="width90"></td>
						</tr>
						<tr
							ng-repeat="customer in lookupbean.customersList | filter:{customerId:search.customerId,customerName:search.customerName,customerAddress:search.customerAddress}"
							ng-class-odd="'odd'" ng-class-even="'even'">
							<td><input type="radio" name="groupName"
								ng-click="onselectCustomerId(customer)" /></td>
							<td>{{customer.customerId}}</td>
							<td>{{customer.customerName}}</td>
							<td>{{customer.customerAddress}}</td>
						</tr>
					</table>
				</div>
			</div>

		</div>
	</div>
	<div class="modal fade" id="counterpartyListId" role="dialog">
		<div class="modal-dialog" align="center">

			<!-- Modal content-->
			<div class="modal-content" style="width: 460px;">
				<div class="modal-body">
					<table border="0" width="100%"
						class="table table-hover table table-bordered">
						<tr>
							<th></th>
							<th>Beneficiary id</th>
							<th>Beneficiary name</th>
							<th>Beneficiary address</th>
						</tr>
						<tr>
							<td></td>
							<td align="center"><input ng-model="search.counterpartyId"
								class="width90"></td>
							<td align="center"><input ng-model="search.counterpartyName"
								class="width90"></td>
							<td align="center"><input
								ng-model="search.counterpartyAddress" class="width90"></td>
						</tr>
						<tr
							ng-repeat="counterparty in lookupbean.benificieriesList | filter:{counterpartyId:search.counterpartyId,counterpartyName:search.counterpartyName,counterpartyAddress:search.counterpartyAddress}"
							ng-class-odd="'odd'" ng-class-even="'even'">
							<td><input type="radio" name="groupName"
								ng-click="onselectBenificieryId(counterparty)" /></td>
							<td>{{counterparty.counterpartyId}}</td>
							<td>{{counterparty.counterpartyName}}</td>
							<td>{{counterparty.counterpartyAddress}}</td>
						</tr>
					</table>
				</div>
			</div>

		</div>
	</div>

	<button type="button" id="cloneTransactionModePopupId"
		class="btn btn-info btn-lg" style="display: none;" data-toggle="modal"
		data-target="#cloneTransactionModePopup">Open Modal</button>

	<!-- Modal -->
	<div class="modal fade" id="cloneTransactionModePopup" role="dialog">
		<div class="modal-dialog" align="center">

			<!-- Modal content-->
			<div class="modal-content" style="width: 460px;">
				<div class="modal-header" align="center">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<label>Pick the way to get Transaction number to clone</label>
				</div>
				<div class="modal-body" align="center">
					<table style="width: 50%">
						<tr>
							<td width="100%"><select
								class="form-control ng-pristine ng-valid ng-valid-required ng-touched"
								required ng-model="transactionPickMode"
								ng-change="onSelectTransactionPickupMode()"
								ng-options="mode.lookupDetailId as mode.description for mode in  lookupbean.transNr_CustomerOrBenificiaryIdList">
									<option value="" disabled selected>Select</option>
							</select></td>
						</tr>
						<tr style="height: 10px"></tr>
					</table>
					<table border="0" width="100%" ng-show="isCustomerIdBlockDisplay"
						class="table table-hover table table-bordered">
						<tr>
							<th></th>
							<th>Customer id</th>
							<th>Customer name</th>
							<th>Customer address</th>
						</tr>
						<tr>
							<td></td>
							<td align="center"><input ng-model="search.customerId"
								class="width90"></td>
							<td align="center"><input ng-model="search.customerName"
								class="width90"></td>
							<td align="center"><input ng-model="search.customerAddress"
								class="width90"></td>
						</tr>
						<tr
							ng-repeat="customer in lookupbean.customersList | filter:{customerId:search.customerId,customerName:search.customerName,customerAddress:search.customerAddress}"
							ng-class-odd="'odd'" ng-class-even="'even'">
							<td><input type="radio" name="groupName"
								ng-click="onselectClone_CustomerRadioId(customer.customerId)" /></td>
							<td>{{customer.customerId}}</td>
							<td>{{customer.customerName}}</td>
							<td>{{customer.customerAddress}}</td>
						</tr>
					</table>
					<table border="0" width="100%"
						ng-show="isBenificiaryIdBlockDisplay"
						class="table table-hover table table-bordered">
						<tr>
							<th></th>
							<th>Beneficiary id</th>
							<th>Beneficiary name</th>
							<th>Beneficiary address</th>
						</tr>
						<tr>
							<td></td>
							<td align="center"><input ng-model="search.counterpartyId"
								class="width90"></td>
							<td align="center"><input ng-model="search.counterpartyName"
								class="width90"></td>
							<td align="center"><input
								ng-model="search.counterpartyAddress" class="width90"></td>
						</tr>
						<tr
							ng-repeat="counterparty in lookupbean.benificieriesList | filter:{counterpartyId:search.counterpartyId,counterpartyName:search.counterpartyName,counterpartyAddress:search.counterpartyAddress}"
							ng-class-odd="'odd'" ng-class-even="'even'">
							<td><input type="radio" name="groupName"
								ng-click="onselectClone_BenificiaryRadioId(counterparty.counterpartyId)" /></td>
							<td>{{counterparty.counterpartyId}}</td>
							<td>{{counterparty.counterpartyName}}</td>
							<td>{{counterparty.counterpartyAddress}}</td>
						</tr>
					</table>
				</div>
			</div>

		</div>
	</div>
	<div class="container">
		<!-- Trigger the modal with a button -->
		<button type="button" id="transactionPopup"
			class="btn btn-info btn-lg" style="display: none;"
			data-toggle="modal" data-target="#transactionPopupId">Open
			Modal</button>

		<!-- Modal -->
		<div class="modal fade" id="transactionPopupId" role="dialog">
			<div class="modal-dialog" align="center">

				<!-- Modal content-->
				<div class="modal-content" style="width: 400px;">
					<div class="modal-body">
						<table border="0" width="100%"
							class="table table-hover table table-bordered">
							<tr>
								<th></th>
								<th>Transaction Number</th>
							</tr>
							<tr>
								<td></td>
								<td align="center"><input
									ng-model="search.transaction_Ref_number" class="width90"></td>
							</tr>
							<tr
								ng-repeat="transaction in primaryDataList | filter:search:strict"
								ng-class-odd="'odd'" ng-class-even="'even'">
								<td align="center"><input type="radio" name="groupName"
									ng-click="onselectTransactionNumber(transaction)" /></td>
								<td>{{transaction.transaction_Ref_number}}</td>
							</tr>
						</table>
					</div>
				</div>

			</div>
		</div>
	</div>
</div>
