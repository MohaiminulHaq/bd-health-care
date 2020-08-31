$(document).ready(function() {
    var id = window.location.search.split("?id=")[1];
    $('#loader').hide();
    $("#submit").on("click", function() {
        $("#submit").prop("disabled", true);
        var name = $("#name").val();
        var file = $("#image").val();
        var price = $("#price").val();
        var description = $("#description").val();

        var brandname = $("#brandname").val();
        var productname = $("#productname").val();
        var quantityavailable = $("#quantityavailable").val();

        var form = $("#form").serialize();
        var data = new FormData($("#form")[0]);
        data.append('name', name);
        data.append('price', price);
        data.append('description', description);
        data.append('brandname', brandname);
        data.append('productname', productname);
        data.append('quantityavailable', quantityavailable);

        //alert(data);
        $('#loader').show();
        if (name === "" || file === "" || price === "" || description === "") {
            $("#submit").prop("disabled", false);
            $('#loader').hide();
            $("#name").css("border-color", "red");
            $("#image").css("border-color", "red");
            $("#price").css("border-color", "red");
            $("#description").css("border-color", "red");

            $("#brandname").css("border-color", "red");
            $("#productname").css("border-color", "red");
            $("#quantityavailable").css("border-color", "red");

            $("#error_name").html("Please fill the required field.");
            $("#error_file").html("Please fill the required field.");
            $("#error_price").html("Please fill the required field.");
            $("#error_description").html("Please fill the required field.");
            $("#error_quantityavailable").html("Please fill the required field.");
            $("#error_brandname").html("Please fill the required field.");
            $("#error_productname").html("Please fill the required field.");
        } else {
            $("#name").css("border-color", "");
            $("#image").css("border-color", "");
            $("#price").css("border-color", "");
            $("#description").css("border-color", "");

            $("#brandname").css("border-color", "");
            $("#productname").css("border-color", "");
            $("#quantityavailable").css("border-color", "");

            $('#error_name').css('opacity', 0);
            $('#error_file').css('opacity', 0);
            $('#error_price').css('opacity', 0);
            $('#error_description').css('opacity', 0);

            $('#error_quantityavailable').css('opacity', 0);
            $('#error_brandname').css('opacity', 0);
            $('#error_productname').css('opacity', 0);

            $.ajax({
                type: 'POST',
                enctype: 'multipart/form-data',
                data: data,
                url: "/store_product1/saveProduct/" + id,
                processData: false,
                contentType: false,
                cache: false,
                success: function(data, statusText, xhr) {
                    console.log(xhr.status);
                    if(xhr.status == "200") {
                        $('#loader').hide();
                        $("#form")[0].reset();
                        $('#success').css('display','block');
                        $("#error").text("");
                        $("#success").html("Product Inserted Succsessfully.");
                        $('#success').delay(2000).fadeOut('slow');
                    }
                },
                error: function(e) {
                    $('#loader').hide();
                    $('#error').css('display','block');
                    $("#error").html("Oops! something went wrong.");
                    $('#error').delay(5000).fadeOut('slow');
                    location.reload();
                }
            });
        }
    });
});