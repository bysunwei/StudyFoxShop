<?php
namespace Admin\Controller;
use Think\Controller;
use Org\Util\Auth;
class UserController extends CommonController{
	public function edit(){
		$user=M('User');
		$userinf=$user->find(I("get.id"));
		
		$auth=new Auth();
		$list =$auth->getGroups(I("id"));
		foreach ($list as $value){
			$group_id[]=$value['group_id'];
			$group_name[]=$value['title'];
		}
		$userinf['group_id']=implode(',', $group_id);
		$userinf['group_name']=implode(',', $group_name);
		$this->assign("vo",$userinf);
		$this->display();
	}
	//更新
	public function update(){
		$user=M('User');
		if(!$user->create())
		{
			$this->error($user->getError());
		}
		else{
			$user->save();
			/***删除当前用户id对应  auth_group_access**/
			$access=M("AuthGroupAccess");
			$access->where("uid=".I("post.id"))->delete();
			/***添加当前用户id对应  auth_group_access**/
			$groupid=explode(',',I('group_groupId'));
			$data=array();
			foreach ($groupid as $value)
			{
				$data[]=array(
						'uid'=>I("post.id"),
						'group_id'=>$value,
				);
			}
			$access->addAll($data);
			$this->success("编辑成功！");
		}
	}
	public function insert(){
		$user=M("User");
		$where["username"]=I("post.username");
	 	if($user->where($where)->count())
		{
			$this->error("用户名已存在");
		}
		else{
			$_POST["password"]=md5(I("password"));
			if($user->create())
			{
				$newuserid=$user->add();
				if($newuserid)
				{
					$access=M('AuthGroupAccess');
					$groupid=explode(',',I('group_groupId'));
					$data=array();
					foreach ($groupid as $value)
					{
						$data[]=array(
								'uid'=>$newuserid,
								'group_id'=>$value,	
						);
					}
					$access->addAll($data);
					$this->success("用户添加成功");
				}else{
					$this->error("用户添加失败");
				}
			}else{
				$this->error($user->getError());
			}
		} 
	}
	public function editpwd(){
		$data["password"]=md5(I("post.password"));
		$data["id"]=I("post.id");
		$user=M("User");
		if($user->save($data))
		{
			$this->success("密码修改成功！");
		}else{
			$this->error("密码修改失败！");
		}
	}
	public function showinfo(){
		$where['id']=I("get.id");
		$user=M("User");
		$this->userinfo=$user->where($where)->find();
		$this->display();
	}
	public function searchGroup(){
		$authgroup=M("AuthGroup");
		$this->grouplist=$authgroup->select();
		$this->display();
	}
}

?>