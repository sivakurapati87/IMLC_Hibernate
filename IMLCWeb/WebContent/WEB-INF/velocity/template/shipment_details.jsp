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
													placeholder="Latest Shipment Date(dd-MMM-yyyy)"
													ng-model="primary_Details_Obj.strLatestShipmentDate"
													datepicker-popup="dd-MMM-yyyy" is-open="issueOpened"
													ng-click="issueOpened=true"> <span
													class="input-group-btn">
													<button type="button" class="btn btn-default"
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
																	selected-object="selectedBenificieryIdAction"
																	local-data="commodityJsonList"
																	search-fields="commodityCode" id="commodityCodeId"
																	initial-value="counterParty"
																	title-field="commodityCode" minlength="2"
																	input-class="search-control" match-class="highlight"></div>

															</div></td>
														<td>
															<button type="button" style="height: 34px; width: 40px;"
																class="btn btn-info" data-toggle="modal"
																data-target="#counterpartyListId">
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
												ng-model="primary_Details_Obj.goodsDescription"></textarea></td>
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
																data-target="#counterpartyListId">
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
													placeholder="Sender Reciever Info"
													class="form-control ng-pristine  ng-valid ng-valid-required"
													type="text" required="" valid-alphabet
													ng-model="primary_Details_Obj.senderRecieverInfo" name="">
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
												<label class="input-group-addon" for="productId"><i
													class="glyphicon glyphicon-asterisk "></i></label><input
													placeholder="Shipment Period"
													class="form-control ng-pristine  ng-valid ng-valid-required"
													type="text" required="" valid-number
													ng-model="primary_Details_Obj.shipmentPeriod" name="">
											</div></td>
										<td align="right"><div class="input-group width90">
												<label class="input-group-addon" for="productId"><i
													class="glyphicon glyphicon-asterisk "></i></label><input
													placeholder="Period of Presentation"
													class="form-control ng-pristine  ng-valid ng-valid-required"
													type="text" required="" valid-number
													ng-model="primary_Details_Obj.periodOfPresentation" name="">
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
													ng-model="primary_Details_Obj.addtnlConditnReqd" name="">
											</div></td>
										<td align="right"><div class="input-group width90">
												<label class="input-group-addon" for="productId"><i
													class="glyphicon glyphicon-asterisk "></i></label><input
													placeholder="Number of Copies"
													class="form-control ng-pristine  ng-valid ng-valid-required"
													type="text" required="" valid-number
													ng-model="primary_Details_Obj.numCopies" name="">
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
													required ng-model="primary_Details_Obj.transshipment"
													ng-options="lookup.description as lookup.description for lookup in  lookupbean.permittedProhibittedList">
													<option value="" disabled selected>Transition
														Shipment</option>
												</select>
											</div>
										</td>
										<td align="right"><div class="input-group width90">
												<select
													class="form-control ng-pristine ng-valid ng-valid-required ng-touched"
													required ng-model="primary_Details_Obj.partialShipment"
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
													placeholder="Place of Destination"
													class="form-control ng-pristine  ng-valid ng-valid-required"
													type="text" required="" valid-alphabet
													ng-model="primary_Details_Obj.placeOfDestination" name="">
											</div></td>
										<td align="right"><div class="input-group width90">
												<label class="input-group-addon" for="productId"><i
													class="glyphicon glyphicon-asterisk "></i></label><input
													placeholder="Freight Endorsement"
													class="form-control ng-pristine  ng-valid ng-valid-required"
													type="text" required="" valid-number
													ng-model="primary_Details_Obj.freightEndorsement" name="">
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
													placeholder="Port of Loading"
													class="form-control ng-pristine  ng-valid ng-valid-required"
													type="text" required="" valid-alphabet
													ng-model="primary_Details_Obj.portofLoading" name="">
											</div></td>
										<td align="right"><div class="input-group width90">
												<label class="input-group-addon" for="productId"><i
													class="glyphicon glyphicon-asterisk "></i></label><input
													placeholder="City of Expiry"
													class="form-control ng-pristine  ng-valid ng-valid-required"
													type="text" required="" valid-alphabet
													ng-model="primary_Details_Obj.portofDelivery" name="">
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
													class="form-control ng-pristine  ng-valid ng-valid-required"
													type="text" required="" valid-alphabet
													ng-model="primary_Details_Obj.placeofTakingCharge" name="">
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
													class="form-control ng-pristine  ng-valid ng-valid-required"
													type="text" required="" valid-alphabet
													ng-model="primary_Details_Obj.instructionsNegotitatingBank"
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
								ng-hide="transactionData == undefined"><a
								ui-sref="draft_details" tooltip="Next"> <i
									class="fa fa-arrow-right fa-2x colorWhite"></i>
							</a>
						</tr>

					</table></td>
			</tr>
		</table>
	</form>
</div>
