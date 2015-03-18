<?php
// 本类由系统自动生成，仅供测试用途
namespace Index\Controller;
use Think\Controller;
class IndexController extends Controller {
    public function index(){
    	header("Content-Type:text/html;charset=utf-8");
    	//导航栏内容
    	$nav=M("nav");
    	$where["type"]="top";
    	$this->nav=$nav->where($where)->order("sort")->select();
    	//首页全部分类
    	$category=D("Category");
    	$this->category=$category->where('cat_pid=0')->order('cat_sort')->relation(true)-> select();
		//首页幻灯片
    	$ad=M("ad");
    	$wheread["ad_position"]=2;
    	$wheread["ad_type"]=3;
    	$wherescroll["ad_show"]=1;
    	$this->ad=$ad->where($wheread)->order("ad_sort")->limit(6)->select();
    	//滚动幻灯片
    	$wherescroll["ad_position"]=3;
    	$wherescroll["ad_type"]=2;
    	$wherescroll["ad_show"]=1;
    	$this->adscroll=$ad->where($wherescroll)->order("ad_sort")->select();
    	//随机广告 显示 （每次显示一条）
    	$whererand["ad_position"]=4;
    	$whererand["ad_type"]=2;
    	$whererand["ad_show"]=1;
    	$this->adrand=$ad->where($whererand)->order('rand()')->find();
    	
    	//雪狐快报
    	$article=M("Article");
    	$this->article=$article->order("article_sort desc")->select();

    	//楼层显示
    	$floor=D("Floor");
    	$this->floor=$floor->where('pid=0')->order('sort')->relation(true)->select();  
    	//dump($this->floor);
    
    	$this->display();
    }
}