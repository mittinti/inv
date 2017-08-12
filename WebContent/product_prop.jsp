<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@taglib prefix="sx" uri="/struts-dojo-tags"%>
<!DOCTYPE html>
<html>
<head>

<script type="text/javascript">
	$(function() {
		$("#tax").hide();
		$('#prod_prop_select')
				.change(
						function() {
							if ($(this).val() == "Material") {
								$("#tax").show();
							} else
								$("#tax").hide();

							var propselection = $(this).val();

							$.ajax({
										type : "GET",
										url : '<s:url namespace="/" action="getProductPropertyData"></s:url>'
												+ '?type=' + propselection,
										//url: '<s:url namespace="/" action="getJSON"/>',
										dataType : "json",
										success : function(data) {
											var jsonData = JSON.stringify(data);
											console.log(jsonData);
											mydata = jsonData;
											console.log("oops");
											error: alert("errr");
										}
									});

						});

	});
</script>

</head>
<body>
<%@include file="modal.jsp" %>
	<div class="container">
	
		<div class="row">
		
			<div class="col-md-12 text-center">

				<form class="form-horizontal" name="createprops" method="post">
					<div class="form-group">
						<label for="density" class="col-sm-3 control-label">Choose
							Property to create</label>
						<div class="col-sm-9">
							<select class="form-control" id="prod_prop_select">
								<option value="" selected disabled>Choose Property</option>
								<option>Material</option>
								<option>Density</option>
								<option>Thickness</option>
								<option>Make</option>
								<option>Facing</option>
								<option>Size</option>
							</select>
						</div>
					</div>
					<div class="form-group">
						<label for="create_prop" id="create_prop"
							class="col-sm-3 control-label">Description *</label>
						<div class="col-sm-9">
							<input type="number" class="form-control" id="prop_id">
						</div>
					</div>
					<div class="form-group" id="tax">
						<label for="create_prop" id="create_prop"
							class="col-sm-3 control-label">ISN Code *</label>
						<div class="col-sm-9">
							<input type="text" class="form-control" id="isn">
						</div>
					</div>
					<div class="form-group">
						<label for="density" class="col-sm-3 control-label">Remarks</label>
						<div class="col-sm-9">
							<input type="number" class="form-control" id="product_grp_id">
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-2 col-sm-offset-6">
							<input type="submit" name="submit" value="Create Property"
								class="btn btn-primary btn-block form-control" />
						</div>
					</div>

				</form>

			</div>

			<!-- START OF DATATABLE LOGIC -->



			<!-- END OF DATATABLE LOGIC -->


		</div>

	</div>



</body>
</html>






