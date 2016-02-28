<!doctype html>
<html lang="en" ng-app="myApp">
<head>

<meta charset="utf-8">
<title>Service App</title>
<link rel="stylesheet" href="resources/css/angucomplete-alt.css" />
<link rel="stylesheet"
	href="webjars/bootstrap/3.3.5/css/bootstrap.min.css">
<link rel="stylesheet"
	href="webjars/font-awesome/4.3.0/css/font-awesome.css">
<link rel="stylesheet" href="resources/css/app.css" />
<link rel="stylesheet" href="resources/css/imlc.css" />
<link rel="stylesheet" href="resources/css/jquery.bootstrap-touchspin.css" />

<script src="webjars/jquery/2.1.1/jquery.min.js" type="text/javascript"></script>
<script src="resources/js/typed.js" type="text/javascript"></script>
<script src="webjars/angularjs/1.4.4/angular.js"></script>
<script src="webjars/angularjs/1.4.4/angular-cookies.js"></script>
<script src="resources/js/angucomplete-alt.js"></script>
<script src="resources/js/jquery.bootstrap-touchspin.js"></script>
<script src="resources/js/angular-ui-router.js"></script>
<script src="webjars/bootstrap/3.3.5/js/bootstrap.min.js"></script>


<script
	src="https://cdnjs.cloudflare.com/ajax/libs/angular-ui-bootstrap/0.13.2/ui-bootstrap-tpls.js"></script>
<script src="resources/js/app.js"></script>
<script src="resources/js/controller/LoginController.js"></script>
<script src="resources/js/controller/Home_Header_Controller.js"></script>
<script src="resources/js/controller/HomeController.js"></script>
<script src="resources/js/controller/Global_Parameter_Controller.js"></script>
<script src="resources/js/controller/Primary_Detail_Controller.js"></script>
<script src="resources/js/controller/JasperTextReportController.js"></script>
<script src="resources/js/controller/SwiftController.js"></script>
<script src="resources/js/controller/Advising_Bank_Controller.js"></script>

<script src="resources/js/service/constants.js"></script>
<script src="resources/js/service/Global_Parameter_Service.js"></script>
<script src="resources/js/service/LoginService.js"></script>
<script src="resources/js/service/Excel.js"></script>
<script type="text/javascript">
function disableF5(e) { if ((e.which || e.keyCode) == 116 || (e.ctrlKey && e.keycode) == 82) e.preventDefault(); };

$(document).ready(function(){
$(document).on("keydown", disableF5);
});

</script>
</head>
<body>
	<div ui-view="header"></div>
	<div ui-view="content"></div>
	<div ui-view="footer"></div>

	<div></div>

</body>
</html>
