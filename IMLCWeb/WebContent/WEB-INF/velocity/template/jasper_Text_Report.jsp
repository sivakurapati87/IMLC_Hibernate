<div class="container-fluid"
	style="width: 100%; background-image: url('resources/images/bg.jpg'); background-repeat: no-repeat; background-size: cover;"
	align="center">
	<table class="table tableBg" border="0" style="width: 70%;">
		<tr style="height: 20px"></tr>
		<tr>
			<td align="center" colspan="4"><label class="lable36">Jasper
					Text Report</label></td>
		</tr>

		<tr>
			<td colspan="2" align="center"><i
				class="fa fa-spinner fa-spin text_size" ng-show="loader.loading"></i>
			</td>
		</tr>
		<tr ng-hide="loader.loading">
			<td colspan="2" align="center" width="100%"><table
					style="width: 100%" id="table1">

					<tr style="height: 20px"></tr>
					<tr class="border1px">
						<td colspan="2" align="center">
							<table style="width: 80%" border="0">
								<tr style="height: 20px"></tr>
								<tr>
									<td width="50%"><label class="lable14">Transaction
											Number</label></td>
									<td></td>
								</tr>

								<tr>
									<td width="50%"><div class="input-group width90">
											<label class="lable14_white">{{primaryData.transaction_Ref_number}}</label>
										</div></td>
									<td></td>
								</tr>
								<tr style="height: 20px"></tr>
								<tr>
									<td width="50%"><label class="lable14">Issue Date</label></td>
									<td><div class="input-group width90" align="left">
											<label class="lable14">Expiry date</label>
										</div></td>
								</tr>
								<tr>
									<td width="50%"><div class="input-group width90">
											<label class="lable14_white">{{primaryData.strIssue_Date}}</label>
										</div></td>
									<td>

										<div class="input-group width90">
											<label class="lable14_white">{{primaryData.strExpiry_Date}}</label>
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
									<td width="50%"><label class="lable14"> Customer
											ID</label></td>
									<td></td>
								</tr>
								<tr>
									<td width="50%">
										<div class="input-group width90">
											<label class="lable14_white">{{primaryData.customerId}}</label>
										</div>
									</td>
									<td></td>
								</tr>
								<tr style="height: 20px"></tr>
								<tr>
									<td width="50%"><label class="lable14">Customer
											Name</label></td>
									<td></td>
								</tr>
								<tr>
									<td width="50%"><label class="lable14_white">{{primaryData.customerName}}</label>
									</td>
									<td></td>
								</tr>
								<tr style="height: 20px"></tr>
								<tr>
									<td width="50%"><label class="lable14">Customer
											Address</label></td>
									<td></td>
								</tr>
								<tr>
									<td width="50%"><label class="lable14_white">{{primaryData.customerAddress}}</label>
									</td>
									<td valign="top"></td>
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
									<td><div class="input-group width90" align="left">
											<label class="lable14">Beneficiary Name</label>
										</div></td>
								</tr>
								<tr>

									<td width="50%">
										<div class="input-group width90">
											<label class="lable14_white">{{primaryData.counterpartyId}}</label>
										</div>

									</td>
									<td><label class="lable14_white">{{primaryData.counterpartyName}}</label>
									</td>
								</tr>
								<tr style="height: 20px"></tr>
								<tr>
									<td width="50%"></td>
									<td><div class="input-group width90" align="left">
											<label class="lable14">Beneficiary Address</label>
										</div></td>
								</tr>
								<tr>
									<td width="50%"></td>
									<td><label class="lable14_white">{{primaryData.counterpartyAddress}}</label>
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
									<td width="50%" align="left"><label class="lable14">LC
											Amount </label></td>
									<td width="50%"><label class="lable14">LC Amount
											in Domestic Currency</label></td>


								</tr>
								<tr>
									<td width="50%">
										<div class="input-group width90">
											<label class="lable14_white">{{primaryData.lCAmount}}</label>
											<label class="lable14" style="padding-left: 4px">{{primaryData.lcAmountCurrency}}</label>
										</div>
									</td>
									<td><div class="input-group width90">
											<label class="lable14_white">{{primaryData.lCAmount_Domestic_Currency}}</label>
											<label class="lable14" style="padding-left: 4px">INR</label>
										</div></td>
								</tr>
								<tr>
									<td align="left" width="">
										<table style="width: 100%" border="0">
											<tr>
												<td width="24%"><label class="lable14">
														Tolerance % </label></td>
												<td width="10%" align="right"><label
													class="lable14_white">{{primaryData.tolerance_Min}}</label></td>
												<td width="4%" class="lable22_Medium" align="center">/</td>
												<td width="52%"><label class="lable14_white">{{primaryData.tolerance_Max}}</label>
												</td>
											</tr>
										</table>
									</td>
									<td width="50%"></td>

								</tr>


								<tr style="height: 20px"></tr>
							</table>
						</td>
					</tr>
					 <tr style="height: 10px"></tr>
					<tr>
						<td colspan="4" align="center">
							<button type="button" class="btn btn-info" ng-click="exportToExcel('#table1')" 
								style="width: 90px; height: 34px;">Export</button>
						</td>
					</tr> 
				</table></td>
		</tr>
	</table>
</div>
<div class="container">
	<!-- Trigger the modal with a button -->
	<button type="button" id="transactionPopup" class="btn btn-info btn-lg"
		style="display: none;" data-toggle="modal"
		data-target="#transactionPopupId">Open Modal</button>

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
							<td align="center"><input ng-model="search.transaction_Ref_number"
								class="width90"></td>
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