<div id="mainWrapper"
	style="width: 100%; background-image: url('resources/images/bg.jpg'); background-repeat: no-repeat; background-size: cover; height: 680px;"
	align="center">
	<table>
		<tr style="height: 100px">
			<td></td>
		</tr>
	</table>
	<table class="table " border="0"
		style="width: 35%; background: rgba(95, 100, 107, 0.8);">
		<tr>
			<td align="center"><label class="lable42"
				style="padding-top: 18px;">Login to your account</label></td>
		</tr>
		<tr style="height: 36px"></tr>
		<tr>
			<td width="80%" align="center" style="border-top: 1px solid #ddd;">
				<form ng-submit="login()">
					<table style="width: 100%">


						<tr style="height: 20px"></tr>
						<tr>
							<td colspan="2" align="center"><div
									class="input-group width86">
									<label class="input-group-addon" for="username"><i
										class="glyphicon glyphicon-user"></i></label> <input type="text"
										class="form-control" id="username" placeholder="User Name"
										ng-model="user.userName" required>
								</div></td>
						</tr>
						<tr style="height: 10px"></tr>
						<tr>
							<td colspan="2" align="center"><div
									class="input-group width86">
									<label class="input-group-addon" for="password"><i
										class="glyphicon glyphicon-lock"></i></label> <input type="password"
										class="form-control" id="password" name="password"
										ng-model="user.password" placeholder="Password" required>
								</div></td>
						</tr>
						<tr style="height: 20px"></tr>
						<tr>
							<td colspan="2" align="center"><input type="submit"
								style="width: 120px" class="btn btn-success" value="Login"></td>
						</tr>
						<tr style="height: 5px"></tr>
						<tr>
							<td colspan="2" align="center"><input type="checkbox"
								ng-model="user.isStaySigned"> <label class="labelfont12">Stay
									signed in employees</label></td>
						</tr>
					</table>
				</form>
			</td>
		</tr>
		<!-- 		<tr> -->
		<!-- 			<td><input type="file" file-model="myFile" /> -->
		<!-- 				<button ng-click="uploadFile()">Upload</button></td> -->
		<!-- 		</tr>  -->
		<!-- <tr>
			<td> <button ng-click="download()">Download</button></td>
		</tr> -->
		<!-- 		<tr> -->
		<!-- 			<td><object ng-show="content" data="{{content}}" type="application/pdf" style="width: 100%; height: 400px;"></object></td> -->
		<!-- 		</tr> -->
		<!-- <tr>
			<td><input type="file" id="file" name="file" multiple
				onchange="angular.element(this).scope().getFileDetails(this)" />
				<button ng-click="uploadFile()">Upload</button></td>
		</tr> -->

		<tr style="height: 15px"></tr>
		<tr>
			<td style="border-top: 1px solid #ddd;" class="lable14"><table>
					<tr>
						<td colspan="2" style="padding-left: 16px;"><label
							class="lable16">Forget your Password?</label></td>
					</tr>
					<tr>
						<td colspan="2" style="padding-left: 16px;"><label
							class="labelfont12">No worries,</label> <a><label
								class="labelfont12_blue">click here</label> </a><label
							class="labelfont12">&nbsp;to reset your password.</label></td>
					</tr>
				</table></td>
		</tr>
	</table>

</div>

<div class="container">
	<!-- Trigger the modal with a button -->
	<button type="button" id="loginErrorId" class="btn btn-info btn-lg"
		style="display: none;" data-toggle="modal" data-target="#loginError">Open
		Modal</button>

	<!-- Modal -->
	<div class="modal fade" id="loginError" role="dialog">
		<div class="modal-dialog" align="center">

			<!-- Modal content-->
			<div class="modal-content" style="width: 400px;">
				<div class="modal-body">
					<p style="text-align: center;">Invalid User Name or Password</p>
				</div>
				<div class="modal-footer" align="center">
					<table style="width: 55%" border="0">
						<tr>
							<td width="100%">
								<button type="button" class="btn btn-danger"
									data-dismiss="modal">Ok</button>
							</td>
						</tr>
					</table>
				</div>
			</div>

		</div>
	</div>
</div>