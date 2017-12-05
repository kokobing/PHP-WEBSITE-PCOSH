<?php
//BANNER图
$strSQL = "select opicname as pic from pagesetpic where id_pageset='6'" ;
$objDB->Execute($strSQL);
$Banner_QJ=$objDB->GetRows();
?>

			<div id="slides">
				<div class="slides_container">
                <?php for($i=0;$i<sizeof($Banner_QJ);$i++){?>
                <a href="javascript:void(0)"><img src="/upload/layout/<?=$Banner_QJ[$i][pic];?>"  ></a>
                <?php }?>
                </div>
			</div>

