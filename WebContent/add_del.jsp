<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@taglib prefix="sx" uri="/struts-dojo-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Modify Product Properties</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/corejs-typeahead/1.1.1/typeahead.bundle.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="https://cdn.datatables.net/v/dt/dt-1.10.13/datatables.min.css" />
	
<!-- <script type="text/javascript"
	src="https://cdn.datatables.net/v/dt/dt-1.10.13/datatables.min.js"></script> -->
	
<script type="text/javascript"
	src="https://cdn.datatables.net/1.10.15/js/jquery.dataTables.min.js"></script>
<script type="text/javascript"
	src="https://editor.datatables.net/extensions/Editor/js/dataTables.editor.min.js"></script>	
	
	<style>
	
	</style>
	
<script>
var editor; // use a global for the submit and return data rendering in the examples

$(document).ready(function() {
    editor = new $.fn.dataTable.Editor( {
        "ajax": "density.txt",
        "table": "#example",
        "fields": [ {
                "label": "Density ID",
                "name": "densityId"
            }, {
                "label": "Density Description:",
                "name": "densityDescription"
            }       ]
    } );
 
    // New record
    $('a.editor_create').on('click', function (e) {
        e.preventDefault();
 
        editor.create( {
            title: 'Create new record',
            buttons: 'Add'
        } );
    } );
 
    // Edit record
    $('#example').on('click', 'a.editor_edit', function (e) {
        e.preventDefault();
 
        editor.edit( $(this).closest('tr'), {
            title: 'Edit record',
            buttons: 'Update'
        } );
    } );
 
    // Delete a record
    $('#example').on('click', 'a.editor_remove', function (e) {
        e.preventDefault();
 
        editor.remove( $(this).closest('tr'), {
            title: 'Delete record',
            message: 'Are you sure you wish to remove this record?',
            buttons: 'Delete'
        } );
    } );
 
    $('#example').DataTable( {
        ajax: "density.txt",
        columns: [
            { data: "densityId" },
            { data: "densityDescription" },
            {
                data: null,
                className: "center",
                defaultContent: '<a href="" class="editor_edit">Edit</a> / <a href="" class="editor_remove">Delete</a>'
            }
        ]
    } );
} );	
</script>

</head>

<body id="dt_example">
	<div id="container">
		<h1>BMM CRUD</h1>
		<div id="demo_jui">
			<table class="display" id="example" cellspacing="0" width="100%">
				<thead>
					<tr>
						<th>ID</th>
						<th>Description</th>
						<th>Command</th>
					</tr>
				</thead>
				<tbody>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>