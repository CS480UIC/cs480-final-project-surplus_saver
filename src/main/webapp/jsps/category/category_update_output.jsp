<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>Delete a crop</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta http-equiv="content-type" content="text/html;charset=utf-8">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  <h1>Update a category</h1>
<p style="color: red; font-weight: 900">${msg }</p>
<form>
	Category_id    :<input type="text" name="category_id" value="${category.category_id }" disabled/>
	<br/>
	
	Category_name：<input type="text" name="category_name" value="${category.category_name }" disabled />
	<br/>
	Cateogry_description	：<input type="text" name="category_description" value="${category.category_description }" disabled/>
	<br/>
</form>
<h1>Update the values below</h1>
<form action="<c:url value='/CategoryServletUpdate'/>" method="post">
		<input type="hidden" name="method" value="update"/>
				<input type="hidden" name="category_id" value="${form.category_id }"/>
	Category_name：<input type="text" name="category_name" value="${form.category_name }"/>
	<span style="color: red; font-weight: 900">${errors.password }</span>
	<br/>
	Category_description	：<input type="text" name="category_description" value="${form.category_description }"/>
	<span style="color: red; font-weight: 900">${errors.email }</span>
	<br/>
	<input type="submit" value="Update category"/>
</form>

</body>
</html>
