<!DOCTYPE html>

<html lang="en" ng-app="crudApp">
<head>
<title>Small Business Insurance Quote Application</title>
<link href="css/bootstrap.css" rel="stylesheet" />
<link href="css/app.css" rel="stylesheet" />
<script src="js/lib/bootstrap.min.js" type="javascript"></script>
</head>
<body>

	<div class="page-title container container-fluid">
		<div class="page-heading">
			<div class="row-content ng-scope">
				<h1 class="heading-text">SMALL BUSINESS INSURANCE QUOTE</h1>
			</div>
		</div>
	</div>

	<div class="container container-fluid all-border">
		<div ui-view></div>
	</div>

        
    
	<script src="js/lib/angular.min.js"></script>
	<script src="js/lib/angular-ui-router.min.js"></script>
	<script src="js/lib/localforage.min.js"></script>
	<script src="js/lib/ngStorage.min.js"></script>
	<script src="js/app/app.js"></script>
	<script src="js/app/HomeController.js"></script>
	<script src="js/app/BusinessController.js"></script>
	<script src="js/app/PersonalController.js"></script>
</body>
</html>