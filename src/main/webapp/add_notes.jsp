<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Notes</title>
<%@include file ="all_js_css.jsp" %>
</head>
<body>

	<div class= "container">
		<%@include file ="navbar.jsp" %>
		<br>
		
		<h1>Please fill your note details</h1>
		
		
		<!--this is add form  -->
		<form action="SaveNotesServlet" method="post">
			<div class="mb-3">
				<label for="Enter your note content" class="form-label">Note
					title</label> <input required="required" type="text" name="title1"
					class="form-control" id="title" aria-describedby="emailHelp"
					placeholder="Enter note title" />

			</div>
			<div class="mb-3">
				<label for="exampleInputPassword1" class="form-label">Note
					content</label>
				<textarea required="required" id="content" name="content1"
					placeholder="Enter your content here" style="height: 300px;"
					class="form-control"></textarea>
			</div>
			<div class="container text-center">
				<button type="submit" class="btn btn-primary">ADD</button>

			</div>


		</form>

	</div>

</body>
</html>