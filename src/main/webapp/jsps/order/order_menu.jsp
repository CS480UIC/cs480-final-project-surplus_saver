<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="">
    
    <title>body</title>
    
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
  
  <!-- Modified the header text to match entity name and also following hyperlinks - Thomas Sobczak -->
  <body>
    <h1>CRUD operations for order </h1>
    <br>
	<a href="<c:url value='/jsps/order/order_create.jsp'/>" target="_parent">Create order</a> |&nbsp; 
	<a href="<c:url value='/jsps/order/order_read.jsp'/>" target="_parent">Read order</a> |&nbsp;
	<a href="<c:url value='/jsps/order/order_update.jsp'/>" target="_parent">Update order</a> |&nbsp;	 
	<a href="<c:url value='/jsps/order/order_delete.jsp'/>" target="_parent">Delete order</a>	
	    
  </body>
</html>