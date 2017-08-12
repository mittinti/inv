<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Select2 Plugin</title>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.3/css/select2.min.css" rel="stylesheet" />
<script type="text/javascript" type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.3/js/select2.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<script>
 $(document).ready(function(){
	 function formatRepo (repo) {
		    
		    var markup = '<div class="clearfix">' +
		    '<div class="col-sm-6">' + repo.id + '</div>' + '</div>';
	    

		    markup += '</div></div>';

		    return markup;
		  }

		  function formatRepoSelection (repo) {
		    return repo.id || repo.text;
		  }
		 var $ajax = $("#id_label_single");

	 $ajax.select2({
		    ajax: {
		      url: "test.json",
		      dataType: 'json',
		      delay: 250,
		      data: function (params) {
		        return {
		            q: params.term?params.term:"a", // search term
		          page: params.page
		        };
		      },
		      processResults: function (data, params) {
		        params.page = params.page || 1;

		        return {
		          results: data.result,
		          
		        };
		      },
		      cache: true
		    },
		    escapeMarkup: function (markup) { return markup; },
		    minimumInputLength: 0,
		    templateResult: formatRepo,
		    templateSelection: formatRepoSelection
		  });
 
 });
  </script>
<body>
<label for="id_label_single">
  Click this to highlight the single select element

  <select class="js-example-basic-single js-states form-control" id="id_label_single">
  
  </select>
</label>
</body>
</html>