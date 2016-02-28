<div class="container-fluid"
	style="width: 100%; background-image: url('resources/images/bg.jpg'); background-repeat: no-repeat; background-size: cover;"
	align="center">
	<header-tab></header-tab>
	<form ng-submit="saveOrUpdate()" name="form">
		<table class="table tableBg" border="0" style="width: 70%;">
			<tr style="height: 20px"></tr>
			<tr>
				<td align="center" colspan="4"><label class="lable36">Advising_Bank</label></td>
			</tr>

			<tr>
				<td colspan="2" align="center"><i
					class="fa fa-spinner fa-spin text_size" ng-show="loader.loading"></i>
				</td>
			</tr>
			<tr ng-hide="loader.loading">
				<td colspan="2" align="center" width="100%"><table
						style="width: 100%">


						<tr class="border1px">
							<td colspan="2" align="center">
								<table style="width: 80%" border="0">

									<tr style="height: 20px"></tr>
									<tr>
										<td width="50%"><label class="lable14">
												Advising Bank ID </label></td>
										<td align="right"><div class="input-group width90"
												align="left">
												<label class="lable14">Advising Bank Name </label>
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
																	placeholder="Advising Bank ID" pause="100"
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
										<td align="right"><input placeholder="Advising Bank Name"
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
												<label class="lable14">Advising Bank Address </label>
											</div></td>
									</tr>
									<tr>
										<td width="50%"></td>
										<td align="right"><textarea rows="5" cols=""
												readonly="readonly" style="resize: none;"
												class="form-control ng-pristine  ng-valid ng-valid-required width90"
												placeholder="Advising Bank Address"
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
										<td width="50%"><label class="lable14"> Advise
												Through Bank ID </label></td>
										<td align="right"><div class="input-group width90"
												align="left">
												<label class="lable14">Advise Through Bank Name </label>
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
																	placeholder="Advise Through Bank ID" pause="100"
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
										<td align="right"><input placeholder="Advise Through Bank Name"
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
												<label class="lable14">Advise Through Bank Address </label>
											</div></td>
									</tr>
									<tr>
										<td width="50%"></td>
										<td align="right"><textarea rows="5" cols=""
												readonly="readonly" style="resize: none;"
												class="form-control ng-pristine  ng-valid ng-valid-required width90"
												placeholder="Advise Through Bank Address"
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
										<td width="50%"><label class="lable14">
												Reimbursement Bank ID </label></td>
										<td align="right"><div class="input-group width90"
												align="left">
												<label class="lable14">Reimbursement Bank Name </label>
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
																	placeholder="Reimbursement Bank ID" pause="100"
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
										<td align="right"><input placeholder="Reimbursement Bank Name"
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
												<label class="lable14">Reimbursement Bank Address </label>
											</div></td>
									</tr>
									<tr>
										<td width="50%"></td>
										<td align="right"><textarea rows="5" cols=""
												readonly="readonly" style="resize: none;"
												class="form-control ng-pristine  ng-valid ng-valid-required width90"
												placeholder="Reimbursement Bank Address"
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
										<td width="50%"><label class="lable14">
												Confirming Bank ID </label></td>
										<td align="right"><div class="input-group width90"
												align="left">
												<label class="lable14">Confirming Bank Name </label>
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
																	placeholder="Confirming Bank ID" pause="100"
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
										<td align="right"><input placeholder="Confirming Bank Name"
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











						<tr class="border1px">
							<td colspan="2" align="center">
								<table style="width: 80%" border="0">

									<tr style="height: 20px"></tr>
									<tr>
										<td width="50%"><label class="lable14">Confirming Instructions </label></td>
										<td align="right"></td>
									</tr>
									<tr>
										<td width="50%"><div class="input-group width90">
												<label class="input-group-addon" for="productId"><i
													class="glyphicon glyphicon-asterisk "></i></label><select
													ng-disabled="isDisabled"
													class="form-control ng-pristine ng-valid ng-valid-required ng-touched"
													required ng-model="primary_Details_Obj.applicable_Rules"
													ng-options="rule.description as rule.description for rule in  lookupbean.applicableRules">
													<option value="" disabled selected>Confirming Instructions</option>
												</select>
											</div></td>
										<td align="right"></td>
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


					</table></td>
			</tr>
		</table>
	</form>
</div>
