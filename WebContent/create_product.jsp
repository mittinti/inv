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
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.3/css/select2.min.css"
	rel="stylesheet" />


<!-- ############################  CUSTOM  ################################### -->


<link rel="stylesheet" href="css/main.css">
<link rel="stylesheet" href="css/custom/create_product.css">


<!-- ############################  END  ################################### -->

<sj:head />
<script type="text/javascript" src="js/jquery-1.8.3.js"></script>
<script type="text/javascript" src="js/custom/create_product.js"></script>
<script type="text/javascript" type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.3/js/select2.min.js"></script>
<script>
	$(document).ready(function() {
		$("#productMaterialId").select2();
		$("#productDensityId").select2();
		$("#productThicknessId").select2();
		$("#productFaceId").select2();
		$("#productSizeId").select2();
		$("#productMakeId").select2();
		$("#productFUOM").select2();
		$('#productSUOM').select2();
		
	});
</script>
<style type="text/css">
.select2drops select {
	width: 100% !important;
}
</style>
</head>
<body>
	<%@include file="include/inc_modal.jsp"%>
	<div class="container">

		<form class="form-horizontal" method="post" action="storeproduct"
			name="createproduct" id="createproduct">

			<div class="form-group">
				<label for="material" class="col-sm-2 control-label">Select
					Material</label>
				<div class="col-sm-9 select2drops">
					<s:select headerKey="-1" headerValue="Select Material Group"
						list="matArray" name="productMaterialId" id="productMaterialId"
						value="defaultSearchEngine" />
				</div>
			</div>


			<div class="form-group">
				<label for="density" class="col-sm-2 control-label">Select
					Density</label>
				<div class="col-sm-9 select2drops">
					<s:select headerKey="-1" headerValue="Select Density Group"
						list="descArray" name="productDensityId" id="productDensityId"
						value="defaultSearchEngine" />
				</div>
			</div>
			<div class="form-group">
				<label for="density" class="col-sm-2 control-label">Select
					Thickness</label>
				<div class="col-sm-9 select2drops">
					<s:select headerKey="-1" headerValue="Select Thickness Group"
						list="thickArray" name="productThicknessId"
						id="productThicknessId" value="defaultSearchEngine" />
				</div>
			</div>
			<div class="form-group">
				<label for="facing" class="col-sm-2 control-label">Select
					Facing</label>
				<div class="col-sm-9 select2drops">
					<s:select headerKey="-1" headerValue="Select Facing Group"
						list="faceArray" name="productFaceId" id="productFaceId"
						value="defaultSearchEngine" />
				</div>
			</div>
			<div class="form-group">
				<label for="size" class="col-sm-2 control-label">Select Size</label>
				<div class="col-sm-9 select2drops">
					<s:select list="sizeArray" headerKey="-1" headerValue="Select Size Group"
						 name="productSizeId" id="productSizeId"
						value="defaultSearchEngine" />
				</div>
			</div>
			<div class="form-group">
				<label for="size" class="col-sm-2 control-label">Select Make
					Group</label>
				<div class="col-sm-9 select2drops">
					<s:select headerKey="-1" headerValue="Select Make Group"
						list="makeArray" name="productMakeId" id="productMakeId"
						value="defaultSearchEngine" />
				</div>
			</div>


			<div class="form-group">
				<label for="description" class="col-sm-2 control-label">Standards</label>
				<div class="col-sm-9">
					<input type="text" id="standard" name="productStandards"
						placeholder="Example, IS-12345" class="form-control">
				</div>
			</div>
			<div class="form-group">
				<label for="description" class="col-sm-2 control-label">Description</label>
				<div class="col-sm-9">
					<input type="text" id="productDesc"
						placeholder="Product Description" name="productDesc"
						class="form-control" readonly="readonly">
				</div>
			</div>

			<div class="form-group">
				<div class="control-group">
					<div class="controls form-inline">
						<label for="uom" class="col-sm-2 control-label">Primary
							UOM</label>
						<div class="col-sm-2">
							<s:select headerKey="-1" headerValue="Primary UOM" class="placeholder"
								list="uomArray" name="productFUOM" id="productFUOM"
								value="defaultSearchEngine" style="width:100%" />
						</div>
					</div>
				</div>
				<div class="control-group">
					<div class="controls form-inline">
						<div class="controls form-inline">
							<label for="confactor" class="col-sm-2 control-label">Conversion
								Factor</label>
							<div class="col-sm-2">
								<input type="number" id="confactor" name="productConvfactor"
									class="form-control" min="0.000001"
									placeholder="0.000000000000001">
							</div>
						</div>
					</div>
				</div>
				<div class="control-group">
					<div class="controls form-inline">
						<label for="uom" class="col-sm-2 control-label">Secondary
							UOM</label>
						<div class="col-sm-2">
							<s:select headerKey="-1" headerValue="Secondary UOM"
								list="uomArray" name="productSUOM" id="productSUOM"
								value="defaultSearchEngine" style="width:100%" />

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
							<input type="number" min="0.1" id="saleamount"
								name="productSaleAmount" class="form-control">
						</div>
					</div>
				</div>
				<div class="control-group">
					<div class="controls form-inline">
						<label for="saleamount" class="col-sm-2 control-label">Select
							Tax</label>
						<div class="col-sm-2">
							<input type="text" id="tax" name="productTaxId"
								class="form-control">
						</div>
					</div>
				</div>
				<div class="control-group">
					<div class="controls form-inline">

						<label for="minstock" class="col-sm-2 control-label">Re-Order
							Level</label>
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
				Product</button>
		</div>
	</div>

	</form>


	</div>

</body>
</html>