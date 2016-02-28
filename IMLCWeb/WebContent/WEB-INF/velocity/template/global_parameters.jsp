<div class="container-fluid"
	style="width: 100%; background-image: url('resources/images/bg.jpg'); background-repeat: no-repeat; background-size: cover;"
	align="center">
	<form ng-submit="submit()">
		<table class="table tableBg" border="0" style="width: 70%;">
			<tr style="height: 20px"></tr>
			<tr>
				<td align="center" colspan="4"><label class="lable36">Import
						LC Global Parameter Declaration </label></td>
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
										<td width="50%"><label class="lable14">Product Id</label></td>
										<td align="right"><div class="input-group width90" align="left">
												<label class="lable14">Effective from</label>
											</div></td>
									</tr>


									<tr>
										<td width="50%"><div class="input-group width90">
												<label class="input-group-addon" for="productId"><i
													class="glyphicon glyphicon-asterisk "></i></label><input
													placeholder="Product Id"
													class="form-control ng-pristine  ng-valid ng-valid-required"
													type="text" required="" ng-model="importLCObject.productId">
											</div></td>
										<td align="right"><div class="input-group width90">


												<input type="text" class="form-control"
													ng-model="importLCObject.strEffective_From"
													datepicker-popup="dd-MMM-yyyy" is-open="effectiveOpened"
													ng-click="effectiveOpened=true"> <span
													class="input-group-btn">
													<button type="button" class="btn btn-default"
														ng-click="effectiveOpened=true;$event.stopPropagation();">
														<i class="glyphicon glyphicon-calendar"></i>
													</button>
												</span>


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
										<td width="50%"><label class="lable14">Margin (%)</label></td>
										<td align="right"></td>
									</tr>
									<tr>
										<td width="50%"><input placeholder="Margin (%)"
											class="form-control ng-pristine  ng-valid ng-valid-required width90"
											type="text" valid-number
											ng-model="importLCObject.margin_Percent"></td>
										<td align="right" width="60%"><table style="width: 100%"
												border="0">
												<tr>
													<td align="right" width="50%"><label class="lable14">Tolerance
															Threshold Limit :</label></td>
													<td width="25%" align="right"><input
														style="width: 96%" valid-number
														class="form-control ng-pristine  ng-valid ng-valid-required "
														type="text" ng-model="importLCObject.tolerance_Min"></td>
													<td width="2%" class="lable22_Medium">/</td>
													<td width="25%" align="right"><input
														style="width: 96%" valid-number
														class="form-control ng-pristine  ng-valid ng-valid-required"
														type="text" ng-model="importLCObject.tolerance_Max"></td>
												</tr>
											</table></td>
									</tr>
									<tr style="height: 15px"></tr>
								</table>
							</td>
						</tr>


						<tr class="border1px">
							<td colspan="2" align="center">
								<table style="width: 80%" border="0">
									<tr style="height: 15px"></tr>
									<tr>
										<td width="50%"><label class="lable14">Contingent
												Liability</label></td>
										<td align="right"><div class="input-group width90" align="left"
												ng-hide="importLCObject.contingent_Liability!='Yes'">
												<label class="lable14">Contingent Reversal Account
													Entries</label>
											</div></td>
									</tr>
									<tr>
										<td width="50%"><select
											class="form-control ng-pristine ng-valid ng-valid-required ng-touched width90"
											required ng-model="importLCObject.contingent_Liability"
											ng-change="contingentLiabilityChange()"
											ng-options="liability.description as liability.description for liability in  lookupbean.contingentLiabilityList">
												<option value="" disabled selected>Contingent
													Liability</option>
										</select></td>
										<td align="right"><div class="input-group width90"
												ng-hide="importLCObject.contingent_Liability!='Yes'">
												<label class="input-group-addon" for="productId"><i
													class="glyphicon glyphicon-asterisk "></i></label><select
													class="form-control ng-pristine ng-valid ng-valid-required ng-touched"
													required
													ng-disabled="importLCObject.contingent_Liability!='Yes'"
													ng-model="importLCObject.contingent_Reversal_Account_Entries"
													ng-options="liability.description as liability.description for liability in  lookupbean.contingent_Reversal_Account_EntriesList">
													<option value="" disabled selected>Contingent
														Reversal Account Entries</option>
												</select>
											</div></td>
									</tr>
									<tr style="height: 20px"></tr>
									<tr>
										<td width="50%"><label class="lable14"
											ng-hide="importLCObject.contingent_Reversal_Account_Entries!='Front-end reversal'">Contingent
												entries for Bills</label></td>
										<td align="right"><div class="input-group width90" align="left"
												ng-hide="importLCObject.contingent_Liability!='Yes'">
												<label class="lable14">Contingent Currency</label>
											</div></td>
									</tr>
									<tr>
										<td width="50%"><div class="input-group width90"
												ng-hide="importLCObject.contingent_Reversal_Account_Entries!='Front-end reversal'">
												<label class="input-group-addon" for="productId"><i
													class="glyphicon glyphicon-asterisk "></i></label><select
													class="form-control ng-pristine ng-valid ng-valid-required ng-touched"
													required
													ng-disabled="importLCObject.contingent_Reversal_Account_Entries!='Front-end reversal'"
													ng-model="importLCObject.contingent_Entries_for_Bills"
													ng-options="liability.description as liability.description for liability in  lookupbean.contingent_Entries_for_BillsList">
													<option value="" disabled selected>Contingent
														entries for Bills</option>
												</select>
											</div></td>
										<td align="right"><div class="input-group width90"
												ng-hide="importLCObject.contingent_Liability!='Yes'">
												<label class="input-group-addon" for="productId"><i
													class="glyphicon glyphicon-asterisk "></i></label><select
													class="form-control ng-pristine ng-valid ng-valid-required ng-touched"
													required ng-model="importLCObject.contingent_Currency"
													ng-disabled="importLCObject.contingent_Liability!='Yes'"
													ng-options="liability.description as liability.description for liability in  lookupbean.contingent_CurrencyList">
													<option value="" disabled selected>Contingent
														Currency</option>
												</select>
											</div></td>
									</tr>
									<tr style="height: 15px"></tr>
								</table>
							</td>
						</tr>


						<tr class="border1px">
							<td colspan="2" align="center">
								<table style="width: 80%" border="0">
									<tr style="height: 15px"></tr>
									<tr>
										<td width="50%"><label class="lable14">Business
												Convention</label></td>
										<td align="right"></td>
									</tr>
									<tr>
										<td width="50%"><div class="input-group width90">
												<label class="input-group-addon" for="productId"><i
													class="glyphicon glyphicon-asterisk "></i></label><select
													class="form-control ng-pristine ng-valid ng-valid-required ng-touched"
													required ng-model="importLCObject.business_Convention"
													ng-options="liability.description as liability.description for liability in  lookupbean.business_ConventionList">
													<option value="" disabled selected>Business
														Convention</option>
												</select>
											</div></td>
										<td style="padding-left: 25px">
											<div class="input-group width90">
												<label class="lable14">Amortization</label>&nbsp;&nbsp;<input
													type="checkbox" ng-model="importLCObject.amortization">
											</div>
										</td>
									</tr>
									<tr style="height: 15px"></tr>
								</table>
							</td>
						</tr>
						<tr class="border1px">
							<td colspan="2" align="center">
								<table style="width: 80%" border="0">
									<tr style="height: 15px"></tr>
									<tr>
										<td width="50%">
											<div class="input-group width90">
												<label class="lable14">Auto-reversal on expiry</label>&nbsp;<label
													class="" style="font-size: 26px;"></label>&nbsp;&nbsp;<input
													type="checkbox"
													ng-model="importLCObject.auto_Reversal_On_Expiry">
											</div>
										</td>

										<td align="right">
											<table border="0"
												ng-hide="!importLCObject.auto_Reversal_On_Expiry">
												<tr>
													<td width="58%" align="center"><label class="lable14">Auto-reversal
															period</label></td>
													<td width="3%"></td>
													<td align="right" width="33%">
														<div class="input-group width90">
															<label class="input-group-addon" for="productId"><i
																class="glyphicon glyphicon-asterisk "></i></label><input
																valid-number
																class="form-control ng-pristine  ng-valid ng-valid-required"
																maxlength="3" type="text" required=""
																ng-disabled="!importLCObject.auto_Reversal_On_Expiry"
																ng-model="importLCObject.auto_Reversal_Period">
														</div>
													</td>
													<td><label class="lable14" style="padding-top: 8px">&nbsp;days</label></td>
												</tr>
											</table>
										</td>
									</tr>
									<tr style="height: 15px"></tr>
								</table>
							</td>
						</tr>


						<tr class="border1px">
							<td colspan="2" align="center">
								<table style="width: 80%" border="0">
									<tr style="height: 15px"></tr>
									<tr>


										<td width="50%">
											<table border="0" style="width: 100%">
												<tr>
													<td width="42%"><label class="lable14">Period
															of Presentation</label></td>
													<td width="3%"></td>
													<td width="33%">
														<div class="input-group width90">
															<label class="input-group-addon" for="productId"><i
																class="glyphicon glyphicon-asterisk "></i></label><input
																valid-number
																class="form-control ng-pristine  ng-valid ng-valid-required"
																type="text" required=""
																ng-model="importLCObject.period_Of_Presentation">
														</div>
													</td>
													<td><label class="lable14" style="padding-top: 8px">&nbsp;days</label></td>
												</tr>
											</table>
										</td>

										<td align="right">
											<table border="0">
												<tr>
													<td width="58%" align="center"><label class="lable14">Grace
															days for sight payment</label></td>
													<td width="3%"></td>
													<td align="right" width="33%">
														<div class="input-group width90">
															<label class="input-group-addon" for="productId"><i
																class="glyphicon glyphicon-asterisk "></i></label><input
																class="form-control ng-pristine  ng-valid ng-valid-required"
																type="text" required="" valid-number
																ng-model="importLCObject.grace_Days_For_Sight_Payment">
														</div>
													</td>
													<td><label class="lable14" style="padding-top: 8px">&nbsp;days</label></td>
												</tr>
											</table>
										</td>


									</tr>
									<tr style="height: 20px"></tr>
									<tr>
										<td width="50%"></td>
										<td align="right"><div class="input-group width90" align="left">
												<label class="lable14">Accounting for Amendment</label>
											</div></td>
									</tr>
									<tr>

										<td width="50%">
											<table border="0" style="width: 100%">
												<tr>
													<td width="42%"><label class="lable14">Maximun
															Tenor</label></td>
													<td width="3%"></td>
													<td width="33%">
														<div class="input-group width90">
															<label class="input-group-addon" for="productId"><i
																class="glyphicon glyphicon-asterisk "></i></label> <input
																class="form-control ng-pristine  ng-valid ng-valid-required"
																type="text" required="" valid-number
																ng-model="importLCObject.maximum_Tenor_Days">
														</div>
													</td>
													<td><label class="lable14" style="padding-top: 8px">&nbsp;days</label></td>
												</tr>
											</table>
										</td>

										<td align="right">
											<div class="input-group width90">
												<label class="input-group-addon" for="productId"><i
													class="glyphicon glyphicon-asterisk "></i></label><select
													class="form-control ng-pristine ng-valid ng-valid-required ng-touched width90"
													required ng-model="importLCObject.accounting_For_Amendmen"
													ng-options="liability.description as liability.description for liability in  lookupbean.accounting_For_AmendmenList">
													<option value="" disabled selected>Accounting for
														Amendment</option>
												</select>
											</div>
										</td>

									</tr>
									<tr style="height: 20px"></tr>
									<tr>
										<td width="50%"><label class="lable14">Overdue
												interest</label></td>
										<td align="right"></td>
									</tr>
									<tr>
										<td width="50%">
											<div class="input-group width90">
												<label class="input-group-addon" for="productId"><i
													class="glyphicon glyphicon-asterisk "></i></label><input
													placeholder="Overdue interest"
													class="form-control ng-pristine  ng-valid ng-valid-required"
													type="text" required="" valid-number
													ng-model="importLCObject.overdue_Intereset">
											</div>
										</td>
										<td></td>
									</tr>
									<tr style="height: 15px"></tr>
								</table>
							</td>
						</tr>




						<tr style="height: 20px"></tr>
						<tr>
							<td colspan="4" align="center">
								<table style="width: 24%" border="0">
									<tr>
										<td width="50%"><button type="button"
												class="btn btn-info width86" ng-click="resetAction()"
												style="width: 90px; height: 34px;">Reset</button></td>
										<td style="width: 5px"></td>
										<td width="50%"><input type="submit" value="Submit"
											style="width: 90px; height: 34px;"
											class="btn btn-primary btn-sm"></td>
									</tr>
								</table>
							</td>
						</tr>
					</table></td>
			</tr>
		</table>
	</form>
</div>
<div class="container">
	<!-- Trigger the modal with a button -->
	<button type="button" id="openPopupId" class="btn btn-info btn-lg"
		style="display: none;" data-toggle="modal" data-target="#myModal">Open
		Modal</button>

	<!-- Modal -->
	<div class="modal fade" id="myModal" role="dialog">
		<div class="modal-dialog" align="center">

			<!-- Modal content-->
			<div class="modal-content" style="width: 400px;">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<label>Product Id Existence
						</h4>
					</label>
				</div>
				<div class="modal-body">
					<p>The template selected already exists for this product id.</p>
				</div>
				<div class="modal-footer" align="center">
					<table style="width: 100%" border="0">
						<tr>
							<td width="48%"><button type="button"
									class="btn btn-success" data-dismiss="modal"
									ng-click="overrideValues()">Override the template</button></td>
							<td width="2%"></td>
							<td width="48%" align="left">
								<button type="button" class="btn btn-danger"
									data-dismiss="modal" ng-class="saveGlobalParameter()">Create
									a New</button>
							</td>
						</tr>
					</table>
				</div>
			</div>

		</div>
	</div>
	<button type="button" id="openTemplatePopupId"
		class="btn btn-info btn-lg" style="display: none;" data-toggle="modal"
		data-target="#template">Open Modal</button>

	<!-- Modal -->
	<div class="modal fade" id="template" role="dialog">
		<div class="modal-dialog" align="center">

			<!-- Modal content-->
			<div class="modal-content" style="width: 400px;">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<label>Select the Template to save the form</label>
				</div>
				<div class="modal-body">
					<select
						class="form-control ng-pristine ng-valid ng-valid-required ng-touched width86"
						required ng-model="importLCObject.type_Of_LC"
						ng-options="liability.description as liability.description for liability in  lookupbean.templateList">
					</select>
				</div>
				<div class="modal-footer" align="center">
					<table style="width: 100%" border="0">
						<tr>
							<td width="48%"><button type="button" style="width: 78px"
									class="btn btn-success" data-dismiss="modal"
									ng-click="onclickOkAction()">Ok</button></td>
							<td width="2%"></td>
							<td width="48%" align="left"><button type="button"
									class="btn btn-danger" data-dismiss="modal">Cancel</button></td>
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
					<p style="text-align: center;">Product added successfully</p>
				</div>
				<div class="modal-footer" align="center">
					<table style="width: 55%" border="0">
						<tr>
							<td width="100%"><button type="button"
									class="btn btn-success" data-dismiss="modal">Ok</button></td>
						</tr>
					</table>
				</div>
			</div>

		</div>
	</div>

</div>
