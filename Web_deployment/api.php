<?php
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");
header("Access-Control-Allow-Methods: POST");
header("Access-Control-Max-Age: 3600");
header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");

$ch = curl_init();

$text = $_POST['input_text'];

$payload = json_encode(array(
    'text' => $text,
));

curl_setopt($ch, CURLOPT_URL, "https://frasa-j4jaf2mpiq-uc.a.run.app/predict");

curl_setopt($ch, CURLOPT_POST, true);
curl_setopt($ch, CURLOPT_POSTFIELDS, $payload);
curl_setopt($ch, CURLOPT_HTTPHEADER, array('Content-Type:application/json'));
curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);

$out = curl_exec($ch); # result information
$info = curl_getinfo($ch);
// print_r($info);
$result =  json_decode($out)->summary;
print_r($result);
curl_close($ch);

?>