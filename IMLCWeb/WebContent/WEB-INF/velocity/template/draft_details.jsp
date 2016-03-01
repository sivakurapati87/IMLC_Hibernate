<div class="container-fluid"
	style="width: 100%; background-image: url('resources/images/bg.jpg'); background-repeat: no-repeat; background-size: cover;"
	align="center">
	<header-tab></header-tab>
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
											align="left">
											<label class="lable14">Tenor Type Usance </label>
										</div></td>
								</tr>
								<tr>
									<td width="50%"><div class="input-group width90">
											<label class="input-group-addon"><i
												class="glyphicon glyphicon-asterisk "></i></label><select
												class="form-control ng-pristine ng-valid ng-valid-required ng-touched"
												required ng-change="value()"
												ng-model="primary_Details_Obj.confirmingInstructions">
												<option value="" disabled selected>Tenor Type</option>
												<option value="">Tenor Type Usance</option>
												<option value="Mixed">Mixed</option>
												<option value="Deferred">Deferred</option>
												<option value="Usance">Usance</option>
												<option value="Sight">Sight</option>
											</select>
										</div></td>
									<td align="right"><div class="input-group width90">
											<label class="input-group-addon" for="productId"><i
												class="glyphicon glyphicon-asterisk "></i></label><input
												placeholder="Tenor Type Usance" ng-disabled="isDisabled"
												class="form-control ng-pristine  ng-valid ng-valid-required"
												type="text" required="" valid-alphabet
												ng-model="primary_Details_Obj.city_Of_Expiry" name="">
										</div></td>
								</tr>
								<tr style="height: 20px"></tr>

								<tr>
									<td width="50%"><label class="lable14">Tenor Type
											Sight </label></td>
									<td align="right"></td>
								</tr>
								<tr>
									<td width="50%"><div class="input-group width90">
											<label class="input-group-addon" for="productId"><i
												class="glyphicon glyphicon-asterisk "></i></label><input
												placeholder="Tenor Type Sight" ng-disabled="isDisabled"
												class="form-control ng-pristine  ng-valid ng-valid-required"
												type="text" required="" valid-alphabet
												ng-model="primary_Details_Obj.city_Of_Expiry" name="">
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
									<td width="50%"><label class="lable14">Usance From</label></td>
									<td align="right"></td>
								</tr>
								<tr>
									<td width="50%"><div class="input-group width90">
											<input disabled="disabled" type="text" class="form-control"
												placeholder="Usance From"
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
									<td align="right"><div class="input-group width90"
											align="left">
											<label class="lable14">Deferred Payment </label>
										</div></td>
								</tr>
								<tr>
									<td width="50%"><div class="input-group width90">
											<label class="input-group-addon" for="productId"><i
												class="glyphicon glyphicon-asterisk "></i></label><input
												placeholder="Mixed Payment Details" ng-disabled="isDisabled"
												class="form-control ng-pristine  ng-valid ng-valid-required"
												type="text" required="" valid-alphabet
												ng-model="primary_Details_Obj.city_Of_Expiry" name="">
										</div></td>
									<td align="right"><div class="input-group width90">
											<label class="input-group-addon" for="productId"><i
												class="glyphicon glyphicon-asterisk "></i></label><input
												placeholder="Deferred Payment" ng-disabled="isDisabled"
												class="form-control ng-pristine  ng-valid ng-valid-required"
												type="text" required="" valid-alphabet
												ng-model="primary_Details_Obj.city_Of_Expiry" name="">
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
									<td width="50%"><label class="lable14">Available
											With Bank </label></td>
									<td align="right"></td>
								</tr>
								<tr>
									<td width="50%"><div class="input-group width90">
											<label class="input-group-addon"><i
												class="glyphicon glyphicon-asterisk "></i></label><select
												class="form-control ng-pristine ng-valid ng-valid-required ng-touched"
												required ng-change="value()"
												ng-model="primary_Details_Obj.confirmingInstructions">
												<option value="" disabled selected>Available With
													Bank</option>
												<option value="AnyBank">Any Bank</option>
												<option value="SelectBank">Select Bank</option>
											</select>
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
																placeholder="Available With BankID" pause="100"
																selected-object="selectedAdvisingIdAction"
																local-data="bankJsonList" search-fields="bankId"
																id="advisingBankId" initial-value="advisingBank"
																title-field="bankId" minlength="2"
																input-class="search-control" match-class="highlight"></div>

														</div></td>
													<td>
														<button type="button" style="height: 34px; width: 40px;"
															class="btn btn-info" data-toggle="modal"
															ng-click="openAdvisingBankPopup('advising')">
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
										ng-model="primary_Details_Obj.advisingBankName"
										name="productId"></td>
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
											ng-model="primary_Details_Obj.advisingBankAddress"></textarea></td>
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
												ng-model="primary_Details_Obj.city_Of_Expiry" name="">
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
									<td width="50%"><label class="lable14"> Draft At </label></td>
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
												ng-model="primary_Details_Obj.city_Of_Expiry" name="">
										</div></td>
									<td align="right"><input placeholder="Interest Rate"
										readonly="readonly"
										class="form-control ng-pristine  ng-valid ng-valid-required width90"
										type="text" required=""
										ng-model="primary_Details_Obj.counterpartyName"
										name="productId"></td>
								</tr>
								<tr style="height: 20px"></tr>
							</table>
						</td>

					</tr>
					<tr>
						<td colspan="4" align="right"
							ng-hide="transactionData == undefined"><a
							ui-sref="margin_details" tooltip="Next"> <i
								class="fa fa-arrow-right fa-2x colorWhite"></i>
						</a>
					</tr>



				</table></td>
		</tr>
	</table>
</div>
