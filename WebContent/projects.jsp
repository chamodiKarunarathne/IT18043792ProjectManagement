<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.Project"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Project Management</title>
<link rel="stylesheet" href="Views/bootstrap.min.css">
<script src="Components/jquery-3.2.1.min.js"></script>
<script src="Components/projects.js"></script>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-6">
				<h1>Project Management</h1>
				
				<form id="formProject" name="formProject" action="projects.jsp">
				
					Project code: <input id="projectCode" name="projectCode" type="text" class="form-control form-control-sm"> <br>
					Project name: <input id="projectName" name="projectName" type="text" class="form-control form-control-sm"> <br> 
					Project price: <input id="projectPrice" name="projectPrice" type="text"class="form-control form-control-sm"> <br> 
					Project description: <input id="projectDesciption" name="projectDesciption" type="text" class="form-control form-control-sm"> <br>
					
					 <input id="btnSave" name="btnSave" type="button" value="Save" class="btn btn-primary"> 
					 <input type="hidden" id="hidProjectIDSave" name="hidProjectIDSave" value="">
					 
				</form>
				
				<div id="alertSuccess" class="alert alert-success"></div>
				<div id="alertError" class="alert alert-danger"></div>
				<br>
				<div id="divProjectGrid">
					<%
					Project projObj = new Project();
					out.print(projObj.readProject());
					%>
				</div>
			</div>
		</div>
	</div>
</body>
</html>