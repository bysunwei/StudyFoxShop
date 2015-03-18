<?php
namespace Admin\Controller;
use Think\Controller;
class AuthGroupController extends CommonController{
	public function insert(){
		$authrule=M("authGroup");
		$where["title"]=I("post.title");
		if($authrule->where($where)->count())
		{
			$this->error("此用户组已存在");
		}
		else{
			if($authrule->create())
			{
				if($authrule->add())
				{
					$this->success("新用户组添加成功");
				}else{
					$this->error("新用户组添加失败");
				}
			}else{
				$this->error($authrule->getError());
			}
		}
	}
	public function setRule(){
		$authRule=M("AuthRule");
		$list=$authRule->order('sort')->select();
		$this->node=$this->list_to_tree($list);
		
		//加载时选择
		$id=I('id');
		$authgroup=M('AuthGroup');
		$this->selectdnode=$authgroup->where('id='.$id)->select();
		$this->display();	
	}
	public function  list_to_tree($list){
		foreach ($list as $key=>$data)
		{
			$refer[$data['id']]=& $list[$key];
		}
		//dump($refer);
		foreach ( $list as $key => $data)
		{
			$pid=$data['pid'];
			if($pid==0)
			{
				$tree[]=& $list[$key];
			}
			else{
				if(isset($refer[$pid]))
				{
					$parent=& $refer[$pid];
					$parent['_child'][]=& $list[$key];
				}
			}
		} 
		return $tree;
	}
	public function updateGroup(){
		$rules=implode(',',I("rule_id"));
		$authgroup=M('AuthGroup');
		$data['id']=I('ruleid');
		$data['rules']=$rules;
		if($authgroup->save($data))
		$this->success("规则分配成功");
		else {
			$this->error("规则分配失败");
		}
	
	}
}

?>