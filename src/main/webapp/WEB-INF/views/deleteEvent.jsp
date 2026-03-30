<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Delete Event</title>

<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f4f6f8;
	margin: 0;
	padding: 0;
}

.container {
	width: 500px;
	margin: 80px auto;
	background: white;
	padding: 30px;
	border-radius: 10px;
	box-shadow: 0 0 10px gray;
	text-align: center;
}

h2 {
	color: #c0392b;
}

p {
	font-size: 18px;
	margin: 20px 0;
}

.btn {
	padding: 10px 20px;
	text-decoration: none;
	color: white;
	border-radius: 5px;
	margin: 10px;
	display: inline-block;
}

.delete-btn {
	background-color: #e74c3c;
}

.cancel-btn {
	background-color: #3498db;
}
</style>
</head>

<body>

	<div class="container">
		<h2>Delete Event</h2>

		<p>Are you sure you want to delete this event?</p>

		<p>
			<strong>${event.eventName}</strong>
		</p>

		<a class="btn delete-btn"
			href="${pageContext.request.contextPath}/confirmDelete?name=${event.eventName}">
			Yes, Delete </a> <a class="btn cancel-btn"
			href="${pageContext.request.contextPath}/viewEvents"> Cancel </a>
	</div>

</body>
</html>