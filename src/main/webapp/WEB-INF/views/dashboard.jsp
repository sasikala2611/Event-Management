<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Dashboard</title>

<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f4f6f8;
	margin: 0;
	padding: 0;
}

.container {
	width: 950px;
	margin: 40px auto;
	text-align: center;
}

h1 {
	color: #2c3e50;
}

.card {
	width: 200px;
	display: inline-block;
	margin: 20px;
	padding: 25px;
	background: white;
	border-radius: 10px;
	box-shadow: 0 0 10px gray;
}

.count {
	font-size: 32px;
	font-weight: bold;
	color: #3498db;
}

.actions {
	margin-top: 40px;
}

.btn {
	text-decoration: none;
	background-color: #3498db;
	color: white;
	padding: 12px 20px;
	margin: 10px;
	display: inline-block;
	border-radius: 5px;
	font-weight: bold;
}

.btn:hover {
	background-color: #2980b9;
}
</style>
</head>

<body>

	<div class="container">

		<h1>Event Management System</h1>

		<div class="card">
			<h3>Total Events</h3>
			<div class="count">${totalEvents}</div>
		</div>

		<div class="card">
			<h3>Upcoming</h3>
			<div class="count">${upcomingCount}</div>
		</div>

		<div class="card">
			<h3>Completed</h3>
			<div class="count">${completedCount}</div>
		</div>

		<div class="actions">
			<h2>Quick Actions</h2>

			<a class="btn" href="${pageContext.request.contextPath}/addEventPage">
				Add Event </a> <a class="btn"
				href="${pageContext.request.contextPath}/viewEvents"> View
				Events </a> <a class="btn"
				href="${pageContext.request.contextPath}/search"> Search Event </a>

			<a class="btn" href="${pageContext.request.contextPath}/viewEvents">
				Edit Event </a>
		</div>

	</div>

</body>
</html>