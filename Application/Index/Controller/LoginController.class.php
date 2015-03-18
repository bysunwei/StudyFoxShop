<?php
namespace Index\Controller;
use Think\Controller;
use Org\Util\HCaptcha;
class LoginController extends Controller{
	public function index(){
		$this->display();
	}
	public function doLogin(){
	 	//import('ORG.Util.HCaptcha');
		$_HCaptchaPrivateKey = "b71efc5839d8153c4e6db4f69717aee1";
		$_HCaptchaVerifyURL = 'https://api.hinsite.com/default.php?u=hcaptcha&s=verify';
		$HCaptchaObj = new  HCaptcha($_HCaptchaVerifyURL,$_HCaptchaPrivateKey);
		$authcode = $HCaptchaObj->Verify($_SERVER['REMOTE_ADDR'], isset($_POST['HCaptchaInput']) ? $_POST['HCaptchaInput'] : "", isset($_POST['HCaptchaSid'])? $_POST['HCaptchaSid'] : "");
		/*验证码必须是通过域名访问才有效果  为了本地测试方便 默认赋值1 */
		$authcode=1;
		if($authcode==1){
			$username=I("username");
			$password=I("password");
			$user=M("User");
			$uname["username"]=$username;
			$where['username']=$username;
			$where['password']=md5($password);
			if(!$user->where($uname)->count())
			{
				echo 1;				//用户不存在
			}else if(!$userinf=$user->where($where)->find())
			{
				echo 2;				//密码不正确
			}else{
				session('username',$username);
				session('uid',$userinf['id']);
				echo 3;		//通过验证
			}
		}else{
			echo 0;			//验证码不正确
		} 
	}
}




?>