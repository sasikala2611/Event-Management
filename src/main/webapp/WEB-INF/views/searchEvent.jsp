<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Search Event</title>

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

input {
	width: 75%;
	padding: 10px;
	margin-right: 10px;
}

button {
	padding: 10px 20px;
	background-color: #3498db;
	color: white;
	border: none;
	border-radius: 5px;
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

a.back-home {
	display: inline-block;
	margin-top: 20px;
	text-decoration: none;
	background-color: #3498db;
	color: white;
	padding: 10px 15px;
	border-radius: 5px;
}

a.back-home:hover {
	opacity: 0.8;
}
</style>
</head>

<body>

	<div class="container">
		<h1>Search Event</h1>

		<form action="${pageContext.request.contextPath}/searchEvent"
			method="get">
			<input type="text" name="name" placeholder="Enter event name"
				required>
			<button type="submit">Search</button>
		</form>

		<c:if test="${not empty event}">
			<table>
				<tr>
					<th>Event Name</th>
					<th>Date</th>
					<th>Venue</th>
					<th>Organizer</th>
					<th>Status</th>
				</tr>
				<tr>
					<td>${event.eventName}</td>
					<td>${event.date}</td>
					<td>${event.venue}</td>
					<td>${event.organizer}</td>
					<td>${event.status}</td>
				</tr>
			</table>
		</c:if>

		<div style="text-align: center;">
			<a class="back-home" href="${pageContext.request.contextPath}/">Back
				to Home</a>
		</div>
	</div>

</body>
</html>