<?php

//防止恶意调用
if (!defined('IN_TG')) {
	exit('Access Defined!');
}
_close();
?>
<div id="footer">
	<p>本程序执行耗时为: <?php echo  round((_runtime() - START_TIME),4)?>秒</p>
	<p>版权所有 翻版必究</p>
	<p>本程序由<span>Web俱乐部</span>提供 源代码可以任意修改或发布 (c) 163.com</p>
</div>