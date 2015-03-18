<?php
namespace Admin\Controller;
use Think\Controller;
use Org\Util\TableTree;
use Org\Util\Auth;

class  AuthRuleController extends CommonController{
	public function index(){
		//判断超管
		if(!in_array(session('uid'),explode(',',C('AUTH_SUPERADMIN'))))
		{
			$auth=new Auth();
			if(!$auth->check(strtolower(MODULE_NAME.'-'.CONTROLLER_NAME.'-'.ACTION_NAME), session('uid')))
			{
				$this->error("您没有相关权限！");
			}
		}
		$authrule=M('AuthRule');
		$list=$authrule->order('sort')->select();
		import('ORG.Util.TableTree');
		$tableTree=new TableTree;
		$tableTree->tree($list);
		$this->list=$tableTree->getArray();
		$this->display();
	}
	public function add(){
		$authrule=M('AuthRule');
		$list=$authrule->order('sort')->select();
		import('ORG.Util.TableTree');
		$tableTree=new TableTree;
		$tableTree->tree($list);
		$this->list=$tableTree->getArray();
		$this->display();
	}
	public function edit(){
		$authrule=M('AuthRule');
		$list=$authrule->order('sort')->select();
		import('ORG.Util.TableTree');
		$tableTree=new TableTree;
		$tableTree->tree($list);
		$this->list=$tableTree->getArray();
		$info=$authrule->find(I("get.id"));
		$this->assign("vo",$info);
		$this->display();
	}
	public function insert(){
		$authrule=M("authRule");
		$where["name"]=I("post.name");

		if($authrule->where($where)->count())
		{
			$this->error("此规则已存在");
		}
		else{
			if($authrule->create())
			{
				$data["name"]=I('post.name');
				$data["title"]=I('post.title');
				$data["status"]=I('post.status');
				$data["condition"]=I('post.condtion');
				$data["pid"]=I('post.pid');
				$data["isnavshow"]=I('post.isnavshow');
				$data["sort"]=I('post.sort');
				$id=I("post.pid");
				if($id==0)
				{
					$data['level']=1;
				}else{
					$data['level']=$authrule->where('id='.$id)->getField('level')+1;
				}
				if($authrule->add())
				{
					$this->success("新规则添加成功");
				}else{
					$this->error("新规则添加失败");
				}
			}else{
				$this->error($authrule->getError());
			}
		}
	}
	//更新
	public function update(){
		$authrule=M("authRule");
		if(!$authrule->create())
		{
			$this->error($authrule->getError());
		}
		else{
			$data["id"]=I('post.id');
			$data["name"]=I('post.name');
			$data["title"]=I('post.title');
			$data["status"]=I('post.status');
			$data["condition"]=I('post.condtion');
			$data["pid"]=I('post.pid');
			$data["isnavshow"]=I('post.isnavshow');
			$data["sort"]=I('post.sort');
			$id=I("post.pid");
			if($id==0)
			{
				$data['level']=1;
			}else{
				$data['level']=$authrule->where('id='.$id)->getField('level')+1;
			}
			if($authrule->save())
			{
				$this->success("编辑成功！");
			}else{
				$this->error("编辑失败！");
			}
		}
	}
}


?>