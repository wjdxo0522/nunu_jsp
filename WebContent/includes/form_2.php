<?php	
	if(empty($_POST['input_504']) && strlen($_POST['input_504']) == 0)
	{
		return false;
	}
	
	$input_21 = $_POST['input_21'];
	$input_134 = $_POST['input_134'];
	$input_112 = $_POST['input_112'];
	$input_159 = $_POST['input_159'];
	$input_504 = $_POST['input_504'];
	$select_1110 = $_POST['select_1110'];
	$select_1106 = $_POST['select_1106'];
	$input_931 = $_POST['input_931'];
	
	$to = 'receiver@yoursite.com'; // Email submissions are sent to this email

	// Create email	
	$email_subject = "Message from a Blocs website.";
	$email_body = "You have received a new message. \n\n".
				  "Input_21: $input_21 \nInput_134: $input_134 \nInput_112: $input_112 \nInput_159: $input_159 \nInput_504: $input_504 \nSelect_1110: $select_1110 \nSelect_1106: $select_1106 \nInput_931: $input_931 \n";
	$headers = "MIME-Version: 1.0\r\nContent-type: text/plain; charset=UTF-8\r\n";	
	$headers .= "From: contact@yoursite.com\n";
	$headers .= "Reply-To: DoNotReply@yoursite.com";	
	
	mail($to,$email_subject,$email_body,$headers); // Post message
	return true;			
?>