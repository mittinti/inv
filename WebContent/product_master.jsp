<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib prefix="s" uri="/struts-tags" %>
    <%@taglib prefix="sx" uri="/struts-dojo-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Product Master Page</title>
	<!-- Le HTML5 shim, for IE6-8 support of HTML elements -->
    <!--[if lt IE 9]>
    <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
  <!--  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script type="text/javascript" src="http://code.jquery.com/jquery-3.0.0.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="css/main.css">
  <!--<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-3-typeahead/4.0.1/bootstrap3-typeahead.min.js"></script>-->
  <!-- 
  <script src="https://raw.githubusercontent.com/bassjobsen/Bootstrap-3-Typeahead/master/bootstrap3-typeahead.min.js" /></script>
  <script src="https://code.jquery.com/ui/1.12.0/jquery-ui.js"></script>
  <link href="http://code.jquery.com/ui/1.10.2/themes/smoothness/jquery-ui.css" rel="Stylesheet"></link>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-autocomplete/1.0.7/jquery.auto-complete.js"></script>
-->

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/corejs-typeahead/1.1.1/typeahead.bundle.min.js"></script>

	<script>
	$(document).ready(function(){
	$.ajax({
	    type: "GET",
	    url: '<s:url namespace="/" action="getJSON"/>',
	    dataType: "json",
	    contentType: 'application/json',
	    success: function(data){
	    	console.log(JSON.stringify(data));
	    	/*alert("success");
	    	var jsonData = JSON.stringify(data);
	        console.log(jsonData);
	        var mydata = jsonData;
	        var jsonObj = $.parseJSON(mydata);
	    	var parsedJson = $.parseJSON(jsonObj.densityjson);
	     	console.log(parsedJson);   */
	    },
		error: console.log("oops")
	});
	});
	/*
	$(document).ready(function(){
	$('#typeahead').typeahead({
		  hint: true,
		  highlight: true,
		  minLength: 1
		},
		{
		  limit: 12,
		  async: true,
		  source: function (query, processSync, processAsync) {
		    processSync(['This suggestion appears immediately', 'This one too']);
		    return $.ajax({
		      url: '<s:url namespace="/" action="getJSON"/>', 
		      type: 'GET',
		      data: {query: query},
		      dataType: 'json',
		      success: function (json) {
		        // in this example, json is simply an array of strings
		        var jsonData = JSON.stringify(json);
		        var jsonObj = $.parseJSON(jsonData);
		    	var parsedJson = $.parseJSON(jsonObj.densityjson);
		    	console.log(parsedJson);
		        return processAsync(parsedJson);
		      }
		    });
		  }
		});
	});
	
	
	
	
/*	$(document).ready(function() {
        $(function() {
                $("#search").autocomplete({
                source : function(request, response) {
                        $.ajax({
                                url : "getJSON",
                                type : "GET",
                                dataType : "json",
                                success : function(jsonResponse) {
                                	console.log("----------");
                                	console.log(jsonResponse);
                                    response(jsonResponse.list);
                                }
                        });
                        }
                });
        });
});*/
	<%-- var mydata;
	$.ajax({
	    type: "GET",
	    async: false,
	    url: '<s:url namespace="/" action="getJSON"/>',
	    dataType: "json",
	    success: function(data){
	    	var jsonData = JSON.stringify(data);
	        //console.log(jsonData);
	        mydata = jsonData;
	        var jsonObj = $.parseJSON(mydata);
	    	var parsedJson = $.parseJSON(jsonObj.densityjson);
	     	console.log(parsedJson);   
	    }
	});
	
	//console.log(parsedJson);
	
	$('#typeahead').typeahead({
	    source:  function (query, process) {
	    var density = [];
		map = {};
		console.log("-----------------------");
		console.log(jsonData);
		$.each(parsedJson, function (i, den) {
	        map[den.densityDescription] = den;
	        density.push(den.densityDescription);
	    });
	    process(density);
	    }
	});--%>
	
</script>
</head>
<body>
<%@include file="modal.jsp" %>
<s:form name="addProduct" action="addProduct" method="post">
<div class="row">
	<div class="col-md-12 text-center">
		<br/>
		<h3>Enter Density</h3>	
			<input id="typeahead" type="text"/>
	</div>
</div>

</s:form>
</body>
</html>