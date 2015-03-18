<?php if (!defined('THINK_PATH')) exit();?><div class="pageHeader">
	<form id="pagerForm" action="/index.php/Admin/Floor" method="post" onSubmit="return navTabSearch(this)">
    	<input type="hidden" name="pageNum" value="1" />
        <input type="hidden" name="numPerPage" value="<?php echo ($numPerPage); ?>" /><!--【可选】每页显示多少条-->
        <div class="searchBar">
        	<ul class="searchContent">
            	<li>
                	<label>楼层分类名称：</label>
                    <select name="id">
                      <?php if(is_array($floorlist)): $i = 0; $__LIST__ = $floorlist;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><option value="<?php echo ($vo["id"]); ?>"  <?php if($vo["id"] == $floor_id): ?>selected<?php endif; ?> ><?php echo ($key+1); ?>&nbsp;楼：<?php echo ($vo["name"]); ?></option><?php endforeach; endif; else: echo "" ;endif; ?>
                    </select>
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
			<li><a class="add" href="/index.php/Admin/Floor/add/navTabId/<?php echo (strtolower(CONTROLLER_NAME)); ?>_<?php echo (strtolower(ACTION_NAME)); ?>" target="dialog" mask="true" maxable="false" width="500" height="350" rel="floor_add"><span>新增</span></a></li>
			<li><a class="delete" href="/index.php/Admin/Floor/foreverdelete/navTabId/<?php echo (strtolower(CONTROLLER_NAME)); ?>_<?php echo (strtolower(ACTION_NAME)); ?>" posttype="string" rel="id" target="selectedTodo" title="确定要删除选中的记录吗？" warn="请至少选择一位用户"><span>删除</span></a></li>
			<li><a class="edit" href="/index.php/Admin/Floor/edit/navTabId/<?php echo (strtolower(CONTROLLER_NAME)); ?>_<?php echo (strtolower(ACTION_NAME)); ?>/id/{sid_user}" target="dialog" warn="请选择一个用户" width="800" height="550" rel="goods_edit"><span>编辑</span></a></li>
		</ul>
	</div>
    <!--数据显示-->
    <table class="list" width="100%" layoutH="140">
		<thead>
			<tr>
				<th width="15%" align="center"><input type="checkbox" group="id" class="checkboxCtrl"></th>
				<th width="20%">编号</th>
                <th width="25%">分类名称</th>
                <th width="20%">位置</th>
                <th width="20%">排序</th>
			</tr>
		</thead>
		<tbody>
        <?php if(is_array($list)): $i = 0; $__LIST__ = $list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><tr target="sid_user" rel="<?php echo ($vo['id']); ?>" onDblClick="$.getInfo(<?php echo ($vo['id']); ?>)" style="cursor:default">
				<td><input name="id" value="<?php echo ($vo['id']); ?>" type="checkbox"></td>
				<td><?php echo ($vo['id']); ?></td>
                <td><?php echo ($vo['name']); ?></td>
                <td><?php if($vo['postion'] == 1): ?>左<?php else: ?>右<?php endif; ?></td>
                <td><?php echo ($vo['sort']); ?></td>
			</tr><?php endforeach; endif; else: echo "" ;endif; ?>
         </tbody>
	</table>
    <!--数据分页-->
    <div class="panelBar">
		<div class="pages">
			<span>显示</span>
			<select class="combox" name="numPerPage" onChange="navTabPageBreak({numPerPage:this.value})">
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