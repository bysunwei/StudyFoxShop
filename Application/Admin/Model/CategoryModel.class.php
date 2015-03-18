<?php

namespace Admin\Model;
use Think\Model\RelationModel;

class CategoryModel extends RelationModel{
	protected $_link = array(
			'Category'=> array(										//关联子菜单
					'mapping_type'=>self::HAS_MANY,
					'mapping_name'=>'_child',
					'mapping_order'=>'cat_sort',
					'parent_key'=>'cat_pid',
			)
		);
}


?>