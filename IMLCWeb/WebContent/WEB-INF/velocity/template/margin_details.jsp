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
												class="glyphicon glyphicon-asterisk "></i></label><select
												class="form-control ng-pristine ng-valid ng-valid-required ng-touched"
												required ng-change="value()"
												ng-model="primary_Details_Obj.confirmingInstructions">
												<option value="" disabled selected>Margin Type</option>
												<option value="">No Margin</option>
												<option value="AnyBank">Lien</option>
												<option value="SelectBank">Customer Deposit</option>
												<option value="SelectBank">Internal Bank A/c</option>
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
												placeholder="Debit Account Number" ng-disabled="isDisabled"
												class="form-control ng-pristine  ng-valid ng-valid-required"
												type="text" required="" valid-alphabet
												ng-model="primary_Details_Obj.city_Of_Expiry" name="">
										</div></td>
									<td align="right"><div class="input-group width90">
											<label class="input-group-addon" for="productId"><i
												class="glyphicon glyphicon-asterisk "></i></label><input
												placeholder="Credit Account Number" ng-disabled="isDisabled"
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
												placeholder="Margin Percent" ng-disabled="isDisabled"
												class="form-control ng-pristine  ng-valid ng-valid-required"
												type="text" required="" valid-alphabet
												ng-model="primary_Details_Obj.city_Of_Expiry" name="">
										</div></td>
									<td align="right"><div class="input-group width90">
											<label class="input-group-addon" for="productId"><i
												class="glyphicon glyphicon-asterisk "></i></label><input
												placeholder="Margin Amount" ng-disabled="isDisabled"
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
												placeholder="Available Margin" ng-disabled="isDisabled"
												class="form-control ng-pristine  ng-valid ng-valid-required"
												type="text" required="" valid-alphabet
												ng-model="primary_Details_Obj.city_Of_Expiry" name="">
										</div></td>
									<td align="right"><div class="input-group width90">
											<label class="input-group-addon" for="productId"><i
												class="glyphicon glyphicon-asterisk "></i></label><input
												placeholder="Net Margin" ng-disabled="isDisabled"
												class="form-control ng-pristine  ng-valid ng-valid-required"
												type="text" required="" valid-alphabet
												ng-model="primary_Details_Obj.city_Of_Expiry" name="">
										</div></td>
								</tr>

								<tr style="height: 20px"></tr>
							</table>
						</td>
					</tr>



				</table></td>
		</tr>
	</table>
</div>
