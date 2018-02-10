<?php
http_response_code(404);
header("HTTP/1.1 404 Page Not Found");
header($_SERVER["SERVER_PROTOCOL"]." 404 Not Found", true, 404);
//defined('_VALID_ACCESS') or die('Restricted Access');
$title[$section][$module] = "خطا (404)";
$tplModule = '404.tpl';
?>