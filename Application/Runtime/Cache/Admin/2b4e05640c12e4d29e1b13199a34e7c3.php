<?php if (!defined('THINK_PATH')) exit();?><div class="pageHeader">
	<form id="pagerForm" action="/index.php/Admin/Publicattr" method="post" onsubmit="return navTabSearch(this)">
    	<input type="hidden" name="pageNum" value="1" />
        <input type="hidden" name="numPerPage" value="<?php echo ($numPerPage); ?>" /><!--【可选】每页显示多少条-->
        <div class="searchBar">
        	<ul class="searchContent">
            	<li>
                	<label>分类名称：</label>
                    <select name="cat_id">
                    <?php if(is_array($categorylist)): $i = 0; $__LIST__ = $categorylist;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><option value="<?php echo ($vo["id"]); ?>"  <?php if($vo["id"] == $cat_id): ?>selected<?php endif; ?>  <?php if($vo["cat_level"] != 3): ?>disabled<?php endif; ?>  ><?php echo ($vo["cat_name"]); ?></option><?php endforeach; endif; else: echo "" ;endif; ?>
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
			<li><a class="add" href="/index.php/Admin/Publicattr/add/navTabId/<?php echo (strtolower(CONTROLLER_NAME)); ?>_<?php echo (strtolower(ACTION_NAME)); ?>" target="dialog" mask="true" maxable="false" width="500" rel="publicattr_add"><span>新增</span></a></li>
			<li><a title="确实要删除这些记录吗?" target="selectedTodo" rel="id" posttype="string"  href="/index.php/Admin/Publicattr/foreverdelete/navTabId/<?php echo (strtolower(CONTROLLER_NAME)); ?>_<?php echo (strtolower(ACTION_NAME)); ?>" warn="请至少选择一位用户" class="delete"><span>删除</span></a></li>
			<li><a class="edit" href="/index.php/Admin/Publicattr/edit/navTabId/<?php echo (strtolower(CONTROLLER_NAME)); ?>_<?php echo (strtolower(ACTION_NAME)); ?>/id/{sid_user}" target="dialog" warn="请选择一个用户" width="550" height="380"><span>编辑</span></a></li>
		</ul>
	</div>
    <!--数据显示-->
    <table class="table" width="100%" layoutH="140">
		<thead>
			<tr>
				<th width="4%" align="center"><input type="checkbox" group="id" class="checkboxCtrl"></th>
				<th width="12%">编号</th>
                <th width="12%">公共属性名</th>
                <th width="16%">层</th>
                <th width="12%">排序</th>
			</tr>
		</thead>
		<tbody>
        <?php if(is_array($list)): $i = 0; $__LIST__ = $list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><tr target="sid_user" rel="<?php echo ($vo['id']); ?>" ondblclick="$.getInfo(<?php echo ($vo['id']); ?>)" style="cursor:default">
				<td><input name="id" value="<?php echo ($vo['id']); ?>" type="checkbox"></td>
				<td><?php echo ($vo['id']); ?></td>
                <td><?php echo ($vo['title']); ?></td>
                <td><?php echo ($vo['level']); ?></td>
                <td><?php echo ($vo['sort']); ?></td>
			</tr><?php endforeach; endif; else: echo "" ;endif; ?>
         </tbody>
	</table>
</div>