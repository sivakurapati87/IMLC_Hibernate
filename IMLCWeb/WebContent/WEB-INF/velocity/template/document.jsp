<div class="container-fluid"
	style="width: 100%; background-image: url('resources/images/bg.jpg'); background-repeat: no-repeat; background-size: cover;"
	align="center">
	<header-tab></header-tab>
	<form ng-submit="saveOrUpdate()" name="form">
		<table class="table tableBg" border="0" style="width: 70%;">
			<tr style="height: 20px"></tr>
			<tr>
				<td align="center" colspan="4"><label class="lable36">Document</label></td>
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
										<td width="50%"><label class="lable14"> Document
												Code</label></td>
										<td align="right"><div class="input-group width90"
												align="left">
												<label class="lable14">Document Name</label>
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
																	disable-input="isDisabled" placeholder="Document Code"
																	pause="100" selected-object="selectedDocumentIdAction"
																	local-data="documentJsonList"
																	search-fields="documentId" id="documentId"
																	initial-value="document" title-field="documentId"
																	minlength="2" input-class="search-control"
																	match-class="highlight"></div>

															</div></td>
														<td>
															<button type="button" style="height: 34px; width: 40px;"
																class="btn btn-info" data-toggle="modal"
																ng-disabled="isDisabled" data-target="#documentPopupId">
																<i class="glyphicon glyphicon-search"></i>
															</button>
														</td>
													</tr>
												</table>
											</div>

										</td>
										<td align="right"><input placeholder="Document Name"
											readonly="readonly"
											class="form-control ng-pristine  ng-valid ng-valid-required width90"
											type="text" required=""
											ng-model="transactionData.documentName" name="productId"></td>
									</tr>
									<tr style="height: 20px"></tr>
									<tr>
										<td width="50%"></td>
										<td align="right"><div class="input-group width90"
												align="left">
												<label class="lable14">Document Description</label>
											</div></td>
									</tr>
									<tr>
										<td width="50%"></td>
										<td align="right"><textarea rows="5" cols=""
												readonly="readonly" style="resize: none;"
												class="form-control ng-pristine  ng-valid ng-valid-required width90"
												placeholder="Document Description"
												ng-model="transactionData.documentDescription"></textarea></td>
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
<div class="modal fade" id="documentPopupId" role="dialog">
	<div class="modal-dialog" align="center">

		<!-- Modal content-->
		<div class="modal-content" style="width: 400px;">
			<div class="modal-body">
				<table border="0" width="100%"
					class="table table-hover table table-bordered">
					<tr>
						<th></th>
						<th>Document Code</th>
						<th>Document Name</th>
						<th>Document address</th>
					</tr>
					<tr>
						<td></td>
						<td align="center"><input ng-model="search.documentId"
							class="width90"></td>
						<td align="center"><input ng-model="search.documentName"
							class="width90"></td>
						<td align="center"><input
							ng-model="search.documentDescription" class="width90"></td>
					</tr>
					<tr
						ng-repeat="document in documentJsonList | filter:{documentId:search.documentId,documentName:search.documentName,documentDescription:search.documentDescription}"
						ng-class-odd="'odd'" ng-class-even="'even'">
						<td><input type="radio" name="groupName"
							ng-click="onselectDocumentId(document)" /></td>
						<td>{{document.documentId}}</td>
						<td>{{document.documentName}}</td>
						<td>{{document.documentDescription}}</td>
					</tr>
				</table>
			</div>
		</div>

	</div>
</div>