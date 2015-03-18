<?php

namespace Index\Model;
use Think\Model\RelationModel;

class FloorModel extends RelationModel{
	protected $_link = array(
			'Floor'=> array(										//关联子菜单
					'mapping_type'=>self::HAS_MANY,
					'mapping_name'=>'sub_cat',
					'mapping_order'=>'sort',
					'parent_key'=>'pid',
			),
	);
}


?>