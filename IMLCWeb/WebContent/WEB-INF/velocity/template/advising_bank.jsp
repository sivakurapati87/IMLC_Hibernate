<div class="container-fluid"
	style="width: 100%; background-image: url('resources/images/bg.jpg'); background-repeat: no-repeat; background-size: cover;"
	align="center">
	<header-tab></header-tab>
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
									<td width="50%"><label class="lable14"> Advising
											Bank ID </label></td>
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
															<label class="input-group-addon"><i
																class="glyphicon glyphicon-asterisk "></i></label>
															<div angucomplete-alt class="lable16"
																placeholder="Advising Bank ID" pause="100"
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
									<td align="right"><input placeholder="Advising Bank Name"
										readonly="readonly"
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
											<label class="lable14">Advising Bank Address </label>
										</div></td>
								</tr>
								<tr>
									<td width="50%"></td>
									<td align="right"><textarea rows="5" cols=""
											readonly="readonly" style="resize: none;"
											class="form-control ng-pristine  ng-valid ng-valid-required width90"
											placeholder="Advising Bank Address"
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
															<label class="input-group-addon"><i
																class="glyphicon glyphicon-asterisk "></i></label>
															<div angucomplete-alt class="lable16"
																placeholder="Advise Through Bank ID" pause="100"
																selected-object="selectedAdvisingThroughIdAction"
																local-data="bankJsonList" search-fields="bankId"
																id="adviseThroughBankID"
																initial-value="advisingThroughBank" title-field="bankId"
																minlength="2" input-class="search-control"
																match-class="highlight"></div>

														</div></td>
													<td>
														<button type="button" style="height: 34px; width: 40px;"
															class="btn btn-info" data-toggle="modal"
															ng-click="openAdvisingBankPopup('advisingThrough')">
															<i class="glyphicon glyphicon-search"></i>
														</button>
													</td>
												</tr>
											</table>
										</div>

									</td>
									<td align="right"><input
										placeholder="Advise Through Bank Name" readonly="readonly"
										class="form-control ng-pristine  ng-valid ng-valid-required width90"
										type="text" required=""
										ng-model="primary_Details_Obj.adviseThroughBankName"
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
											ng-model="primary_Details_Obj.adviseThroughBankAddress"></textarea></td>
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
															<label class="input-group-addon"><i
																class="glyphicon glyphicon-asterisk "></i></label>
															<div angucomplete-alt class="lable16"
																placeholder="Reimbursement Bank ID" pause="100"
																selected-object="selectedReimbursementBankIdAction"
																local-data="bankJsonList" search-fields="bankId"
																id="reimbursementBankID"
																initial-value="reimbursementBank" title-field="bankId"
																minlength="2" input-class="search-control"
																match-class="highlight"></div>

														</div></td>
													<td>
														<button type="button" style="height: 34px; width: 40px;"
															class="btn btn-info" data-toggle="modal"
															ng-click="openAdvisingBankPopup('reimbursement')">
															<i class="glyphicon glyphicon-search"></i>
														</button>
													</td>
												</tr>
											</table>
										</div>

									</td>
									<td align="right"><input
										placeholder="Reimbursement Bank Name" readonly="readonly"
										class="form-control ng-pristine  ng-valid ng-valid-required width90"
										type="text" required=""
										ng-model="primary_Details_Obj.remibursementBankName"
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
											ng-model="primary_Details_Obj.remibursementBankAddress"></textarea></td>
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
									<td width="50%"><label class="lable14"> Confirming
											Bank ID </label></td>
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
															<label class="input-group-addon"><i
																class="glyphicon glyphicon-asterisk "></i></label>
															<div angucomplete-alt class="lable16"
																placeholder="Confirming Bank ID" pause="100"
																selected-object="selectedConfirmingBankIdAction"
																local-data="bankJsonList" search-fields="bankId"
																id="confirmingBankID" initial-value="confirmingBank"
																title-field="bankId" minlength="2"
																input-class="search-control" match-class="highlight"></div>

														</div></td>
													<td>
														<button type="button" style="height: 34px; width: 40px;"
															class="btn btn-info" data-toggle="modal"
															ng-click="openAdvisingBankPopup('confirming')">
															<i class="glyphicon glyphicon-search"></i>
														</button>
													</td>
												</tr>
											</table>
										</div>

									</td>
									<td align="right"><input
										placeholder="Confirming Bank Name" readonly="readonly"
										class="form-control ng-pristine  ng-valid ng-valid-required width90"
										type="text" required=""
										ng-model="primary_Details_Obj.confirmingBankName"
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
									<td width="50%"><label class="lable14">Confirming
											Instructions </label></td>
									<td align="right"></td>
								</tr>
								<tr>
									<td width="50%"><div class="input-group width90">
											<label class="input-group-addon"><i
												class="glyphicon glyphicon-asterisk "></i></label><select
												class="form-control ng-pristine ng-valid ng-valid-required ng-touched"
												required
												ng-model="primary_Details_Obj.confirmingInstructions"
												ng-options="lookup.description as lookup.description for lookup in  lookupbean.confirmingInstructionsList">
												<option value="" disabled selected>Confirming
													Instructions</option>
											</select>
										</div></td>
									<td align="right"></td>
								</tr>


								<tr style="height: 20px"></tr>

							</table>
						</td>
					</tr>
					<tr>
						<td colspan="4" align="right"
							ng-hide="transactionData == undefined"><a ui-sref="document"
							tooltip="Next"> <i class="fa fa-arrow-right fa-2x colorWhite"></i>
						</a>
					</tr>
				</table></td>
		</tr>
	</table>
</div>
<button type="button" id="bankListPopup" class="btn btn-info btn-lg"
	style="display: none;" data-toggle="modal"
	data-target="#bankListPopupId">Open Modal</button>
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
							ng-click="onselectBankId(bank)" /></td>
						<td>{{bank.bankId}}</td>
						<td>{{bank.bankName}}</td>
						<td>{{bank.bankAddress}}</td>
					</tr>
				</table>
			</div>
		</div>

	</div>
</div>