$(document).ready(function() {
	var desc="";
	var ID="";
    $('#example').DataTable({
       "ajax" : {
  			"url": "getProductPropData",
  			"dataType": 'json',
  			"contentType": "application/json; charset=utf-8",
  			dataSrc: ''
  			// dataSrc empty indicates that there is no root element in the reponse JSON
		},
        "columns": [{
            "data": "densityId"
        }, {
            "data": "densityDescription"
        }, {
            data: null,
            className: "center",
            defaultContent: '<a href="#" id="edit" class="edit" data-toggle="modal" data-target="#myModal">Edit</a> / <a href="#" id="delete">Delete</a>'
                //defaultContent: '<button type="button" class="btn-default" data-toggle="modal" data-target="#myModal">Open Modal</button>'
        }]
    });
  		$("#example").on('click', '.edit', function () {
                // get the current row
                var currentRow = $(this).closest("tr");
                console.log(currentRow);
               // var col1 = currentRow.find("td:eq(0)").text(); // get current row 1st TD value
                desc = currentRow.find("td:eq(1)").text();
                id = currentRow.find("td:eq(0)").text();
                console.log(id);
                $('input#id').val(id);
                $('input#desc').val(desc);
                
            });
  		
  		var url = '<s:url namespace="/" action="editdesc"><s:param name="type">density</s:param><s:param name="desc">'+desc+'</s:param><s:param name="id">'+id+'</s:param></s:url>';
  		console.log(url);
  	// start of update ajax
        	$(document).on("click", "#editDesc", function(event){
        		$.ajax({
                    type: "POST",
                    url: url,
                    data: $('#submit_edit').serialize(),
                    cache: false,
                    success: function (html) {
    					alert("success");
                    }
                });
        		location.reload();
        });
        //end of update ajax  
        $('#id').keydown(function(){
        	return false;
        });
        	
        
        });