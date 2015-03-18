<?php
namespace Admin\Controller;
use Think\Controller;
use Org\Util\TableTree;
use Org\Util\CategoryTree;

class PublicattrController extends CommonController{
	public function index(){
			$category =M("Category");
			$categorylist=$category->order("cat_sort")->select();
			
			$categoryTree=new CategoryTree;
			$categoryTree->tree($categorylist);
			
			$this->categorylist=$categoryTree->getArray();
			
			if(IS_POST)
			{
				$publicattr=M('Publicattr');
				$where['cat_id']=I("cat_id");
				$list=$publicattr->where($where)->order('sort asc')->select();
				$tableTree=new TableTree;
				$tableTree->tree($list);
				$this->list=$tableTree->getArray();
				$this->cat_id=I("cat_id");
			}
			$this->display();
	}
	public function add(){
		$category =M("Category");
		$categorylist=$category->order("cat_sort")->select();
		$categoryTree=new CategoryTree;
		$categoryTree->tree($categorylist);
		$this->categorylist=$categoryTree->getArray();
		$this->display();
	}
	public function edit(){
		$category =M("Category");
		$categorylist=$category->order("cat_sort")->select();
		$categoryTree=new CategoryTree;
		$categoryTree->tree($categorylist);
		$this->categorylist=$categoryTree->getArray();
			
		$publicattr=M('Publicattr');
		$attr=$publicattr->where("id=".I('get.id'))->find();
		$this->cat_id=$attr['cat_id'];
			
		$where['cat_id']=$attr['cat_id'];
		$where['pid']=0;
		$attrlist=$publicattr->where ($where)->field('id,title')->select();
		$result=Array();
		$result[]=array('0','顶层');
		foreach ($attrlist as $v){
			$result[]=array($v['id'],$v['title']);
		}
	
		$this->attrlist=$result;
		$this->pid=$attr['pid'];
		$this->attr=$attr;
		$this->display();
	}
	public function returnAttr(){
			$publicattr=M('Publicattr');
			//$where['cat_id']=$_REQUEST["cat_id"];
			$where['cat_id']=I("get.cat_id");
			$where['pid']=0;

			$list=$publicattr->where ($where)->field('id,title')->select();
			$result=Array();
			$result[]=array('0','顶层');
			foreach ($list as $v){
				$result[]=array($v['id'],$v['title']);
			}
			echo json_encode($result);
		}
		public function insert(){
			$publicattr=M('Publicattr');
			if($publicattr->create())
			{
				if($publicattr->add())
				{
					$this->success("公共属性添加成功");	
				}else{
					$this->error("公共属性添加失败");	
				}
			}else{
				$this->error($publicattr->getError());
			}
		}

		public function update(){
			$publicattr=M('Publicattr');
			if($publicattr->create())
			{
				if($publicattr->save())
				{
					$this->success("公共属性编辑成功");
				}else{
					$this->error("公共属性编辑失败");
				}
			}else{
				$this->error($publicattr->getError());
			}
		}
}

?>