<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html">
<html>
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="/main.css">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
<title>Create Book</title>
</head>
<body>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>    
<div class="container">
	<h1>New Book</h1>
	<form:form action="/books/create" method="post" modelAttribute="book">
    	<div class="mb-3">
    		<p>
        		<form:label path="title">Title</form:label>
        		<form:errors path="title"/>
        		<form:input name="title" path="title"/>
    		</p>
   		</div>
   		<div class="mb-3">
   			<p>
        		<form:label path="description" class="form-label">Description</form:label>
        		<form:errors path="description"/>
        		<form:textarea name="description" path="description"/>
    		</p>
    	</div>
    	<div class="mb-3">
    		<p>
        		<form:label path="language" class="form-label">Language</form:label>
        		<form:errors path="language"/>
       			<form:input class="form-control" name="language" path="language"/>
    		</p>
    	</div>
    	<div class="mb-3">
    		<p>
        		<form:label path="numberOfPages" class="form-label">Pages</form:label>
        		<form:errors path="numberOfPages"/>     
       			<form:input class="form-control" name="numberOfPages" type="number" path="numberOfPages"/>
    		</p>    
    	</div>
    	<div class="mb-3">
    		<input class="btn btn-primary" type="submit" value="Submit"/>
    	</div>
		</form:form> 
</div>
</body>
</html>