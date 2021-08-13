<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html">
<html>
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="/main.css">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
	<title>Books</title>
	
</head>
<body>
	<div class = "container">
		<h1>All Books</h1>
		<table class="table">
    		<thead>
        		<tr scope="row">
            		<th scope="col">Title</th>
            		<th scope="col">Description</th>
            		<th scope="col">Language</th>
            		<th scope="col">Number of Pages</th>
        		</tr>
    		</thead>
    		<tbody>
        		<c:forEach items="${books}" var="book">
        		<tr scope="row">
            		<td scope="col"><c:out value="${book.title}"/></td>
            		<td scope="col"><c:out value="${book.description}"/></td>
           			<td scope="col"><c:out value="${book.language}"/></td>
            		<td scope="col"><c:out value="${book.numberOfPages}"/></td>
        		</tr>
        		</c:forEach>
    		</tbody>
		</table>
		<a href="/books/new">New Book</a>
 	</div><!-- close wrapper -->
</body>
</html>