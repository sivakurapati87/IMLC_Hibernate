<div class="container-fluid"
	style="width: 100%; background-image: url('resources/images/bg.jpg'); background-repeat: no-repeat; background-size: cover;"
	align="center">
	<header-tab></header-tab>
	<form ng-submit="saveOrUpdate()" name="form">
		<table class="table tableBg" border="0" style="width: 70%;">
			<tr style="height: 20px"></tr>
			<tr>
				<td align="center" colspan="4"><label class="lable36">Draft
						Details</label></td>
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
										<td width="50%"><label class="lable14">Tenor Type
										</label></td>
										<td align="right"><div class="input-group width90"
												align="left" ng-show="transactionData.tenorType == 'Mixed'">
												<label class="lable14">Tenor Type Usance </label>
											</div></td>
									</tr>
									<tr>
										<td width="50%"><div class="input-group width90">
												<label class="input-group-addon"><i
													class="glyphicon glyphicon-asterisk "></i></label><select
													class="form-control ng-pristine ng-valid ng-valid-required ng-touched"
													required ng-model="transactionData.tenorType"
													ng-change="onChangeTenorType()" ng-disabled="isDisabled"
													ng-options="lookup.description as lookup.description for lookup in  lookupbean.tenorTypeList">
													<option value="" disabled selected>Tenor Type</option>
												</select>
											</div></td>
										<td align="right"><div class="input-group width90"
												ng-show="transactionData.tenorType == 'Mixed'">
												<label class="input-group-addon" for="productId"><i
													class="glyphicon glyphicon-asterisk "></i></label><input
													placeholder="Tenor Type Usance"
													ng-disabled="(transactionData.tenorType != 'Mixed' || isDisabled) ? true :false"
													class="form-control ng-pristine  ng-valid ng-valid-required"
													type="text" required="" valid-number
													ng-model="transactionData.tenorTypeUsance">
											</div></td>
									</tr>
									<tr style="height: 20px"></tr>

									<tr>
										<td width="50%"><label class="lable14"
											ng-show="transactionData.tenorType == 'Mixed'">Tenor
												Type Sight </label></td>
										<td align="right"></td>
									</tr>
									<tr>
										<td width="50%"><div class="input-group width90"
												ng-show="transactionData.tenorType == 'Mixed'">
												<label class="input-group-addon" for="productId"><i
													class="glyphicon glyphicon-asterisk "></i></label><input
													placeholder="Tenor Type Sight"
													ng-disabled="(transactionData.tenorType != 'Mixed' || isDisabled) ? true :false"
													class="form-control ng-pristine  ng-valid ng-valid-required"
													type="text" required="" valid-number
													ng-model="transactionData.tenorTypeSight">
											</div></td>
										<td align="right"></td>
									</tr>

									<tr style="height: 20px"></tr>
								</table>
							</td>
						</tr>
						<tr class="border1px"
							ng-show="transactionData.tenorType == 'Mixed'">
							<td colspan="2" align="center">
								<table style="width: 80%" border="0">
									<tr style="height: 20px"></tr>
									<tr>
										<td width="50%"><label class="lable14"
											ng-show="transactionData.tenorType == 'Mixed'">Usance
												From</label></td>
										<td align="right"></td>
									</tr>
									<tr>
										<td width="50%"><div class="input-group width90"
												ng-show="transactionData.tenorType == 'Mixed'">
												<label class="input-group-addon" for="productId"><i
													class="glyphicon glyphicon-asterisk "></i></label><input
													placeholder="Usance From"
													ng-disabled="(transactionData.tenorType != 'Mixed' || isDisabled) ? true :false"
													class="form-control ng-pristine  ng-valid ng-valid-required"
													type="text" required="" valid-alphabet
													ng-model="transactionData.usnaceFrom">
											</div></td>
										<td align="right"></td>
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
										<td width="50%"><label class="lable14">Mixed
												Payment Details </label></td>
										<td align="right"></td>
									</tr>
									<tr>
										<td width="50%"><div class="input-group width90">
												<label class="input-group-addon" for="productId"><i
													class="glyphicon glyphicon-asterisk "></i></label><input
													placeholder="Mixed Payment Details"
													class="form-control ng-pristine  ng-valid ng-valid-required"
													type="text" required="" valid-alphabet
													ng-disabled="(transactionData.tenorType != 'Mixed' || isDisabled) ? true :false"
													ng-model="transactionData.mixedPaymentDetails">
											</div></td>
										<td align="right"></td>
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
										<td width="50%"><label class="lable14">Available
												With Bank </label></td>
										<td align="right"></td>
									</tr>
									<tr>
										<td width="50%"><div class="input-group width90">
												<label class="input-group-addon"><i
													class="glyphicon glyphicon-asterisk "></i></label><select
													class="form-control ng-pristine ng-valid ng-valid-required ng-touched"
													required ng-model="transactionData.availableWithBank"
													ng-disabled="isDisabled"
													ng-options="lookup.description as lookup.description for lookup in  lookupbean.availableBankList">
													<option value="" disabled selected>Available With
														Bank</option>
												</select>
											</div></td>
										<td align="right"></td>
									</tr>

									<tr style="height: 20px"></tr>
								</table>
							</td>
						</tr>
						<tr class="border1px"
							ng-show="transactionData.availableWithBank == 'Select Bank'">
							<td colspan="2" align="center">
								<table style="width: 80%" border="0">

									<tr style="height: 20px"></tr>
									<tr>
										<td width="50%"><label class="lable14"> Available
												With BankID </label></td>
										<td align="right"><div class="input-group width90"
												align="left">
												<label class="lable14">Available With Bank Name</label>
											</div></td>
									</tr>
									<tr>

										<td width="50%">
											<div class="input-group width90">
												<table style="width: 100%">
													<tr>
														<td class="width90"><div class="input-group"
																style="width: 100%">
																<label class="input-group-addon"><i
																	class="glyphicon glyphicon-asterisk "></i></label>
																<div angucomplete-alt class="lable16"
																	disable-input="isDisabled"
																	placeholder="Available With BankID" pause="100"
																	selected-object="selectedAvailableBankIdAction"
																	local-data="bankJsonList" search-fields="bankId"
																	id="availableBankId" initial-value="availableBank"
																	title-field="bankId" minlength="2"
																	input-class="search-control" match-class="highlight"></div>

															</div></td>
														<td>
															<button type="button" style="height: 34px; width: 40px;"
																class="btn btn-info" data-toggle="modal"
																ng-disabled="isDisabled" data-target="#bankListPopupId">
																<i class="glyphicon glyphicon-search"></i>
															</button>
														</td>
													</tr>
												</table>
											</div>

										</td>
										<td align="right"><input
											placeholder="Available With Bank Name" readonly="readonly"
											class="form-control ng-pristine  ng-valid ng-valid-required width90"
											type="text" required=""
											ng-model="transactionData.availableWithBankName"></td>
									</tr>
									<tr style="height: 20px"></tr>
									<tr>
										<td width="50%"></td>
										<td align="right"><div class="input-group width90"
												align="left">
												<label class="lable14">Available With Bank Address </label>
											</div></td>
									</tr>
									<tr>
										<td width="50%"></td>
										<td align="right"><textarea rows="5" cols=""
												readonly="readonly" style="resize: none;"
												class="form-control ng-pristine  ng-valid ng-valid-required width90"
												placeholder="Available With Bank Address"
												ng-model="transactionData.availableWithBankAddress"></textarea></td>
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
										<td width="50%"><label class="lable14">Available
												With Bank By </label></td>
										<td align="right"></td>
									</tr>
									<tr>

										<td width="50%"><div class="input-group width90">
												<label class="input-group-addon" for="productId"><i
													class="glyphicon glyphicon-asterisk "></i></label><input
													placeholder="Available With Bank By"
													ng-disabled="isDisabled"
													class="form-control ng-pristine  ng-valid ng-valid-required"
													type="text" required="" valid-alphabet
													ng-model="transactionData.availableWithBankBy">
											</div></td>
										<td align="right"></td>
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
										<td width="50%"><label class="lable14"> Draft At
										</label></td>
										<td align="right"><div class="input-group width90"
												align="left">
												<label class="lable14">Interest Rate </label>
											</div></td>
									</tr>
									<tr>

										<td width="50%"><div class="input-group width90">
												<label class="input-group-addon" for="productId"><i
													class="glyphicon glyphicon-asterisk "></i></label><input
													placeholder="Draft At" ng-disabled="isDisabled"
													class="form-control ng-pristine  ng-valid ng-valid-required"
													type="text" required="" valid-alphabet
													ng-model="transactionData.draftAt">
											</div></td>
										<td align="right"><input placeholder="Interest Rate"
											readonly="readonly"
											class="form-control ng-pristine  ng-valid ng-valid-required width90"
											type="text" required=""
											ng-model="transactionData.interestRate"></td>
									</tr>
									<tr style="height: 20px"></tr>
								</table>
							</td>

						</tr>
						<tr>
							<td colspan="4" align="right"
								ng-hide="transactionData == undefined">
								<button type="submit"
									class="btn btn-info fa fa-arrow-right fa-2x"
									style="width: 90px; height: 34px;"></button>
						</tr>


					</table></td>
			</tr>
		</table>
	</form>
</div>
<div class="container">
	<div class="modal fade" id="bankListPopupId" role="dialog">
		<div class="modal-dialog" align="center">

			<!-- Modal content-->
			<div class="modal-content" style="width: 400px;">
				<div class="modal-body">
					<table border="0" width="100%"
						class="table table-hover table table-bordered">
						<tr>
							<th></th>
							<th>Bank id</th>
							<th>Bank name</th>
							<th>Bank address</th>
						</tr>
						<tr>
							<td></td>
							<td align="center"><input ng-model="search.bankId"
								class="width90"></td>
							<td align="center"><input ng-model="search.bankName"
								class="width90"></td>
							<td align="center"><input ng-model="search.bankAddress"
								class="width90"></td>
						</tr>
						<tr
							ng-repeat="bank in bankJsonList | filter:{bankId:search.bankId,bankName:search.bankName,bankAddress:search.bankAddress}"
							ng-class-odd="'odd'" ng-class-even="'even'">
							<td><input type="radio" name="groupName"
								ng-click="onselectAvailableBankId(bank)" /></td>
							<td>{{bank.bankId}}</td>
							<td>{{bank.bankName}}</td>
							<td>{{bank.bankAddress}}</td>
						</tr>
					</table>
				</div>
			</div>

		</div>
	</div>

	<!-- Trigger the modal with a button -->
	<button type="button" id="deferredPopupBtnId"
		class="btn btn-info btn-lg" style="display: none;" data-toggle="modal"
		data-target="#deferredPopupId">Open Modal</button>
	<div class="modal fade" id="deferredPopupId" role="dialog">
		<div class="modal-dialog" align="center">

			<!-- Modal content-->
			<div class="modal-content" style="width: 550px;">
				<div class="modal-body">
					<table border="0" width="100%"
						class="table table-hover table table-bordered">
						<tr>
							<td><label class="lable14">Amount</label></td>
							<td align="center"><label class="lable14">Remarks</label></td>
							<td align="center"><label class="lable14">Date</label></td>
						</tr>
						<tr>
							<td width="25%"><input placeholder="Amount"
								ng-disabled="isDisabled"
								class="form-control ng-pristine  ng-valid ng-valid-required"
								type="text" required="" valid-number
								ng-model="transactionData.deferredPaymentJson.amount"></td>
							<td width="45%" align="center"><textarea rows="5" cols=""
									style="resize: none;" ng-disabled="isDisabled"
									class="form-control ng-pristine  ng-valid ng-valid-required width90"
									placeholder="Remarks"
									ng-model="transactionData.deferredPaymentJson.remarks"></textarea></td>
							<td width="30%" align="center"><div
									class="input-group width90">
									<input type="text" class="form-control"
										ng-disabled="isDisabled"
										ng-model="transactionData.deferredPaymentJson.strDate"
										datepicker-popup="dd-MMM-yyyy" is-open="Opened"
										ng-click="Opened=true"> <span class="input-group-btn">
										<button type="button" class="btn btn-default"
											ng-disabled="isDisabled"
											ng-click="Opened=true;$event.stopPropagation();">
											<i class="glyphicon glyphicon-calendar"></i>
										</button>
									</span>
								</div></td>
						</tr>
					</table>
				</div>
				<div class="modal-footer" align="center">
					<table style="width: 55%" border="0">
						<tr>
							<td width="100%">
								<button type="button" class="btn btn-success"
									data-dismiss="modal">Ok</button>
							</td>
						</tr>
					</table>
				</div>
			</div>

		</div>
	</div>
</div>