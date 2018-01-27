<?php
echo '<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
<div id="callback" class="modal">
	 <form action="send.php" method="post" class="ajax-form">
		 <h3 class="title modal-title">Заказать консультацию</h3>
		 <div class="form-group">
			 <input type="text" name="callbackname" class="input input_modal" placeholder="Ваше имя*" required>
			 <input type="text" name="callbacktel" class="input input_modal" placeholder="Ваш телефон*" required>
		 </div>
		 <p class="modal-text_small">* - поля, обязательные для заполнения</p>
		 <input type="submit" name="callbackbtn" id = "callbackbtn" class="btn btn_act btn_submit" value="Отправить">
	 </form>
 </div>
</body>
</html>';
if(isset($_POST["callbackname"]) && isset($_POST["callbacktel"])){
    echo $_POST["callbackname"];
    $message = $_POST["callbackname"]." ".$_POST["callbacktel"];
    if(mail('selena.melnik@gmail.com', 'Test', $message)){
        echo "It`s ok";
    } else {
        echo "Error!";
    }
}

