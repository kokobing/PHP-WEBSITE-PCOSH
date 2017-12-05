<?php
require "./inc/config.php";

//首页内容
$strSQL = "select content from pageset where id_pageset='6'" ;
$objDB->Execute($strSQL);
$homecontent=$objDB->fields();



?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="keywords" content="<?php echo $setinfo[keywords];?>" />
<meta name="description" content="<?php echo $setinfo[description];?>" />
<title><?php echo $setinfo[title];?></title>
<link href="inc/css/css1.css" rel="stylesheet" type="text/css">
<link href="inc/css/homeslidenotext.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="inc/js/stmenu.js"></script>
<script src="/inc/js/jquery.min.js"></script>
<script src="/inc/js/jquery.easing.1.3.js"></script>
<script src="/inc/js/slides.min.jquery.js"></script>

<!--[if IE 6]>
<script src="/inc/js/DD_belatedPNG_0.0.8a-min.js"></script>
<script>
  DD_belatedPNG.fix('#footer_midtel img');
</script>
<![endif]-->

<script>
		$(function(){
			$('#slides').slides({
				preload: true,
				preloadImage: '/inc/pics/loading.gif',
				play: 3000,
				pause: 1500,
				effect: 'fade, fade',
				hoverPause: true
			});
		});
</script>
</head>
<body>
<div id="header_box">
	<div id="container">
       <?php require "mainadv.php";?>
	</div><!--end container!-->
</div><!--end headerbox!-->

<? require "header.php"; ?>

<div id="maincontent">
<div id="maincontent_left">
<?=$homecontent[content];?>
<table width="100%" border="0">
  <tr>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
  </tr>
</table>

</div>
<!--end maincontent_left!-->

<div id="maincontent_right">
<? require "rightmenu.php"; ?>
</div>
<!--end maincontent_right!-->
<div style="clear:both;"></div> 
</div>
<!--end maincontent!-->



<? require "footer.php"; ?>

</body>
</html>
