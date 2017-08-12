<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@taglib prefix="sj" uri="/struts-jquery-tags"%>

<!DOCTYPE html>
<html>
<head>

<title>Product Management</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Product Management</title>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

  <script src="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/js/bootstrap.min.js"></script>
 <script src="//code.jquery.com/jquery-1.9.1.js"></script>
 <script src="//ajax.aspnetcdn.com/ajax/jquery.validate/1.9/jquery.validate.min.js"></script>
 <script
	src="https://cdnjs.cloudflare.com/ajax/libs/corejs-typeahead/1.1.1/typeahead.bundle.min.js"></script>
<script type="text/javascript" src="//ajax.aspnetcdn.com/ajax/jquery.validate/1.9/jquery.validate.min.js"></script>
<sj:head />

<style type="text/css">
.ui-autocomplete-input {
	display: block;
	width: 100%;
	height: 34px;
	padding: 6px 12px;
	font-size: 14px;
	line-height: 1.42857143;
	color: #555;
	background-color: #fff;
	background-image: none;
	border: 1px solid #ccc;
	border-radius: 4px;
	-webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
	box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
	-webkit-transition: border-color ease-in-out .15s, -webkit-box-shadow
		ease-in-out .15s;
	-o-transition: border-color ease-in-out .15s, box-shadow ease-in-out
		.15s;
	transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
}

.ui-menu .ui-menu-item a {
text-decoration: none;
    display: block;
    padding: .2em .4em;
    line-height: 1.5;
    zoom: 1;
    font-size: 13.5px;
    font-family: "Helvetica Neue",Helvetica,Arial,sans-serif;
    }
</style>

<script>
$(document).ready(function(){
	$('form[name="createprops"]').hide();
        $("input[type='radio']").click(function(){
            var radioValue = $("input[name='chooseaction']:checked").val();
            
            if (radioValue == "CreateProductProp"){
            	$('form[name="createproduct"]').hide();
            	$('form[name="createprops"]').show();
            	
            	
            }
            else if (radioValue == "CreateProduct"){
            	$('form[name="createprops"]').hide();
            	$('form[name="createproduct"]').show();
            	
            }
        });
        
        $("#description").focus(function(){
        	var density = $('input[id="density"]').val().split("|")[1].trim();
        	var material = $('input[id="mat"]').val().split("|")[1].trim();
        	var thickness = $('input[id="thick"]').val().split("|")[1].trim();
        	var facing = $('input[id="face"]').val().split("|")[1].trim();
        	var size = $('input[id="size"]').val().split("|")[1].trim();
        	var make = $('input[id="make"]').val().split("|")[1].trim();
        	var total_desc = material+" "+density+" "+" "+thickness+" "+facing+" "+size+" "+make;
        	$("#description").val(total_desc);
        	return false;
        });
});
</script>

<script>
$(function() {
	  
    // Setup form validation on the #register-form element
    $("#createproduct").validate({
    
        // Specify the validation rules
        rules: {
            mat: "required",
            desc: "required",
        },
        
        // Specify the validation error messages
        messages: {
        	mat: "Please enter your first name",
        	desc: "Please enter your last name",
        },
        
        submitHandler: function(form) {
            form.submit();
        }
    });

  });
</script>

<script type="text/javascript">
$(document).ready(function(){
	$(".tax").hide();
$('select[name="prod_prop_select"]').change(function () {
	if($(this).val() != "-1"){
		$("label[for='create_prop']").html("Enter " + $(this).val()+" Description *");
	}
	else 
		$("label[for='create_prop']").html("Enter Product Prop Description *");
		
	
	});
	

	
});
 </script>
</head>
<body>
<form class="form-horizontal" name="actionselection" role="form">
			<div class="form-group">
				<label class="control-label col-sm-3">Select Choice</label>
				<div class="col-sm-8">
					<div class="row">
						<div class="col-sm-4">
							<label class="radio-inline"> <input type="radio"
								name="chooseaction" id="CreateProduct" value="CreateProduct"
								checked="checked">Create Product
							</label>
						</div>
						<div class="col-sm-4">
							<label class="radio-inline"> <input type="radio"
								name="chooseaction" id="CreateProductProp"
								value="CreateProductProp">Create Product Properties
							</label>
						</div>
					</div>
				</div>
			</div>
		</form>

		<form  class="form-horizontal" name="createproduct" id="createproduct" >
			
			<div class="form-group">
				<label for="density" class="col-sm-3 control-label">Select
					Material</label>
				<div class="col-sm-9">
					<sj:autocompleter size="30" list="matArray" name="mat" id="mat"
						placeholder="Material" class="form-control"></sj:autocompleter>
				</div>
			</div>
			<div class="form-group">
				<label for="density" class="col-sm-3 control-label">Select
					Density</label>
				<div class="col-sm-9">
					<sj:autocompleter size="30" list="descArray" name="desc"
						id="density" placeholder="Density" class="form-control"></sj:autocompleter>
				</div>
			</div>
			
			<div class="form-group">
				<label for="density" class="col-sm-3 control-label">Select
					Thickness</label>
				<div class="col-sm-9">
					<sj:autocompleter size="30" list="thickArray" name="thick"
						id="thick" placeholder="Thickness" class="form-control"></sj:autocompleter>
				</div>
			</div>
			<div class="form-group">
				<label for="density" class="col-sm-3 control-label">Select
					Facing</label>
				<div class="col-sm-9">
					<sj:autocompleter size="30" list="faceArray" name="face" id="face"
						placeholder="Facing" class="form-control"></sj:autocompleter>
				</div>
			</div>
			<div class="form-group">
				<label for="density" class="col-sm-3 control-label">Select
					Size</label>
				<div class="col-sm-9">
					<sj:autocompleter size="30" list="sizeArray" name="size" id="size"
						placeholder="Size" class="form-control"></sj:autocompleter>
				</div>
			</div>
			<div class="form-group">
				<label for="density" class="col-sm-3 control-label">Select
					Make Group</label>
				<div class="col-sm-9">
					<sj:autocompleter size="30" list="makeArray" name="make" id="make"
						placeholder="Make Group" class="form-control"></sj:autocompleter>
				</div>
			</div>
			
			<div class="form-group">
				<label for="description" class="col-sm-3 control-label">Description</label>
				<div class="col-sm-9">
					<input type="text" id="description"
						placeholder="Description will auto populate here"
						class="form-control">
				</div>
			</div>
			
				<div class="form-group">
					<div class="control-group">
						<div class="controls form-inline">
							<label for="uom" class="col-sm-3 control-label">UOM</label>
							<div class="col-sm-2">
								<sj:autocompleter size="30" list="uomArray" name="uom" id="uom"
						placeholder="UOM" class="form-control sidebyside"></sj:autocompleter>
								
							</div>
							<label for="convuom" class="col-sm-3 control-label">Conversin
								UOM</label>
							<div class="col-sm-2">
								
								<sj:autocompleter size="30" list="uomArray" name="convuom" id="convuom"
						placeholder="Conv. Factor" class="form-control sidebyside"></sj:autocompleter>
							</div>
						</div>
					</div>
				</div>

				<div class="form-group">
					<div class="control-group">
						<div class="controls form-inline">
							<label for="confactor" class="col-sm-3 control-label">Con.
								Factor</label>
							<div class="col-sm-2">
								<input type="number" id="confactor" class="form-control" min="0.000001" placeholder="0.000000000000001">
							</div>
							<label for="saleamount" class="col-sm-3 control-label">Sale
								Amount</label>
							<div class="col-sm-2">
								<input type="number" min="0.1" id="saleamount" class="form-control">
							</div>
						</div>
					</div>
				</div>

				<div class="form-group">
					<div class="control-group">
						<div class="controls form-inline">
							<label for="cost" class="col-sm-3 control-label">Cost</label>
							<div class="col-sm-2">
								<input type="text" id="cost" class="form-control">
							</div>
							<label for="minstock" class="col-sm-3 control-label">Min.
								Stock Quantity</label>
							<div class="col-sm-2">
								<input type="number" min="1" id="minstock" class="form-control">
							</div>
						</div>
					</div>
				</div>
    
			
				<div class="form-group">
					<div class="col-sm-2 col-sm-offset-6">
						<input type="submit" name="submit" value="submit"
							class="btn btn-primary btn-block form-control"/>
					</div>
				</div>
			

		</form>
		

		

</body>
</html>