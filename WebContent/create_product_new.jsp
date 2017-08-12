<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@taglib prefix="sj" uri="/struts-jquery-tags"%>
<!DOCTYPE html>
<html>
<head>

<title>Product Management</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Product Management</title>

<!-- ############################  LIBARARIES  ################################### -->

<script type="text/javascript" src="js/jquery-1.8.3.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/datatables.min.css">

<!-- ############################  CUSTOM  ################################### -->

<script type="text/javascript" src="js/custom/create_product.js"></script>
<link rel="stylesheet" href="css/main.css">
<link rel="stylesheet" href="css/custom/create_product.css">

<!-- ############################  END  ################################### -->

<sj:head />
<style type="text/css">
	.select2drops select
	{
		width:100% !important;
	}
</style>


<script type="text/javascript" src="js/jquery-1.8.3.js"></script>
<script type="text/javascript" type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.3/js/select2.min.js"></script>
<script>
	//$(document).ready(function() {
		//$("#productMaterialId").select2();
	//});
</script>
</head>
<body>

	<div class="container">
	
<div class="form-group">
				<div class="control-group">
					<div class="controls form-inline">
						<label for="uom" class="col-sm-2 control-label">Primary UOM</label>
						<div class="col-sm-2">
							<div class="col-sm-9 select2drops">
					<s:select
						headerKey="-1" headerValue="Select Make Group"
						list="uomArray" 
						name="productFUOM" id="uom"
						value="defaultSearchEngine" style="width:100%"/>
				</div>
						</div>
					</div>
				</div>
				<div class="control-group">
					<div class="controls form-inline">
						<div class="controls form-inline">
							<label for="confactor" class="col-sm-2 control-label">Conversion
								Factor</label>
							<div class="col-sm-2">
								<input type="number" id="confactor" name="productConvfactor" class="form-control"
									min="0.000001" placeholder="0.000000000000001">
							</div>
						</div>
					</div>
				</div>
				<div class="control-group">
					<div class="controls form-inline">
						<div class="controls form-inline">
							<label for="convuom" class="col-sm-2 control-label">Alternative
								UOM</label>
							<div class="col-sm-2">
								<sj:autocompleter size="30" list="uomArray" name="productSUOM"
									id="convuom" placeholder="Conv. Factor"
									class="form-control sidebyside"></sj:autocompleter>
							</div>
						</div>
					</div>
				</div>
			</div>
			
			<div class="form-group">
				<div class="control-group">
					<div class="controls form-inline">
						<label for="saleamount" class="col-sm-2 control-label">Sale
							Amount</label>
						<div class="col-sm-2">
							<input type="number" min="0.1" id="saleamount" name="productSaleAmount"
								class="form-control">
						</div>
					</div>
				</div>
				<div class="control-group">
					<div class="controls form-inline">
						<label for="saleamount" class="col-sm-2 control-label">Select Tax</label>
						<div class="col-sm-2">
							<input type="text" id="tax" name="productTaxId"
								class="form-control">
						</div>
					</div>
				</div>
				<div class="control-group">
					<div class="controls form-inline">

						<label for="minstock" class="col-sm-2 control-label">Re-Order Level</label>
						<div class="col-sm-2">
							<input type="number" min="1" id="minstock" class="form-control">
						</div>
					</div>
				</div>
			</div>
		</form>
	</div>
			<div class="form-group">
				<div class="col-sm-2 col-sm-offset-6">
					<button type="submit" class="btn btn-primary">Create
						Property</button>
				</div>
			</div>


		<div class="form-group">
			<div class="col-sm-2 col-sm-offset-6">
				<button type="submit" class="btn btn-primary">Create
					Property</button>
			</div>
		</div>
	
</body>
</html>