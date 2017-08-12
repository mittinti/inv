<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@taglib prefix="sx" uri="/struts-dojo-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Modify Product Properties</title>
<!-- ############################  LIBARARIES  ################################### -->

<script type="text/javascript" src="js/jquery-1.8.3.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/jquery.dataTables.js"></script>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/datatables.min.css">

<!-- ############################  CUSTOM  ################################### -->

<script type="text/javascript" src="js/custom/modify_prop.js"></script>

<!-- ############################  END  ################################### -->
</head>
<body id="dt_example">
	<div id="container">
		<h3 style="text-align:center">Modify the Product Properties</h3>
		<div id="demo_jui">
			<table class="display" id="example" cellspacing="0" width="100%">
				<thead>
					<tr>
						<th>ID</th>
						<th>Description</th>
						<th>Edit</th>
					</tr>
				</thead>
				<tbody>
				</tbody>
			</table>
		</div>
<!-- START : THE BELOW MODAL IS TO DISPLAY THE EDIT FORM -->
		<div class="modal fade" id="myModal" role="dialog">
			<div class="modal-dialog">
				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4 class="modal-title">Modal Header</h4>
					</div>
					<div class="modal-body">
						<form name="edit" id="submit_edit">
							<div class="form-group">
								<label class="control-label col-sm-8" for="id">Property ID</label> <input
									type="text" name="id" id="id" class="form-control" readonly />
							</div>
							<div class="form-group">
								<label class="control-label col-sm-8" for="desc">Enter/Edit
									Description</label> <input type="text" name="desc" id="desc"
									class="form-control" />
							</div>
							<div class="modal-footer">
								<button type="button" id="editDesc"
									class="editDesc btn btn-default">Save Changes</button>
								<button type="button" class="btn btn-default"
									data-dismiss="modal">Close</button>
							</div>
						</form>
					</div>

				</div>
			</div>
		</div>
<!--END : THE BELOW MODAL IS TO DISPLAY THE EDIT FORM -->
		<div>
			<button type="button" id="refresh" class="btn btn-default btn-sm" >
		          <span class="glyphicon glyphicon-refresh"></span> Refresh
			</button>
		</div>
	</div>
</body>
</html>