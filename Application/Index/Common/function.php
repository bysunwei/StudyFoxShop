<?php


	function getCatName($id){
		$cat=M("Category");
		$where["cat_pid"]=$id;
		$catname=$cat->where($where)->order("cat_sort")->select();
		foreach ($catname as $value)
		{
			$retcatname=$retcatname."<em><a href='###'>".$value["cat_name"]."</a></em>";
		}
		return $retcatname;
	}
?>