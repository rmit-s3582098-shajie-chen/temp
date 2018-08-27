<%@ page trimDirectiveWhitespaces="true" %>
<%@ page pageEncoding="UTF-8" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="t" %>
<t:staticPage currentPage="Subscribe">
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
    /* Remove the navbar's default rounded borders and increase the bottom margin */ 
    .navbar {
      margin-bottom: 50px;
      border-radius: 0;
    }
    
    /* Remove the jumbotron's default bottom margin */ 
     .jumbotron {
      margin-bottom: 0;
    }
   
    /* Add a gray background color and some padding to the footer */
    footer {
      background-color: #f2f2f2;
      padding: 25px;
    }
  </style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="container">    
  <div class="row">
    <div class="col-sm-4">
      <div class="panel panel-primary">
        <div class="panel-heading">BLACK FRIDAY DEAL</div>
        <div class="panel-body"><img src="https://placehold.it/150x80?text=IMAGE" class="img-responsive" style="width:100%" alt="Image"></div>
        <div class="panel-footer">Buy 50 mobiles and get a gift card</div>
      </div>
    </div>
    <div class="col-sm-4"> 
      <div class="panel panel-danger">
        <div class="panel-heading">BLACK FRIDAY DEAL</div>
        <div class="panel-body"><img src="https://placehold.it/150x80?text=IMAGE" class="img-responsive" style="width:100%" alt="Image"></div>
        <div class="panel-footer">Buy 50 mobiles and get a gift card</div>
      </div>
    </div>
    <div class="col-sm-4"> 
      <div class="panel panel-success">
        <div class="panel-heading">BLACK FRIDAY DEAL</div>
        <div class="panel-body"><img src="https://placehold.it/150x80?text=IMAGE" class="img-responsive" style="width:100%" alt="Image"></div>
        <div class="panel-footer">Buy 50 mobiles and get a gift card</div>
      </div>
    </div>
  </div>
</div><br>

<div class="container">    
  <div class="row">
    <div class="col-sm-4">
      <div class="panel panel-primary">
        <div class="panel-heading">BLACK FRIDAY DEAL</div>
        <div class="panel-body"><img src="https://placehold.it/150x80?text=IMAGE" class="img-responsive" style="width:100%" alt="Image"></div>
        <div class="panel-footer">Buy 50 mobiles and get a gift card</div>
      </div>
    </div>
    <div class="col-sm-4"> 
      <div class="panel panel-primary">
        <div class="panel-heading">BLACK FRIDAY DEAL</div>
        <div class="panel-body"><img src="https://placehold.it/150x80?text=IMAGE" class="img-responsive" style="width:100%" alt="Image"></div>
        <div class="panel-footer">Buy 50 mobiles and get a gift card</div>
      </div>
    </div>
    <div class="col-sm-4"> 
      <div class="panel panel-primary">
        <div class="panel-heading">BLACK FRIDAY DEAL</div>
        <div class="panel-body"><img src="https://placehold.it/150x80?text=IMAGE" class="img-responsive" style="width:100%" alt="Image"></div>
        <div class="panel-footer">Buy 50 mobiles and get a gift card</div>
      </div>
    </div>
  </div>
</div><br><br>
<script src="https://www.paypalobjects.com/api/checkout.js"></script>

<div id="paypal-button-container"></div>

<div id="confirm" class="hidden">
    <div>Ship to:</div>
    <div><span id="recipient"></span>, <span id="line1"></span>, <span id="city"></span></div>
    <div><span id="state"></span>, <span id="zip"></span>, <span id="country"></span></div>

    <button id="confirmButton">Complete Payment</button>
</div>

<div id="thanks" class="hidden">
    Thanks, <span id="thanksname"></span>!
</div>
<script src="https://www.paypalobjects.com/api/checkout.js"></script>

<div id="paypal-button-container"></div>

<script>

    // Render the PayPal button

    paypal.Button.render({

        // Set your environment

        env: 'sandbox', // sandbox | production

        // Specify the style of the button

        style: {
            label: 'paypal',
            size:  'medium',    // small | medium | large | responsive
            shape: 'rect',     // pill | rect
            color: 'blue',     // gold | blue | silver | black
            tagline: false    
        },

        // PayPal Client IDs - replace with your own
        // Create a PayPal app: https://developer.paypal.com/developer/applications/create

        client: {
            sandbox:    'ATBVkgtETJujgMVBMeLnYPQEwI3eeZMTh7UCet886BIJoTnGx5zFuoZNsbDVkRp_H6EYh-JfXUB4r7Vh',
            production: '<insert production client id>'
        },

        payment: function (data, actions) {
        	  return actions.payment.create({
        	    transactions: [{
        	      amount: {
        	        total: '30.11',
        	        currency: 'USD',
        	        details: {
        	          subtotal: '30.00',
        	          tax: '0.07',
        	          shipping: '0.03',
        	          handling_fee: '1.00',
        	          shipping_discount: '-1.00',
        	          insurance: '0.01'
        	        }
        	      },
        	      description: 'The payment transaction description.',
        	      custom: '90048630024435',
        	      //invoice_number: '12345', Insert a unique invoice number
        	      payment_options: {
        	        allowed_payment_method: 'INSTANT_FUNDING_SOURCE'
        	      },
        	      soft_descriptor: 'ECHI5786786',
        	      item_list: {
        	        items: [
        	          {
        	            name: 'hat',
        	            description: 'Brown hat.',
        	            quantity: '5',
        	            price: '3',
        	            tax: '0.01',
        	            sku: '1',
        	            currency: 'USD'
        	          },
        	          {
        	            name: 'handbag',
        	            description: 'Black handbag.',
        	            quantity: '1',
        	            price: '15',
        	            tax: '0.02',
        	            sku: 'product34',
        	            currency: 'USD'
        	          }
        	        ],
        	    shipping_address: {
        	          recipient_name: "Anna Gruneberg",
        	          line1: "Kathwarinenhof 1",
        	          city: "Flensburg",
        	          postal_code: "24939",
        	          country_code: "DE"
        	        }
        	      
        	      },
        	          payee: {
        	        payee_display_metadata:{
        	            brand_name : 'teammate'
        	        }
        	      }
        	    }],
        	  });
        	},

        onAuthorize: function(data, actions) {
            return actions.payment.execute().then(function() {
                window.alert('Payment Complete!');
            });
        }

    }, '#paypal-button-container');

</script>
    <br>
    <br>
</body>
</html>
</t:staticPage>