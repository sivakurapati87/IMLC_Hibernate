<div class="container-fluid"
	style="width: 100%; background-image: url('resources/images/bg.jpg'); background-repeat: no-repeat; background-size: cover;"
	align="center">
	<table class="table tableBg" border="0" style="width: 70%;" id="table1">
		<tr style="height: 20px"></tr>
		<tr>
			<td align="center" colspan="4"><label class="lable36">Swift
					Message</label></td>
		</tr>

		<tr>
			<td colspan="2" align="center"><i
				class="fa fa-spinner fa-spin text_size" ng-show="loader.loading"></i>
			</td>
		</tr>
		<tr ng-hide="loader.loading" ng-repeat="swift in swiftList">
			<td colspan="2" align="center" width="100%"><table
					style="width: 100%">

					<tr class="border1px">
						<td colspan="2" align="center">
							<table style="width: 80%" border="0">
								<tr style="height: 10px"></tr>
								<tr>
									<td width="50%"><label class="lable14">{{swift.tagNumber}}_{{swift.field_Name}}</label></td>
									<td><div class="input-group width90" align="left">
											<label class="lable14_white">{{swift.fieldValue}}</label>
										</div></td>
								</tr>
								<tr style="height: 10px"></tr>
							</table>
						</td>
					</tr>
				</table></td>
		</tr>
		<tr style="height: 10px"></tr>
		<tr>
			<td colspan="4" align="center">
				<button type="button" class="btn btn-info"
					ng-click="exportToExcel('#table1')"
					style="width: 90px; height: 34px;">Export</button>
			</td>
		</tr>
		<tr style="height: 10px"></tr>
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
