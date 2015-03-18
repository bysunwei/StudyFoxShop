<?php

namespace Index\Model;
use Think\Model\RelationModel;

class CategoryModel extends RelationModel{
	protected $_link = array(
			'Category'=> array(										//关联子菜单
					'mapping_type'=>self::HAS_MANY,
					'mapping_name'=>'subitem',
					'mapping_order'=>'cat_sort',
					'parent_key'=>'cat_pid',
			),
			'Ad'=>array(												//关联广告
					'mapping_type'=>self::HAS_MANY,
					'mapping_name'=>'ad',
					'mapping_order'=>'ad_sort',
					'foreign_key'=>'cat_id',
			),
			'Brand'=>array(												//关联广告
					'mapping_type'=>self::HAS_MANY,
					'mapping_name'=>'brand',
					'mapping_order'=>'brand_sort',
					'foreign_key'=>'cat_id',
			)
	);
}


?>