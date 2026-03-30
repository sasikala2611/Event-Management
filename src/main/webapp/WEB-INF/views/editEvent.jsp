<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Edit Event</title>

<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f4f6f8;
	margin: 0;
	padding: 0;
}

.container {
	width: 650px;
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
	background-color: #27ae60;
	color: white;
	border: none;
	font-size: 16px;
	border-radius: 5px;
	cursor: pointer;
}

button:hover {
	background-color: #219150;
}
</style>
</head>

<body>

	<div class="container">
		<h1>Edit Event</h1>

		<form action="${pageContext.request.contextPath}/updateEvent"
			method="post">

			<label>Event Name:</label> <input type="text" name="eventName"
				value="${event.eventName}" required> <label>Date:</label> <input
				type="date" name="date" value="${event.date}" required> <label>Venue:</label>
			<input type="text" name="venue" value="${event.venue}" required>

			<label>Organizer:</label> <input type="text" name="organizer"
				value="${event.organizer}" required> <label>Status:</label>
			<input type="text" name="status" value="${event.status}" required>

			<button type="submit">Update Event</button>
		</form>
	</div>

</body>
</html>