<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Event Management System</title>

<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f4f6f8;
	margin: 0;
	padding: 0;
}

.container {
	width: 700px;
	margin: 40px auto;
	background: white;
	padding: 30px;
	border-radius: 10px;
	box-shadow: 0 0 10px gray;
}

h1 {
	text-align: center;
	color: #2c3e50;
}

label {
	font-weight: bold;
	display: block;
	margin-top: 10px;
}

input {
	width: 100%;
	padding: 10px;
	margin-top: 5px;
	margin-bottom: 15px;
	box-sizing: border-box;
}

button {
	width: 100%;
	padding: 12px;
	background-color: #3498db;
	color: white;
	border: none;
	font-size: 16px;
	border-radius: 5px;
	cursor: pointer;
}

button:hover {
	background-color: #2980b9;
}

table {
	width: 100%;
	margin-top: 25px;
	border-collapse: collapse;
}

table, th, td {
	border: 1px solid gray;
}

th, td {
	padding: 10px;
	text-align: center;
}

th {
	background-color: #3498db;
	color: white;
}
</style>
</head>

<body>

	<div class="container">



		<form action="${pageContext.request.contextPath}/addEvent"
			method="post">

			<label>Event Name:</label> <input type="text" name="eventName"
				placeholder="Enter event name" required> <label>Date:</label>
			<input type="date" name="date" required> <label>Venue:</label>
			<input type="text" name="venue" placeholder="Enter venue" required>

			<label>Organizer:</label> <input type="text" name="organizer"
				placeholder="Enter organizer name" required> <label>Status:</label>
			<input type="text" name="status" placeholder="Upcoming or Completed"
				required>

			<button type="submit">Add Event</button>
		</form>
		<br>
		<br>




		<c:forEach var="event" items="${events}">

			<a
				href="${pageContext.request.contextPath}/editEvent?name=${event.eventName}">
				Edit </a>

		</c:forEach>
		<br>

		<div style="text-align: center;">
			<a href="${pageContext.request.contextPath}/"
				style="text-decoration: none; background-color: #3498db; color: white; padding: 10px 15px; border-radius: 5px;">
				Back to Home </a>
		</div>

	</div>
</body>
</html>