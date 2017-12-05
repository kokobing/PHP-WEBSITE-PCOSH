<?php
require "./inc/config.php";
require "./inc/function.class.php";
require "./inc/pagenav.class.php";

//内容
$strSQL = "select content from pageset where id_pageset='10'" ;
$objDB->Execute($strSQL);
$aboutcontent=$objDB->fields();

//banner
$strSQL = "select opicname as pic from pagesetpic where id_pageset='10'" ;
$objDB->Execute($strSQL);
$aboutbanner=$objDB->fields();


//
$strSQL = "select opicname as pic from productpic where id_prodinfo ='".$_GET[pid]."' order by id_prodpic asc limit 3" ;
$objDB->Execute($strSQL);
$arrpic=$objDB->getrows();

//
//单个产品
$strSQL = "select * from productinfo where dele='1' and  id_prodinfo='".$_GET[pid]."' " ;
$objDB->Execute($strSQL);
$oneprod=$objDB->fields();

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
<br />
<br />
<br />

<?=$aboutcontent[content];?>
<table width="100%" border="0">
  <tr>
    <td height="30">&nbsp;</td>
  </tr>
  <tr>
    <td height="30">&nbsp;</td>
  </tr>
  <tr>
    <td height="40" align="left">
<script type="text/javascript">
<!--
stm_bm(["menu5a8c",970,"","blank.gif",0,"","",0,0,250,0,1000,1,0,0,"","",0,0,1,2,"default","hand","",1,25],this);
stm_bp("p0",[0,4,0,0,0,0,0,0,100,"progid:DXImageTransform.Microsoft.Wipe(GradientSize=1.0,wipeStyle=1,motion=forward,enabled=0,Duration=0.60)",5,"",-2,50,0,0,"#999999","#E6EFF9","",3,0,0,"#000000"]);
stm_ai("p0i0",[0,"灭鼠相关","","",-1,-1,0,"/price.php?pdir1=1&pdir2=2","_self","","","","",0,0,0,"","",0,0,0,1,1,"<? if($_GET[pdir2]==2){echo '#FF7E02';}else{echo '#B5B5B5';}?>",0,"#FF7E02",0,"","",3,3,0,0,"#E6EFF9","#000000","#FFFFFF","#000000","bold 10pt 'Arial','Verdana'","bold 10pt 'Arial','Verdana'",0,0,"","","","",0,0,0],154,38);
stm_aix("p0i1","p0i0",[0,"","","",-1,-1,0,"","_self","","","","",0,0,0,"","",0,0,0,1,1,"#FFFFFF",0,"#FFFFFF"],1,38);
stm_aix("p0i2","p0i0",[0,"灭蟑螂","","",-1,-1,0,"/price.php?pdir1=1&pdir2=3","_self","","","","",0,0,0,"","",0,0,0,1,1,"<? if($_GET[pdir2]==3){echo '#FF7E02';}else{echo '#B5B5B5';}?>",0,"#FF7E02",0,"","",3,3,0,0,"#E6EFF9","#000000","#FFFFFF","#000000","bold 10pt 'Arial','Verdana'","bold 10pt 'Arial','Verdana'",0,0,"","","","",0,0,0],154,38);
stm_aix("p0i3","p0i1",[],1,38);
stm_aix("p0i4","p0i0",[0,"苍蝇蚊子","","",-1,-1,0,"/price.php?pdir1=1&pdir2=4","_self","","","","",0,0,0,"","",0,0,0,1,1,"<? if($_GET[pdir2]==4){echo '#FF7E02';}else{echo '#B5B5B5';}?>",0,"#FF7E02",0,"","",3,3,0,0,"#E6EFF9","#000000","#FFFFFF","#000000","bold 10pt 'Arial','Verdana'","bold 10pt 'Arial','Verdana'",0,0,"","","","",0,0,0],154,38);
stm_aix("p0i5","p0i1",[],1,38);
stm_aix("p0i6","p0i0",[0,"白蚁","","",-1,-1,0,"/price.php?pdir1=1&pdir2=5","_self","","","","",0,0,0,"","",0,0,0,1,1,"<? if($_GET[pdir2]==5){echo '#FF7E02';}else{echo '#B5B5B5';}?>",0,"#FF7E02",0,"","",3,3,0,0,"#E6EFF9","#000000","#FFFFFF","#000000","bold 10pt 'Arial','Verdana'","bold 10pt 'Arial','Verdana'",0,0,"","","","",0,0,0],154,38);
stm_aix("p0i7","p0i1",[0,"","","",-1,-1,0,"#"],1,38);
stm_aix("p0i8","p0i6",[0,"其他","","",-1,-1,0,"/price.php?pdir1=1&pdir2=6","_self","","","","",0,0,0,"","",0,0,0,1,1,"<? if($_GET[pdir2]==6){echo '#FF7E02';}else{echo '#B5B5B5';}?>",0,"#FF7E02",0,"","",3,3,0,0,"#E6EFF9","#000000","#FFFFFF","#000000","bold 10pt 'Arial','Verdana'","bold 10pt 'Arial','Verdana'",0,0,"","","","",0,0,0],154,38);
stm_ep();
stm_em();
//-->
</script></td>
  </tr>
  <tr>
    <td height="50" align="left"><a href="/price.php" class="txt_red">返回</a></td>
  </tr>
  <tr>
    <td align="left"><table width="80%" border="0" align="left">
    <? if($arrpic[0][pic]!='' || $arrpic[1][pic]!='' || $arrpic[2][pic]!=''){?>
      <tr>
        <td width="33%" align="left"><img src="upload/product/<?=$arrpic[0][pic];?>" width="150" height="198" /></td>
        <td width="33%" align="left"><img src="upload/product/<?=$arrpic[1][pic];?>" width="150" height="198" /></td>
        <td width="33%" align="left"><img src="upload/product/<?=$arrpic[2][pic];?>" width="150" height="198" /></td>
      </tr>
   
      <tr>
        <td align="left">￥<span class="txt_red"><?=$oneprod[tag];?></span></td>
        <td align="left">&nbsp;</td>
        <td align="left">&nbsp;</td>
      </tr>
        <? }?> 
      
    </table></td>
  </tr>
  <tr>
    <td height="100" align="left" valign="top"><table width="90%" border="0" align="left" cellpadding="5" cellspacing="5">
      <tr>
        <td class='txt'>
          <?=$oneprod[content];?>        </td>
      </tr>
    </table></td>
  </tr>
  
  <tr>
    <td align="center" class="txt_black">如果您无法确定身边害虫的种类，可以通过<a href="#"><img border="0" alt="" width="109" height="38" src="/inc/pics/libary.gif" /></a> <br />
      获取更多有害生物相关的信息</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
  </tr>
</table>

</div><!--end maincontent_left!-->

<div id="aboutcontent_right">
<? require "rightmenu.php"; ?>
</div><!--end maincontent_right!-->

</div><!--end maincontent!-->



<? require "footer.php"; ?>
</body>
</html>