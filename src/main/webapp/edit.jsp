<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.helper.*,org.hibernate.*,com.entities.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="all_js_css.jsp" %>
</head>
<body>
<div class="container">
	<%@include file="navbar.jsp" %>
	<h1>Edit Your Note</h1>
	<br>
	<%
	int noteId=Integer.parseInt(request.getParameter("note_id").trim());
	Session s=FactoryProvider.getFactory().openSession();
	
	Note note=(Note)s.get(Note.class, noteId);
	
	
	%>

		<form action="UpdateServlet" method="post">
		<input value="<%= note.getId() %>" name="noteId" type="hidden"/>
			<div class="mb-3">
				<label for="Enter your note content" class="form-label">Note
					title</label> <input required="required" type="text" name="title1"
					class="form-control" id="title" aria-describedby="emailHelp"
					placeholder="Enter note title"
					value=<%= note.getTitle() %> />

			</div>
			<div class="mb-3">
				<label for="exampleInputPassword1" class="form-label">Note
					content</label>
				<textarea required="required" id="content" name="content1"
					placeholder="Enter your content here" style="height: 300px;"
					class="form-control"> <%=note.getContent() %></textarea>
			</div>
			<div class="container text-center">
				<button type="submit" class="btn btn-success">UPDATE</button>

			</div>


		</form>

	</div>

</body>
</html>