<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>Create a crop</title>
    
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
  <h1>Create a crop</h1>
<form action="<c:url value='/Entity1ServletCreate'/>" method="post">
	crop id:<input type="text" name="crop_id" value="${form.crop_id }"/>
	<span style="color: red; font-weight: 900">${errors.crop_id }</span>
	<br/>
	crop name：<input type="text" name="crop_name" value="${form.crop_name }"/>
	<span style="color: red; font-weight: 900">${errors.crop_name }</span>
	<br/>
	crop category：<input type="text" name="crop_category" value="${form.crop_category }"/>
	<span style="color: red; font-weight: 900">${errors.crop_category }</span>
	<br/>
	crop description：<input type="text" name="crop_description" value="${form.crop_description }"/>
	<span style="color: red; font-weight: 900">${errors.crop_description }</span>
	<br/>
	<input type="submit" value="Create crop"/>
</form>
  </body>
</html>
