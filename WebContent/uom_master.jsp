<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@taglib prefix="sx" uri="/struts-dojo-tags"%>
<!DOCTYPE html>
<html>
<head>
<title><s:property value="getText('UOM_MASTER_TITLE')"/></title>

<style type="text/css">
.welcome {
	    color: green;
   		font-weight: bold;
    	padding-left: 14%;
}

.errors {
	    color: red;
   		font-weight: bold;
    	padding-left: 14%;
}
.welcome li{
	list-style: none;
}
</style>

</head>
<body>
	<%@include file="modal.jsp"%>
	<div class="container">

		<div class="row">

			<div class="col-md-12 text-center">

				<form class="form-horizontal" action="adduom" name="adduom" method="post">
				
					<div class="form-group">
						<label for="create_prop" id="create_prop"
							class="col-sm-3 control-label">Enter UOM Description *</label>
						<div class="col-sm-9">
							<input type="text" class="form-control" id="uomDesc" name="uomDesc">
						</div>
					</div>
					<div class="form-group" id="tax">
						<label for="create_prop" id="create_prop"
							class="col-sm-3 control-label">Enter UOM Code*</label>
						<div class="col-sm-9">
							<input type="text" class="form-control" id="uomCode" name="uomCode">
						</div>
					</div>
					<div class="form-group">
						<label for="density" class="col-sm-3 control-label">Remarks</label>
						<div class="col-sm-9">
							<input type="text" class="form-control" id="remarks" name="remarks">
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-2 col-sm-offset-6">
							<input type="submit" name="submit" value="Create Property"
								class="btn btn-primary btn-block form-control" />
						</div>
					</div>
					<s:if test="hasActionMessages()">
					   <div class="welcome">
					      <s:actionmessage/><span class="glyphicon glyphicon-ok"></span>
					   </div>
					</s:if>
				<s:if test="hasActionErrors()">
   					<div class="errors">
     				<span class="glyphicon glyphicon-remove-sign"></span><s:actionerror/>
   					</div>
				</s:if>
				</form>

			</div>

			<!-- START OF DATATABLE LOGIC -->



			<!-- END OF DATATABLE LOGIC -->


		</div>

	</div>

</body>
</html>
