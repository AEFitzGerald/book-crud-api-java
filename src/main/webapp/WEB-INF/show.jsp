<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html">
<html>
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="/main.css">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
<title>Book Details</title>

</head>
<body>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>   
<div class="container">
	<div class="card">
  		<div class="card-body">
    		<h5 class="card-title">Title: <c:out value="${book.title}"/></h5>
    		<h6 class="card-subtitle mb-2 text-muted">Description: <c:out value="${book.description}"/></h6>
    		<p class="card-text">Language: <c:out value="${book.language}"/></p>
    		<p class="card-text">Pages: <c:out value="${book.numberOfPages}"/></p>
    		<a href="/books/${book.id}/edit">Edit Book</a>
    		<div class="mb3">
    			<form action="/books/${book.id}" method="post">
    				<input type="hidden" name="_method" value="delete">
    				<input type="submit" value="Delete">
    			</form>
    		</div><!-- end delete form -->
  		</div><!-- end card body -->
	</div><!-- end card -->
</div><!-- end container -->
</body>
</html>