$(document).ready(
    function() {
        $('form[name="createprops"]').hide();
        $("input[type='radio']").click(function() {
            var radioValue = $("input[name='chooseaction']:checked").val();
            if (radioValue == "CreateProductProp") 
            {
                $('form[name="createproduct"]').hide();
                $('form[name="createprops"]').show();
            } 
            else if (radioValue == "CreateProduct") {
                $('form[name="createprops"]').hide();
                $('form[name="createproduct"]').show();

            }
        });

        $('option[value="-1"]').attr("disabled", "disabled");
        
        $("#productDesc")
            .focus(
                function() {
                    var density = $('span[id*="productDensityId"]')
                        .text().split("|")[1].trim();
                    var material = $('span[id*="productMaterialId"]').text()
                        .split("|")[1].trim();
                    var thickness = $('span[id*="productThicknessId"]').text()
                        .split("|")[1].trim();
                    var facing = $('span[id*="productFaceId"]').text().split(
                        "|")[1].trim();
                    var size = $('span[id*="productSizeId"]').text().split(
                        "|")[1].trim();
                    var make = $('span[id*="productMakeId"]').text().split(
                        "|")[1].trim();
                    var total_desc = material + " " + density + " " +
                        thickness + " " + facing + " " + size +
                        " " + make;
                    $("#productDesc").val(total_desc);
                    return false;
                });
    });

$(document).ready(
    function() {
        $(".tax").hide();
        $('select[name="prod_prop_select"]').change(
            function() {
                if ($(this).val() != "-1") {
                    $("label[for='create_prop']")
                        .html(
                            "Enter " + $(this).val() +
                            " Description *");
                } else if ($(this).val() == 'Material') {

                } else
                    $("label[for='create_prop']").html(
                        "Enter Product Prop Description *");

            });

    });