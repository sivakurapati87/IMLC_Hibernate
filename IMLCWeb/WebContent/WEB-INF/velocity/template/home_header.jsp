<script type="text/javascript">
	$(document).ready(function() {
		$('a').on('click', function(e) {
			e.preventDefault();
		});

		$('#ddmenu li').hover(function() {
			clearTimeout($.data(this, 'timer'));
			$('ul', this).stop(true, true).slideDown(200);
		}, function() {
			$.data(this, 'timer', setTimeout($.proxy(function() {
				$('ul', this).stop(true, true).slideUp(200);
			}, this), 100));
		});

	});
</script>
<div id="w">
	<table style="width: 100%" border="1">
		<nav>
			<ul id="ddmenu">
				<li><a ui-sref="home"><i class="fa fa-home"></i> Home</a></li>
				<li><a href="#"> <i class="fa fa-download"></i><label
						style="padding: 0 8px;font-weight: lighter;cursor: pointer;">Import</label>
				</a>
					<ul style="display: none;">
						<li ><a ui-sref="global_parameters" style="color: #404040;">Import LC Parameter
								Configuration</a></li>
						<li><a ui-sref="primary_details" ng-class="{disabled: importIssue}" style="color: #404040;">Import LC Issue</a></li>
					</ul></li>
					<li><a href="#"><i class="fa fa-pencil-square-o"></i><label
						style="padding: 0 8px;font-weight: lighter;cursor: pointer;">Report</label>
				</a>
					<ul style="display: none;">
						<li ><a ui-sref="jasper_Text_Report" style="color: #404040;">Jasper Text Report
								</a></li>
						<li><a ui-sref="swift_Message" style="color: #404040;">SWIFT Message</a></li>
					</ul></li>
					
				<li><a ng-click="signout()"><i class="fa fa-power-off"></i><label
						style="padding: 0 8px;font-weight: lighter;cursor: pointer;">
						Signout</label></a></li>

			</ul>
		</nav>
	</table>
</div>
