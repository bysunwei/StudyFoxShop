<?php
namespace Admin\Controller;
use Think\Controller;
class FloorController extends CommonController{
	public function index(){
		$floor = M('Floor');
		$this->floorlist=$floor->where("pid=0")->order('sort')->select();
		if(IS_POST)
		{
			$this->list=$floor->where('pid='.I("post.id"))->order('sort')->select();
			$this->floor_id=I("post.id");
		}
		$this->display();
	}	
	public function add(){
		$floor = M('Floor');
		$this->floorlist=$floor->where("pid=0")->order('sort')->select();
		$this->display();
	}
	public function searchCategory(){
		$category=M("Category");
		$this->category=$category->where('cat_pid=0')->order('cat_sort')->select();
 		if(IS_POST){
			$category=D('category');
			$this->category_id=I("post.id");
			$this->node=$category->where("cat_pid=".I("post.id"))->order('cat_sort')->relation(true)->select();
		}
 		$this->display();
	}
	public function insert(){
		$floor=M("Floor");
		$_POST['name']=I('group_attrName');
		$_POST['url']=I('group_attrId');
		if(!$floor->create())
		{
			$this->error($floor->getError());
		}else{
			if($floor->add())
			{
				$this->success("楼层分类添加成功");
			}else{
				$this->error("楼层分类添加失败");
			}
		}
	}
}

?>