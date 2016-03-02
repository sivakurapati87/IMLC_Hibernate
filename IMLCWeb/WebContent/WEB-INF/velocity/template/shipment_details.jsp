<div class="container-fluid"
	style="width: 100%; background-image: url('resources/images/bg.jpg'); background-repeat: no-repeat; background-size: cover;"
	align="center">
	<header-tab></header-tab>
	<form ng-submit="saveOrUpdate()" name="form">
		<table class="table tableBg" border="0" style="width: 70%;">
			<tr style="height: 20px"></tr>
			<tr>
				<td align="center" colspan="4"><label class="lable36">Shipment
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
										<td width="50%"><label class="lable14">Latest
												Shipment Date</label></td>
										<td align="right"></td>
									</tr>
									<tr>
										<td width="50%"><div class="input-group width90">
												<input type="text" class="form-control"
													ng-disabled="isDisabled"
													placeholder="Latest Shipment Date(dd-MMM-yyyy)"
													ng-model="transactionData.strLatestShipmentDate"
													datepicker-popup="dd-MMM-yyyy" is-open="issueOpened"
													ng-click="issueOpened=true"> <span
													class="input-group-btn">
													<button type="button" class="btn btn-default"
														ng-disabled="isDisabled"
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
										<td width="50%"><label class="lable14"> Goods
												Code </label></td>
										<td align="right"><div class="input-group width90"
												align="left">
												<label class="lable14">Goods Description </label>
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
																	placeholder="Goods Code" pause="100"
																	selected-object="selectedCommodityCodeAction"
																	local-data="commodityJsonList"
																	disable-input="isDisabled"
																	search-fields="commodityCode" id="commodityCodeId"
																	initial-value="commodity" title-field="commodityCode"
																	minlength="2" input-class="search-control"
																	match-class="highlight"></div>

															</div></td>
														<td>
															<button type="button" style="height: 34px; width: 40px;"
																class="btn btn-info" data-toggle="modal"
																ng-disabled="isDisabled"
																data-target="#CommodityListPopupId">
																<i class="glyphicon glyphicon-search"></i>
															</button>
														</td>
													</tr>
												</table>
											</div>

										</td>
										<td align="right"><textarea rows="5" cols=""
												style="resize: none;"
												class="form-control ng-pristine  ng-valid ng-valid-required width90"
												placeholder="Goods Description" readonly="readonly"
												ng-model="transactionData.goodsDescription"></textarea></td>
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
										<td width="50%"><label class="lable14"> Incoterms</label></td>
										<td align="right"></td>
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
																	placeholder="Incoterms" pause="100"
																	selected-object="selectedIncotermIdAction"
																	local-data="incotermJsonList"
																	disable-input="isDisabled" search-fields="incotermsId"
																	id="incotermsId" initial-value="incoterm"
																	title-field="incotermsId" minlength="2"
																	input-class="search-control" match-class="highlight"></div>

															</div></td>
														<td>
															<button type="button" style="height: 34px; width: 40px;"
																class="btn btn-info" data-toggle="modal"
																ng-disabled="isDisabled"
																data-target="#IncotermListPopupId">
																<i class="glyphicon glyphicon-search"></i>
															</button>
														</td>
													</tr>
												</table>
											</div>

										</td>
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
										<td width="50%"><label class="lable14">Sender
												Reciever Info </label></td>
										<td align="right"></td>
									</tr>
									<tr>
										<td width="50%"><div class="input-group width90">
												<label class="input-group-addon" for="productId"><i
													class="glyphicon glyphicon-asterisk "></i></label><input
													placeholder="Sender Reciever Info" ng-disabled="isDisabled"
													class="form-control ng-pristine  ng-valid ng-valid-required"
													type="text" required="" valid-alphabet
													ng-model="transactionData.senderRecieverInfo" name="">
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
										<td width="50%"><label class="lable14">Shipment
												Period </label></td>
										<td align="right"><div class="input-group width90"
												align="left">
												<label class="lable14">Period of Presentation</label>
											</div></td>
									</tr>
									<tr>
										<td width="50%"><div class="input-group width90">
												<input placeholder="Shipment Period"
													class="form-control ng-pristine  ng-valid ng-valid-required"
													type="text" required="" valid-number
													ng-disabled="isDisabled"
													ng-model="transactionData.shipmentPeriod" name="">
											</div></td>
										<td align="right"><div class="input-group width90">
												<label class="input-group-addon" for="productId"><i
													class="glyphicon glyphicon-asterisk "></i></label><input
													placeholder="Period of Presentation" readonly="readonly"
													class="form-control ng-pristine  ng-valid ng-valid-required"
													type="text" required="" valid-number
													ng-disabled="isDisabled"
													ng-model="transactionData.periodOfPresentation" name="">
											</div></td>
									</tr>
									<tr style="height: 20px"></tr>

									<tr>
										<td width="50%"><label class="lable14">Additional
												Condition Required </label></td>
										<td align="right"><div class="input-group width90"
												align="left">
												<label class="lable14">Number of Copies </label>
											</div></td>
									</tr>
									<tr>
										<td width="50%"><div class="input-group width90">
												<label class="input-group-addon" for="productId"><i
													class="glyphicon glyphicon-asterisk "></i></label><input
													placeholder="Additional Condition Required"
													class="form-control ng-pristine  ng-valid ng-valid-required"
													type="text" required="" valid-alphabet
													ng-disabled="isDisabled"
													ng-model="transactionData.addtnlConditnReqd" name="">
											</div></td>
										<td align="right"><div class="input-group width90">
												<label class="input-group-addon" for="productId"><i
													class="glyphicon glyphicon-asterisk "></i></label><input
													placeholder="Number of Copies" ng-disabled="isDisabled"
													class="form-control ng-pristine  ng-valid ng-valid-required"
													type="text" required="" valid-number
													ng-model="transactionData.numCopies" name="">
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
										<td width="50%"><label class="lable14">Transition
												Shipment </label></td>
										<td align="right"><div class="input-group width90"
												align="left">
												<label class="lable14">Partial Shipment </label>
											</div></td>
									</tr>
									<tr>
										<td width="50%">
											<div class="input-group width90">
												<select
													class="form-control ng-pristine ng-valid ng-valid-required ng-touched"
													required ng-model="transactionData.transshipment"
													ng-disabled="isDisabled"
													ng-options="lookup.description as lookup.description for lookup in  lookupbean.permittedProhibittedList">
													<option value="" disabled selected>Transition
														Shipment</option>
												</select>
											</div>
										</td>
										<td align="right"><div class="input-group width90">
												<select
													class="form-control ng-pristine ng-valid ng-valid-required ng-touched"
													required ng-model="transactionData.partialShipment"
													ng-disabled="isDisabled"
													ng-options="lookup.description as lookup.description for lookup in  lookupbean.permittedProhibittedList">
													<option value="" disabled selected>Partial
														Shipment</option>
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
										<td width="50%"><label class="lable14">Place of
												Destination </label></td>
										<td align="right"><div class="input-group width90"
												align="left">
												<label class="lable14">Freight Endorsement </label>
											</div></td>
									</tr>
									<tr>
										<td width="50%"><div class="input-group width90">
												<label class="input-group-addon" for="productId"><i
													class="glyphicon glyphicon-asterisk "></i></label><input
													placeholder="Place of Destination" ng-disabled="isDisabled"
													class="form-control ng-pristine  ng-valid ng-valid-required"
													type="text" required="" valid-alphabet
													ng-model="transactionData.placeOfDestination" name="">
											</div></td>
										<td align="right"><div class="input-group width90">
												<label class="input-group-addon" for="productId"><i
													class="glyphicon glyphicon-asterisk "></i></label><input
													placeholder="Freight Endorsement" ng-disabled="isDisabled"
													class="form-control ng-pristine  ng-valid ng-valid-required"
													type="text" required="" valid-number
													ng-model="transactionData.freightEndorsement" name="">
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
										<td width="50%"><label class="lable14">Port of
												Loading </label></td>
										<td align="right"><div class="input-group width90"
												align="left">
												<label class="lable14">Port of Delivery </label>
											</div></td>
									</tr>
									<tr>
										<td width="50%"><div class="input-group width90">
												<label class="input-group-addon" for="productId"><i
													class="glyphicon glyphicon-asterisk "></i></label><input
													placeholder="Port of Loading" ng-disabled="isDisabled"
													class="form-control ng-pristine  ng-valid ng-valid-required"
													type="text" required="" valid-alphabet
													ng-model="transactionData.portofLoading" name="">
											</div></td>
										<td align="right"><div class="input-group width90">
												<label class="input-group-addon" for="productId"><i
													class="glyphicon glyphicon-asterisk "></i></label><input
													placeholder="City of Expiry" ng-disabled="isDisabled"
													class="form-control ng-pristine  ng-valid ng-valid-required"
													type="text" required="" valid-alphabet
													ng-model="transactionData.portofDelivery" name="">
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
										<td width="50%"><label class="lable14">Place of
												Taking Charge </label></td>
										<td align="right"></td>
									</tr>
									<tr>
										<td width="50%"><div class="input-group width90">
												<label class="input-group-addon" for="productId"><i
													class="glyphicon glyphicon-asterisk "></i></label><input
													placeholder="Place of Taking Charge"
													ng-disabled="isDisabled"
													class="form-control ng-pristine  ng-valid ng-valid-required"
													type="text" required="" valid-alphabet
													ng-model="transactionData.placeofTakingCharge" name="">
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
										<td width="50%"><label class="lable14">Instruction
												Negotiating Bank</label></td>
										<td align="right"></td>
									</tr>
									<tr>
										<td width="50%"><div class="input-group width90">
												<label class="input-group-addon" for="productId"><i
													class="glyphicon glyphicon-asterisk "></i></label><input
													placeholder="Instruction Negotiating Bank"
													ng-disabled="isDisabled"
													class="form-control ng-pristine  ng-valid ng-valid-required"
													type="text" required="" valid-alphabet
													ng-model="transactionData.instructionsNegotitatingBank"
													name="">
											</div></td>
										<td align="right"></td>
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
	<div class="modal fade" id="IncotermListPopupId" role="dialog">
		<div class="modal-dialog" align="center">

			<!-- Modal content-->
			<div class="modal-content" style="width: 360px;">
				<div class="modal-body">
					<table border="0" width="100%"
						class="table table-hover table table-bordered">
						<tr>
							<th></th>
							<th>Incoterm id</th>
							<th>Incoterm name</th>
						</tr>
						<tr>
							<td></td>
							<td align="center"><input ng-model="search.incotermsId"
								class="width90"></td>
							<td align="center"><input ng-model="search.incotermName"
								class="width90"></td>
						</tr>
						<tr
							ng-repeat="incoterm in incotermJsonList | filter:{incotermsId:search.incotermsId,incotermName:search.incotermName}"
							ng-class-odd="'odd'" ng-class-even="'even'">
							<td><input type="radio" name="groupName"
								ng-click="onselectIncotermId(incoterm)" /></td>
							<td>{{incoterm.incotermsId}}</td>
							<td>{{incoterm.incotermName}}</td>
						</tr>
					</table>
				</div>
			</div>

		</div>
	</div>
	<div class="modal fade" id="CommodityListPopupId" role="dialog">
		<div class="modal-dialog" align="center">

			<!-- Modal content-->
			<div class="modal-content" style="width: 360px;">
				<div class="modal-body">
					<table border="0" width="100%"
						class="table table-hover table table-bordered">
						<tr>
							<th></th>
							<th>commodity Code</th>
							<th>commodity Description</th>
						</tr>
						<tr>
							<td></td>
							<td align="center"><input ng-model="search.commodityCode"
								class="width90"></td>
							<td align="center"><input
								ng-model="search.commodityDescription" class="width90"></td>
						</tr>
						<tr
							ng-repeat="commodity in commodityJsonList | filter:{commodityCode:search.commodityCode,commodityDescription:search.commodityDescription}"
							ng-class-odd="'odd'" ng-class-even="'even'">
							<td><input type="radio" name="groupName"
								ng-click="onselectCommodityId(commodity)" /></td>
							<td>{{commodity.commodityCode}}</td>
							<td>{{commodity.commodityDescription}}</td>
						</tr>
					</table>
				</div>
			</div>

		</div>
	</div>
</div>