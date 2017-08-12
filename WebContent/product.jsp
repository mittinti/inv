<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib prefix="s" uri="/struts-tags" %>
    <%@taglib prefix="sx" uri="/struts-dojo-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Product Page</title>
	<!-- Le HTML5 shim, for IE6-8 support of HTML elements -->
    <!--[if lt IE 9]>
    <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style type="text/css">
		body {
		    padding-top: 60px; /* 60px to make the container go all the way to the bottom of the topbar */
		}
		.label{
		color:#080808;
		}
</style>
</head>
<body>
<s:form name="product" action="product" method="post">
	<sx:autocompleter name="material" list="materialList" showDownArrow="false" label="Enter material"/>
	<sx:autocompleter name="density" list="densityList" showDownArrow="false" label="Enter density"/>
	<sx:autocompleter name="thickness"  list="thicknessList" showDownArrow="false" label="Enter thickness"/>
	<sx:autocompleter name="facing" list="facingList" showDownArrow="false" label="Enter facing"/>
	<sx:autocompleter name="size" list="sizeList" showDownArrow="false" label="Enter size"/>
	<sx:autocompleter name="makegroup" list="makegroupList" showDownArrow="false" label="Enter makegroup"/>
	<sx:autocompleter name="description" list="descriptionList" showDownArrow="false" label="Enter description"/>
	<sx:autocompleter name="country" list="countryList" showDownArrow="false" label="Cricket Nations"/>
	<s:textfield name="shortdescription" label="Enter shortdescription"/>
	<s:submit name="go" value="Go"/>
</s:form>
</body>
</html>