<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>jQuery UI Dialog - Default functionality</title>
 	<script src="F:/Personal/MagicWeb/sweetalert-master/dist/sweetalert.min.js"></script>
	<link rel="stylesheet" type="text/css" href="F:/Personal/MagicWeb/sweetalert-master/d/sweetalert.css">

  <script>
  function sweet()
  {
	  swal({
		  title: "Error!",
		  text: "Here's my error message!",
		  type: "error",
		  confirmButtonText: "Cool"
		});
  }
  </script>
</head>
<body>
 window.alert = function (message) {

}
<button onclick="sweet()"> Hi </button>
 
</body>
</html>