<div class="container-fluid"
	style="width: 100%; background-image: url('resources/images/bg.jpg'); background-repeat: no-repeat; background-size: cover;"
	align="center">
	<header-tab></header-tab>
	<table class="table tableBg" border="0" style="width: 70%;">
		<tr style="height: 20px"></tr>
		<tr>
			<td align="center" colspan="4"><label class="lable36">Margin
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
									<td width="50%"><label class="lable14">Margin Type
									</label></td>
									<td align="right"></td>
								</tr>
								<tr>
									<td width="50%"><div class="input-group width90">
											<label class="input-group-addon"><i
												class="glyphicon glyphicon-asterisk "></i></label><select ng-disabled="isDisabled"
												class="form-control ng-pristine ng-valid ng-valid-required ng-touched"
												required ng-model="transactionData.marginType"
												ng-options="lookup.description as lookup.description for lookup in  lookupbean.marginTypeList">
												<option value="" disabled selected>Margin Type</option>
											</select>
										</div></td>
									<td align="right"></td>
								</tr>
								<tr style="height: 20px"></tr>
							</table>
						</td>
					</tr>

					<tr class="border1px"
						ng-hide="transactionData.marginType == 'No Margin'">
						<td colspan="2" align="center">
							<table style="width: 80%" border="0">

								<tr style="height: 20px"></tr>

								<tr>
									<td width="50%"><label class="lable14">Debit
											Account Number </label></td>
									<td align="right"><div class="input-group width90"
											align="left">
											<label class="lable14">Credit Account Number </label>
										</div></td>
								</tr>
								<tr>
									<td width="50%"><div class="input-group width90">
											<label class="input-group-addon" for="productId"><i
												class="glyphicon glyphicon-asterisk "></i></label><input
												placeholder="Debit Account Number" 
												ng-disabled="(transactionData.marginType == 'No Margin' || isDisabled)?true:false"
												class="form-control ng-pristine  ng-valid ng-valid-required"
												type="text" required="" valid-alphabet
												ng-model="transactionData.debitAccountNum" name="">
										</div></td>
									<td align="right"><div class="input-group width90">
											<label class="input-group-addon" for="productId"><i
												class="glyphicon glyphicon-asterisk "></i></label><input
												placeholder="Credit Account Number"
												ng-disabled="(transactionData.marginType == 'No Margin' || isDisabled)?true:false"
												class="form-control ng-pristine  ng-valid ng-valid-required"
												type="text" required="" valid-alphabet
												ng-model="transactionData.creditAccountNum" name="">
										</div></td>
								</tr>

								<tr style="height: 20px"></tr>
							</table>
						</td>
					</tr>
					<tr class="border1px"
						ng-show="transactionData.marginType != 'No Margin'">
						<td colspan="2" align="center">
							<table style="width: 80%" border="0">

								<tr style="height: 20px"></tr>

								<tr>
									<td width="50%"><label class="lable14">Margin
											Percent </label></td>
									<td align="right"><div class="input-group width90"
											align="left">
											<label class="lable14">Margin Amount </label>
										</div></td>
								</tr>
								<tr>
									<td width="50%"><div class="input-group width90">
											<label class="input-group-addon" for="productId"><i
												class="glyphicon glyphicon-asterisk "></i></label><input
												placeholder="Margin Percent"
												ng-disabled="(transactionData.marginType == 'No Margin' || isDisabled)?true:false"
												class="form-control ng-pristine  ng-valid ng-valid-required"
												type="text" required="" valid-number
												ng-model="transactionData.marginPerCent" name="">
										</div></td>
									<td align="right"><div class="input-group width90">
											<label class="input-group-addon" for="productId"><i
												class="glyphicon glyphicon-asterisk "></i></label><input
												placeholder="Margin Amount"
												ng-disabled="(transactionData.marginType == 'No Margin' || isDisabled)?true:false"
												class="form-control ng-pristine  ng-valid ng-valid-required"
												type="text" required="" valid-number
												ng-model="transactionData.marginAmt" name="">
										</div></td>
								</tr>

								<tr style="height: 20px"></tr>
							</table>
						</td>
					</tr>

					<tr class="border1px"
						ng-show="transactionData.marginType != 'No Margin'">
						<td colspan="2" align="center">
							<table style="width: 80%" border="0">

								<tr style="height: 20px"></tr>

								<tr>
									<td width="50%"><label class="lable14">Available
											Margin </label></td>
									<td align="right"><div class="input-group width90"
											align="left">
											<label class="lable14">Net Margin </label>
										</div></td>
								</tr>
								<tr>
									<td width="50%"><div class="input-group width90">
											<label class="input-group-addon" for="productId"><i
												class="glyphicon glyphicon-asterisk "></i></label><input
												placeholder="Available Margin"
												ng-disabled="(transactionData.marginType == 'No Margin' || isDisabled)?true:false"
												class="form-control ng-pristine  ng-valid ng-valid-required"
												type="text" required="" valid-number
												ng-model="transactionData.availableMargin" name="">
										</div></td>
									<td align="right"><div class="input-group width90">
											<label class="input-group-addon" for="productId"><i
												class="glyphicon glyphicon-asterisk "></i></label><input
												placeholder="Net Margin"
												class="form-control ng-pristine  ng-valid ng-valid-required"
												type="text" required="" valid-number
												ng-disabled="(transactionData.marginType == 'No Margin' || isDisabled)?true:false"
												ng-model="transactionData.netMargin" name="">
										</div></td>
								</tr>

								<tr style="height: 20px"></tr>
							</table>
						</td>
					</tr>
					<!-- <tr>
						<td colspan="4" align="center">
							<button type="button" class="btn btn-info width86"
								style="width: 90px; height: 34px;"
								ng-click="saveOrUpdate()">Submit</button>
					</tr> -->



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
										<td width="50%"><input type="button" value="Submit"
											style="width: 90px; height: 34px;" ng-click="submitStatusCodeAction('Submit')"
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

				</table></td>
		</tr>
	</table>
</div>
