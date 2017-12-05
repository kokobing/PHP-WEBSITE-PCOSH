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




//公司产品
if(isset($_REQUEST["page"]) ){$intCurPage=$_REQUEST["page"];}else{$intCurPage=1;}

if(!isset($_GET[pdir1]) || $_GET[pdir1]==''){

$intRows = 12;
$strSQLNum = "SELECT COUNT(*) as num from productinfo   where  dele='1' ";   
$rs = $objDB->Execute($strSQLNum);
$arrNum = $objDB->fields();
$intTotalNum=$arrNum["num"];

$objPage = new PageNav($intCurPage,$intTotalNum,$intRows);

$objPage->setvar($arrParam);
$objPage->init_page($intRows ,$intTotalNum);
$strNavigate = $objPage->output(1);
$intStartNum=$objPage->StartNum(); 

$strSQL = "select * from productinfo   where  dele='1'  order by id_prodinfo desc" ;
$objDB->SelectLimit($strSQL,$intRows,$intStartNum);
$arrprods=$objDB->GetRows();

}elseif(isset($_GET[pdir1]) && isset($_GET[pdir2])){
$arrParam[0][name]="pdir1";
$arrParam[0][value]=$_REQUEST[pdir1];
$arrParam[1][name]="pdir2";
$arrParam[1][value]=$_REQUEST[pdir2];
$intRows = 12;
$strSQLNum = "SELECT COUNT(*) as num from productinfo  where id_proddir='".$_GET[pdir2]."' and dele=1 ";   
$rs = $objDB->Execute($strSQLNum);
$arrNum = $objDB->fields();
$intTotalNum=$arrNum["num"];

$objPage = new PageNav($intCurPage,$intTotalNum,$intRows);

$objPage->setvar($arrParam);
$objPage->init_page($intRows ,$intTotalNum);
$strNavigate = $objPage->output(1);
$intStartNum=$objPage->StartNum(); 

$strSQL = "select * from productinfo  where id_proddir='".$_GET[pdir2]."' and dele=1  order by id_prodinfo desc" ;
$objDB->SelectLimit($strSQL,$intRows,$intStartNum);
$arrprods=$objDB->GetRows();

}

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
    <td height="40">
<script type="text/javascript">
<!--
stm_bm(["menu5a8c",970,"","blank.gif",0,"","",0,0,250,0,1000,1,0,0,"","",0,0,1,2,"default","hand","",1,25],this);
stm_bp("p0",[0,4,0,0,0,0,0,0,100,"progid:DXImageTransform.Microsoft.Wipe(GradientSize=1.0,wipeStyle=1,motion=forward,enabled=0,Duration=0.60)",5,"",-2,50,0,0,"#999999","#E6EFF9","",3,0,0,"#000000"]);
stm_aix("p0i0","p0i6",[0,"害虫控制服务","","",-1,-1,0,"/price.php?pdir1=1&pdir2=6","_self","","","","",0,0,0,"","",0,0,0,1,1,"<? if($_GET[pdir2]==6){echo '#FF7E02';}else{echo '#B5B5B5';}?>",0,"#FF7E02",0,"","",3,3,0,0,"#E6EFF9","#000000","#FFFFFF","#000000","bold 10pt 'Arial','Verdana'","bold 10pt 'Arial','Verdana'",0,0,"","","","",0,0,0],154,38);
stm_aix("p0i1","p0i1",[0,"","","",-1,-1,0,"#"],1,38);
stm_ai("p0i2",[0,"灭鼠相关","","",-1,-1,0,"/price.php?pdir1=1&pdir2=2","_self","","","","",0,0,0,"","",0,0,0,1,1,"<? if($_GET[pdir2]==2){echo '#FF7E02';}else{echo '#B5B5B5';}?>",0,"#FF7E02",0,"","",3,3,0,0,"#E6EFF9","#000000","#FFFFFF","#000000","bold 10pt 'Arial','Verdana'","bold 10pt 'Arial','Verdana'",0,0,"","","","",0,0,0],154,38);
stm_aix("p0i3","p0i0",[0,"","","",-1,-1,0,"","_self","","","","",0,0,0,"","",0,0,0,1,1,"#FFFFFF",0,"#FFFFFF"],1,38);
stm_aix("p0i4","p0i0",[0,"灭蟑螂","","",-1,-1,0,"/price.php?pdir1=1&pdir2=3","_self","","","","",0,0,0,"","",0,0,0,1,1,"<? if($_GET[pdir2]==3){echo '#FF7E02';}else{echo '#B5B5B5';}?>",0,"#FF7E02",0,"","",3,3,0,0,"#E6EFF9","#000000","#FFFFFF","#000000","bold 10pt 'Arial','Verdana'","bold 10pt 'Arial','Verdana'",0,0,"","","","",0,0,0],154,38);
stm_aix("p0i5","p0i1",[],1,38);
stm_aix("p0i6","p0i0",[0,"苍蝇蚊子","","",-1,-1,0,"/price.php?pdir1=1&pdir2=4","_self","","","","",0,0,0,"","",0,0,0,1,1,"<? if($_GET[pdir2]==4){echo '#FF7E02';}else{echo '#B5B5B5';}?>",0,"#FF7E02",0,"","",3,3,0,0,"#E6EFF9","#000000","#FFFFFF","#000000","bold 10pt 'Arial','Verdana'","bold 10pt 'Arial','Verdana'",0,0,"","","","",0,0,0],154,38);
stm_aix("p0i7","p0i1",[],1,38);
stm_aix("p0i8","p0i0",[0,"白蚁","","",-1,-1,0,"/price.php?pdir1=1&pdir2=5","_self","","","","",0,0,0,"","",0,0,0,1,1,"<? if($_GET[pdir2]==5){echo '#FF7E02';}else{echo '#B5B5B5';}?>",0,"#FF7E02",0,"","",3,3,0,0,"#E6EFF9","#000000","#FFFFFF","#000000","bold 10pt 'Arial','Verdana'","bold 10pt 'Arial','Verdana'",0,0,"","","","",0,0,0],154,38);

stm_ep();
stm_em();
//-->
</script></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="400" align="left" valign="top">
    
    <table width="100%" border="0" cellpadding="0" cellspacing="0">
	<tr>
	  <?
  for($i=0;$i<sizeof($arrprods);$i++){
      
	  $strSQL = "select opicname as pic from productpic where id_prodinfo ='".$arrprods[$i][id_prodinfo]."' order by id_prodpic asc limit 1" ;
	  $objDB->Execute($strSQL);
	  $arrpic=$objDB->fields();
 
 	 if($i!=0 && $i%4==0){?></tr><tr><? }?>		
		<td height="220" align="Center" valign="top" style="width:25%;">
				<table width="150" border="0" cellpadding="0" cellspacing="0" class="txt">
				  <tr align="center">
					<td bgcolor="#fff"><table width="100%"  border="0" cellspacing="0">
                      <tr>
                        <td bgcolor="#FFFFFF"> <a href="/priceinfo.php?pdir1=1&pdir2=<?=$arrprods[$i][id_proddir];?>&pid=<?=$arrprods[$i][id_prodinfo];?>" ><img src="/upload/product/<?=$arrpic[pic];?>" width="150" height="198" border="0" /></a></td>
                      </tr>
                    </table></td>
				  </tr>
				  <tr align="center">
					<td align="left" class="txt"><?=$arrprods[$i][title];?></td>
				  </tr>
				  <tr align="left">
				    <td>￥<span class="txt_red"><?=$arrprods[$i][tag];?></span></td>
			      </tr>
				  <tr align="left">
				    <td>&nbsp;</td>
			      </tr>
				</table>			  </td>
	  
	<? }?>		  
			  
	</tr>
</table>    </td>
  </tr>
  <tr>
    <td height="50">&nbsp;</td>
  </tr>
  <tr>
    <td align="center" class="txt_black">如果您无法确定身边害虫的种类，可以通过<a href="/library.php"><img border="0" alt="" width="109" height="38" src="/inc/pics/libary.gif" /></a> <br />
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