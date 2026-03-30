<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Event List</title>
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f4f4f4;
	margin: 0;
	padding: 0;
}

.container {
	width: 80%;
	margin: 30px auto;
	background-color: #fff;
	padding: 20px;
	border-radius: 8px;
	box-shadow: 0px 0px 10px #ccc;
}

h1 {
	text-align: center;
	color: #333;
}

table {
	width: 100%;
	border-collapse: collapse;
	margin-top: 20px;
}

table, th, td {
	border: 1px solid #ddd;
}

th, td {
	padding: 12px;
	text-align: center;
}

th {
	background-color: #3498db;
	color: white;
}

tr:nth-child(even) {
	background-color: #f9f9f9;
}

a {
	text-decoration: none;
	padding: 5px 10px;
	border-radius: 4px;
	color: white;
}

a.edit {
	background-color: #2ecc71;
}

a.delete {
	background-color: #e74c3c;
}

.back-home {
	display: block;
	width: 150px;
	margin: 20px auto 0 auto;
	text-align: center;
	background-color: #3498db;
	color: white;
	padding: 10px;
	border-radius: 5px;
}

.back-home:hover, a.edit:hover, a.delete:hover {
	opacity: 0.8;
}
</style>
</head>
<body>
	<div class="container">
		<h1>Event List</h1>

		<table>
			<tr>
				<th>Event Name</th>
				<th>Date</th>
				<th>Venue</th>
				<th>Organizer</th>
				<th>Status</th>
				<th>Actions</th>
			</tr>

			<c:forEach var="event" items="${events}">
				<tr>
					<td>${event.eventName}</td>
					<td>${event.date}</td>
					<td>${event.venue}</td>
					<td>${event.organizer}</td>
					<td>${event.status}</td>
					<td><a class="edit"
						href="${pageContext.request.contextPath}/editEvent?name=${event.eventName}">Edit</a>
						<a class="delete"
						href="${pageContext.request.contextPath}/deleteEvent?name=${event.eventName}">Delete</a>
					</td>
				</tr>
			</c:forEach>
		</table>

		<a class="back-home" href="${pageContext.request.contextPath}/">Back
			to Home</a>
	</div>
</body>
</html>