<?php if (!defined('THINK_PATH')) exit();?><script type="text/javascript">
$(function(){
	$.extend({
		'getInfo':function(id){
			$.pdialog.open("/index.php/Admin/User/showinfo/id/"+id,"dialog","查看会员信息",{maxable:false,mask:true,width:500,height:300});
		}	
	})	
})
</script>
<div class="pageHeader">
	<form id="pagerForm" action="/index.php/Admin/User" method="post" onsubmit="return navTabSearch(this)">
    	<input type="hidden" name="pageNum" value="1" />
        <input type="hidden" name="numPerPage" value="<?php echo ($numPerPage); ?>" /><!--【可选】每页显示多少条-->
        <div class="searchBar">
        	<ul class="searchContent">
            	<li>
                	<label>查找范围：</label>
                    <select name="keytype">
                    	<option value="username" <?php if($_POST['keytype']== 'username'): ?>selected<?php endif; ?> >用户名</option>
                        <option value="email"  <?php if($_POST['keytype']== 'email'): ?>selected<?php endif; ?> >邮箱</option>
                        <option value="qq"  <?php if($_POST['keytype']== 'qq'): ?>selected<?php endif; ?>>QQ</option>
                    </select>
                </li>
                <li>
                	<label>关键字：</label>
                    <input name="keyword" type="text" size="25" value="<?php echo ($_POST['keyword']); ?>"/>
                </li>
            </ul>
            <div class="subBar"> 
            	<ul>
                	<li>
                    	<div class="buttonActive">
                        	<div class="buttonContent"> 
                            	<button type="submit">查询</button>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </form>
</div>
<!--页内容-->
<div class="pageContent">
	<!--操作按钮-->
    <div class="panelBar">
		<ul class="toolBar">
			<li><a class="add" href="/index.php/Admin/User/add/navTabId/<?php echo (strtolower(CONTROLLER_NAME)); ?>_<?php echo (strtolower(ACTION_NAME)); ?>" target="dialog" mask="true" maxable="false" width="550" rel="user_add"><span>新增</span></a></li>
			<li><a class="delete" href="/index.php/Admin/User/foreverdelete/navTabId/<?php echo (strtolower(CONTROLLER_NAME)); ?>_<?php echo (strtolower(ACTION_NAME)); ?>" posttype="string" rel="id" target="selectedTodo" title="确定要删除选中的记录吗？" warn="请至少选择一位用户"><span>删除</span></a></li>
			<li><a class="edit" href="/index.php/Admin/User/edit/navTabId/<?php echo (strtolower(CONTROLLER_NAME)); ?>_<?php echo (strtolower(ACTION_NAME)); ?>/id/{sid_user}" target="dialog" warn="请选择一个用户" width="550" height="400" rel="user_edit"><span>编辑</span></a></li>
            <li><a title="确实要导出所有记录吗?" target="dwzExport"  href="/index.php/Admin/ExportExcel/index/module_name/<?php echo (CONTROLLER_NAME); ?>" targetType="navTab" class="delete"><span>导出Excel</span></a></li>
			<li class="line">line</li>
			<li><a class="icon" href="/index.php/Admin/User/password/navTabId/<?php echo (strtolower(CONTROLLER_NAME)); ?>_<?php echo (strtolower(ACTION_NAME)); ?>/id/{sid_user}" target="dialog" warn="请选择一个用户" width="400" height="200"><span>修改密码</span></a></li>
		</ul>
	</div>
    <!--数据显示-->
    <table class="list" width="100%" layoutH="140">
		<thead>
			<tr>
				<th width="4%" align="center"><input type="checkbox" group="id" class="checkboxCtrl"></th>
				<th width="12%">编号</th>
                <th width="12%">用户名</th>
                <th width="16%">邮箱</th>
                <th width="12%">用户资金</th>
                <th width="16%">注册时间</th>
                <th width="12%">QQ</th>
				<th width="12%">状态</th>
			</tr>
		</thead>
		<tbody>
        <?php if(is_array($list)): $i = 0; $__LIST__ = $list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><tr target="sid_user" rel="<?php echo ($vo['id']); ?>" ondblclick="$.getInfo(<?php echo ($vo['id']); ?>)" style="cursor:default">
				<td><input name="id" value="<?php echo ($vo['id']); ?>" type="checkbox"></td>
				<td><?php echo ($vo['id']); ?></td>
                <td><?php echo ($vo['username']); ?></td>
                <td><?php echo ($vo['email']); ?></td>
                <td><?php echo ($vo['user_money']); ?></td>
                <td><?php echo ($vo['reg_time']); ?></td>
                <td><?php echo ($vo['qq']); ?></td>
                <td><?php if($vo['status'] == 1): ?>正常<?php else: ?>禁止<?php endif; ?></td>
			</tr><?php endforeach; endif; else: echo "" ;endif; ?>
         </tbody>
	</table>
    <!--数据分页-->
    <div class="panelBar">
		<div class="pages">
			<span>显示</span>
			<select class="combox" name="numPerPage" onchange="navTabPageBreak({numPerPage:this.value})">
				<option <?php echo ($numPerPage==10?"selected":""); ?> value="10" >10</option>
				<option <?php echo ($numPerPage==15?"selected":""); ?> value="15">15</option>
				<option <?php echo ($numPerPage==100?"selected":""); ?> value="100">100</option>
				<option <?php echo ($numPerPage==200?"selected":""); ?> value="200">200</option>
			</select>
			<span>条，共<?php echo ($totalCount==""?0:$totalCount); ?>条</span>
		</div>
		
		<div class="pagination" targetType="navTab" totalCount="<?php echo ($totalCount); ?>" numPerPage="<?php echo ($numPerPage); ?>" pageNumShown="10" currentPage="<?php echo ($currentPage); ?>"></div>

	</div>
</div>