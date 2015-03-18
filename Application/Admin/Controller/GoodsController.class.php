<?php
namespace Admin\Controller;
use Think\Controller;
use Org\Util\CategoryTree;
use	Think\Page;
use Think\Upload;
use Think\Image;
class GoodsController extends CommonController{
	public function update(){
		$goods=M("Goods");
		//商品小图片上传
		$config = array(
				'maxSize'    =>    3145728,
				'savePath'   =>    '/goods/',
				'saveName'   =>    array('date','YmdHis'),
				'exts'       =>    array('jpg', 'gif', 'png', 'jpeg'),
				'autoSub'    =>    true,
				'subName'    =>    array('date','Y-m'),
		);
		$upload = new Upload($config);// 实例化上传类
		//上传文件
		$info   =   $upload->upload();
		if($info) {
			$image = new Image();
			// 上传成功 获取上传文件信息
			foreach($info as $file)
			{
				$_POST['goods_img']=$file['savepath'].$file['savename'];
				//生成缩略图
				$image->open('./Uploads'.$file['savepath'].$file['savename']);
				// 生成一个缩放后填充大小220*220的缩略图并保存为 $file['savename']
				$image->thumb(220, 220,\Think\Image::IMAGE_THUMB_FILLED)->save('./Uploads'.$file['savepath'].$file['savename']);
			}
		}
		$_POST['public_attr_id']=','.I('post.group_attrId').',';
		$_POST['goods_addtime']=time();
		$_POST['promote_start_date']=strtotime(I("post.promote_start_date"));
		$_POST['promote_end_date']=strtotime(I("post.promote_end_date"));
		$_POST['goods_ontime']=strtotime(I("post.goods_ontime"));
		if(!$goods->create())
		{
			$this->error($goods->getError());
		}else{
			if($goods->save())
			{
				$this->success("新商品编辑成功");
			}else{
				$this->error("新商品编辑失败");
			}
		}
	}
	public function edit(){
		$category =M("Category");
		$categorylist=$category->order("cat_sort")->select();
		$categoryTree=new CategoryTree;
		$categoryTree->tree($categorylist);
		$this->categorylist=$categoryTree->getArray();
		
		$goods=M('Goods');
		$goodsinf=$goods->find(I('get.id'));
		$goodsinf['public_attr_id']=substr($goodsinf['public_attr_id'], 1,-1);
		//时间戳转换
		$goodsinf['promote_start_date']=date('Y-m-d H:i:s',$goodsinf['promote_start_date']);
		$goodsinf['promote_end_date']=date('Y-m-d H:i:s',$goodsinf['promote_end_date']);
		$goodsinf['goods_ontime']=date('Y-m-d',$goodsinf['goods_ontime']);
		$this->vo=$goodsinf;
		$this->display();
	}
	public function insert(){
		$goods=M("Goods");
		//商品小图片上传
		$config = array(  
			    'maxSize'    =>    3145728,  
			    'savePath'   =>    '/goods/',   
				'saveName'   =>    array('date','YmdHis'),    
				'exts'       =>    array('jpg', 'gif', 'png', 'jpeg'),    
				'autoSub'    =>    true,   
				 'subName'    =>    array('date','Y-m'),	
		);
		$upload = new Upload($config);// 实例化上传类
		//上传文件
		$info   =   $upload->upload();
		if(!$info) {
			// 上传错误提示错误信息 
			   $this->error($upload->getError());
		}else{
			$image = new Image();
			// 上传成功 获取上传文件信息
			    foreach($info as $file)
			    {   
			    	$_POST['goods_img']=$file['savepath'].$file['savename'];
					//生成缩略图
			    	$image->open('./Uploads'.$file['savepath'].$file['savename']);
			    	// 生成一个缩放后填充大小220*220的缩略图并保存为 $file['savename']
			    	$image->thumb(220, 220,\Think\Image::IMAGE_THUMB_FILLED)->save('./Uploads'.$file['savepath'].$file['savename']);
			    }
			     $_POST['public_attr_id']=','.I('post.group_attrId').',';
			     $_POST['goods_addtime']=time();
			     $_POST['promote_start_date']=strtotime(I("post.promote_start_date"));
			     $_POST['promote_end_date']=strtotime(I("post.promote_end_date"));
			     $_POST['goods_ontime']=strtotime(I("post.goods_ontime"));
			     if(!$goods->create())
			     {
			     	$this->error($goods->getError());
			     }else{
			     	if($goods->add())
			     	{
			     		$this->success("新商品添加成功");
			     	}else{
			     		$this->error("新商品添加失败");
			     	}
			     } 
		}
	}
	public function index(){
		$category =M("Category");
		$categorylist=$category->order("cat_sort")->select();
		$categoryTree=new CategoryTree;
		$categoryTree->tree($categorylist);
		$this->categorylist=$categoryTree->getArray();
		$goods =M("Goods");
		if(I('post.cat_id')!=0){
			$map["cat_id"]=I('post.cat_id');
			$this->cat_id=I('post.cat_id');
		}
		//排序字段 默认为主键名
		$order="id";
		//排序方式  默认倒序
		$sort="asc";
		$count=$goods->where($map)->count();
		if($count>0)
		{
			//每页显示行数 
			$listRows=I('numPerPage')!=""?I('numPerPage'):C("PAGE_LISTROWS");
			//当前页数  默认为1
			$currentPage=I(C("VAR_PAGE"))!=""?I(C("VAR_PAGE")):1;
			$page       = new Page($count,$listRows);		// 实例化分页类 传入总记录数和每页显示的记录数
			$list = $goods->where($map)->order($order.' '.$sort)->page ($currentPage.','.$listRows)->select();
			//模板赋值
			$this->assign('list',$list);				//数据
			$this->assign('totalCount',$count);					//总数
			$this->assign('numPerPage',$listRows);		//每页显示多少条
			$this->assign('currentPage',$currentPage);
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
	public function searchPublicAttr(){
		$publicattr=M('Publicattr');
		$where['cat_id']=I("get.cat_id");
		$list=$publicattr->where($where)->order('sort')->select();
		$this->node=$this->list_to_tree($list);
		
		$category =M("Category");
		$this->cat_name=$category->where('id='.I('get.cat_id'))->getField('cat_name');
		$this->display();
	}
	//将数组变成多维数组
	public function  list_to_tree($list){
		foreach ($list as $key=>$data)
		{
			$refer[$data['id']]=& $list[$key];
		}
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
	public function upload(){
header('Content-Type: text/html; charset=UTF-8');
		$inputname = 'filedata'; //表单文件域name
		$attachdir = './Uploads/goods'; //上传文件保存路径，结尾不要带/
		$dirtype = 4; //1:按天存入目录 2:按月存入目录 3:按扩展名存目录  建议使用按天存 4:年月
		$maxattachsize = 1048576 * 1024; //最大上传大小，默认是1G
		$upext = 'zip,rar,txt,doc,docx,ppt,xls,xlsx,csv,jpg,jpeg,gif,png,bmp,swf,flv,fla,avi,wmv,wma,rm,mov,mpg,rmvb,3gp,mp4,mp3'; //上传扩展名
		$msgtype = 2; //返回上传参数的格式：1，只返回url，2，返回参数数组
		$immediate = isset($_GET['immediate']) ? $_GET['immediate'] : 0; //立即上传模式
		ini_set('date.timezone', 'Asia/Shanghai'); //时区
		if(isset($_SERVER['HTTP_CONTENT_DISPOSITION'])) //HTML5上传
		{
			if(preg_match('/attachment;\s+name="(.+?)";\s+filename="(.+?)"/i', $_SERVER['HTTP_CONTENT_DISPOSITION'], $info))
			{
				$temp_name = ini_get("upload_tmp_dir") . '/' . date("YmdHis") . mt_rand(1000, 9999) . '.tmp';
				file_put_contents($temp_name, file_get_contents("php://input"));
				$size = filesize(ini_get("upload_tmp_dir"));
				$_FILES[$info[1]] = array(
					'name' => $info[2], 'tmp_name' => $temp_name, 'size' => $size, 'type' => '', 'error' => 0
				);
			}
		}
		$err = "";
		$msg = "''";
		$upfile = @$_FILES[$inputname];
		if(! isset($upfile))
		{
			$err = '文件域的name错误';
		}
		elseif(! empty($upfile['error']))
		{
			switch($upfile['error'])
			{
				case '1':
					$err = '文件大小超过了php.ini定义的upload_max_filesize值';
					break;
				case '2':
					$err = '文件大小超过了HTML定义的MAX_FILE_SIZE值';
					break;
				case '3':
					$err = '文件上传不完全';
					break;
				case '4':
					$err = '无文件上传';
					break;
				case '6':
					$err = '缺少临时文件夹';
					break;
				case '7':
					$err = '写文件失败';
					break;
				case '8':
					$err = '上传被其它扩展中断';
					break;
				case '999':
				default:
					$err = '无有效错误代码';
			}
		}
		elseif(empty($upfile['tmp_name']) || $upfile['tmp_name'] == 'none')
		{
			$err = '无文件上传';
		}
		else
		{
			$temppath = $upfile['tmp_name'];
			$fileinfo = pathinfo($upfile['name']);
			$extension = $fileinfo['extension'];
			if(preg_match('/' . str_replace(',', '|', $upext) . '/i', $extension))
			{
				$bytes = filesize($temppath);
				if($bytes > $maxattachsize)
					$err = '请不要上传大小超过' . $maxattachsize . '的文件';
				else
				{
					switch($dirtype)
					{
						case 1:
							$attach_subdir = 'day_' . date('ymd');
							break;
						case 2:
							$attach_subdir = 'month_' . date('ym');
							break;
						case 3:
							$attach_subdir = 'ext_' . $extension;
							break;
						case 4:
							$attach_subdir = date('Y-m');
							break;
					}
					$attach_dir = $attachdir . '/' . $attach_subdir;
					if(! is_dir($attach_dir))
					{
						@mkdir($attach_dir, 0777);
						@fclose(fopen($attach_dir . '/index.htm', 'w'));
					}
					PHP_VERSION < '4.2.0' && mt_srand((double)microtime() * 1000000);
					$filename = date("YmdHis") . mt_rand(1000, 9999) . '.' . $extension;
					$target = $attach_dir . '/' . $filename;
					rename($upfile['tmp_name'], $target);
					@chmod($target, 0755);
					$target = __ROOT__ . '/Uploads/goods/' . $attach_subdir . '/' . $filename;
					if($immediate == '1')
						$target = '!' . $target;
					if($msgtype == 1)
						$msg = "'$target'";
					else
						$msg = "{'url':'" . $target . "','localname':'" . preg_replace("/([\\\\\/'])/", '\\\$1', $upfile['name']) . "','id':'1'}";
				}
			}
			else
				$err = '上传文件扩展名必需为：' . $upext;
			@unlink($temppath);
		}
		echo "{'err':'" . preg_replace("/([\\\\\/'])/", '\\\$1', $err) . "','msg':" . $msg . "}";
	}
}
?>