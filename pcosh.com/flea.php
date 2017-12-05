<?php
require "./inc/config.php";

//内容
$strSQL = "select content from pageset where id_pageset='16'" ;
$objDB->Execute($strSQL);
$aboutcontent=$objDB->fields();

//banner
$strSQL = "select opicname as pic from pagesetpic where id_pageset='11'" ;
$objDB->Execute($strSQL);
$aboutbanner=$objDB->fields();

?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="keywords" content="<?php echo $setinfo[keywords];?>" />
<meta name="description" content="<?php echo $setinfo[description];?>" />
<title><?php echo $setinfo[title];?></title>
<link href="inc/css/css1.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="inc/js/stmenu.js"></script>
</head>
<body>

<div id="header_box">
<img src="/upload/layout/<?=$aboutbanner[pic];?>" />
</div><!--end headerbox!-->

<? require "header.php"; ?>

<div id="aboutcontent">
<div id="aboutcontent_left">
<?=$aboutcontent[content];?>
</div><!--end maincontent_left!-->

<div id="aboutcontent_right">
<? require "rightmenu.php"; ?>
</div><!--end maincontent_right!-->

</div><!--end maincontent!-->



<? require "footer.php"; ?>
</body>
</html>