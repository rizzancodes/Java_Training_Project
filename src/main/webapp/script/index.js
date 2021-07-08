$(document).ready(function(){

    $('.input').focus(function(){
      $(this).parent().find(".label-txt").addClass('label-active');
    });
  
    $(".input").focusout(function(){
      if ($(this).val() == '') {
        $(this).parent().find(".label-txt").removeClass('label-active');
      };
    });


console.log("TEST");
    validateFields();
  
  });



function validateFields(){

    console.log('TESTR')

    $('#myForm').validate({ // initialize the plugin
        rules: {
            firstName: {
                required: true,
                minlength: 2
            
            },
            lastName: {
                required: true,
                minlength: 5
            },
            username:{
                required: true,
                minlength: 6,

            },
            password:{
                required: true,
               
                minlength: 8

            },
            address:{



                
                required: true,
                minlength: 10

            },
            contact:{
                required: true,
                number: true,
                minlength: 11


            }
        },

          // Specify validation error messages
        


        messages: {
            firstName: {
               
               
            
            },
            lastName: {
           
            },
            username:{
                
                minlength: "Username must have 6 characters atleast"

            },
            password:{
             
                minlength: "Password must have 8 characters atleast"

            },
            address:{
                


            },
            contact:{
                number:"Contact number should be numeric",
                minlength: "Please enter a valid contact number"

            }
        }
    });


}