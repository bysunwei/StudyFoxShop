<?php
namespace Admin\Controller;
use Think\Controller;
use Think\Page;
use Org\Util\Auth;

class CommonController extends Controller{
    public $map;                //查询条件
	public $model;			//实例化对象
	public function _initialize(){
		if(I('handle_name')!="")
		{
			//判断超管
			if(!in_array(session('uid') ,explode(',',C('AUTH_SUPERADMIN')))){
				$auth=new Auth();
				if(!$auth->check(I("handle_name"),session('uid')))
				{
					$this->error("您没有会员搜索权限！");
				}
			}
		}
	}
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
		$name=CONTROLLER_NAME;
        $noAuth=in_array($name,explode(',',C('NOT_M_MODULE')));
        if(!$noAuth)                        //验证无需实例化的数据表
        {
            $this->model=M($name);
            $this->map=$this->_search();
            $this->_list();
        }
		$this->display();
	}
    //条件查询的通用方法
    public function _search(){
        $field=$this->model->getDbFields();
        foreach($field as $key=> $val)          //适合输入框查询
        {
            if(I($val)!="")
            {
                $map[$val]=I($val);
            }
        }
        if(I("keytype")!="")                //适合下拉菜单和关键字
        {
            $map[I("keytype")]=I("keyword");
        }
        return $map;
    }
	public function _list(){
		//排序字段 默认为主键名
		$order=I('_order')!=""?I('_order'):$this->model->getPk();
		//排序方式  默认倒序
		$sort=I("_sort")=="asc"?"asc":"desc";
		
		$count=$this->model->where($this->map)->count();
		if($count>0)
		{
			import('ORG.Util.Page');
			//每页显示行数
			$listRows=I('numPerPage')!=""?I('numPerPage'):C("PAGE_LISTROWS");
			//当前页数  默认为1
			$currentPage=I(C("VAR_PAGE"))!=""?I(C("VAR_PAGE")):1;
			$page       = new Page($count,$listRows);		// 实例化分页类 传入总记录数和每页显示的记录数
			$list = $this->model->where($this->map)->order($order.' '.$sort)->page ($currentPage.','.$listRows)->select();
			//$show=$page->show();
			//模板赋值
			$this->assign('list',$list);				//数据
			$this->assign('totalCount',$count);					//总数
			$this->assign('numPerPage',$listRows);		//每页显示多少条
			$this->assign('currentPage',$currentPage);
		}
		 
/* 		import("ORG.Util.Cookie");
		Cookie::set('_currentUrl_',__SELF__); */
	}
    public function add(){
        $this->display();
    }
    public function foreverdelete(){
    	$name=CONTROLLER_NAME;
    	$this->model=M($name);
    	if(!empty($this->model))
    	{
    		$pk=$this->model->getPk();
    		$id=I("post.".$pk);
    		if(isset($id))
    		{
    			$condition=array($pk=>array("in",explode(",",$id)));
    			if($this->model->where($condition)->delete())
    			{
    				$this->success("删除成功");
    			}else{
    				$this->error("删除失败");
    			}
    		}
    	}else{
    		$this->error("非法操作");
    	}
    }
    public function edit(){
    	$name=CONTROLLER_NAME;
    	$this->model=M($name);
    	$info=$this->model->find(I("get.id"));
    	$this->assign("vo",$info);
    	$this->display();
    }
    //更新
    public function update(){
    	$name=CONTROLLER_NAME;
    	$this->model=M($name);
    	if(!$this->model->create())
    	{
    		$this->error($this->model->getError());
    	}
    	else{
    		if($this->model->save())
    		{
    			$this->success("编辑成功！");
    		}else{
    			$this->error("编辑失败！");
    		}
    	}
    }
}
?>