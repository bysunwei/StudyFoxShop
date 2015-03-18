<?php
/**************************************************************************
 **
 **     # HCaptcha 图形验证码校验类
 **
 *        版本: 1.0
 *        语言: PHP
 *        版权: 皕川科技[Hdriver]
 *        客户服务: +86 755 26649393 +86 18922849133
 *        客服邮箱: cs@mta.cn
 *        发布日期: 2012-03-13
 *        适用平台: 皕应 http://www.hinsite.com
 **
***************************************************************************/
namespace Org\Util;
class HCaptcha
{
    public $Address;
    public $Server;
    public $Port;
    public $PrivateKey;
    public $RequestURL;
    
    public function __construct($RequestURL, $PrivateKey='')
    {
        if($PrivateKey == '' || $RequestURL == '')
        {
            return -1;
        }
        $this->GetServerInfoByURL($RequestURL);
        $this->PrivateKey = $PrivateKey;
        $this->RequestURL = $RequestURL;
        $this->Connect();
    }
    
    public function Connect()
    {
        return $this->Server = fsockopen($this->Address, $this->Port, $ErrorNo, $ErrorString, 30);
    }
    
    public function Disconnect()
    {
        fclose($this->Server);
    }
    
    public function Verify($IP, $AuthCode, $Sid='')
    {
        if($IP == '')
        {
            return -1;
        }
        if($AuthCode == '')
        {
            return -2;
        }
        
        $Content = '&ip='.$IP.'&c='.$AuthCode.'&k='.$this->PrivateKey.'&sid='.$Sid.'&header=';
        foreach($_SERVER as $Name=>$Value)
        {
            if(substr($Name, 0, 5) == 'HTTP_')
            {
                $Content .= str_replace(' ', '-', ucwords(strtolower(str_replace('_', ' ', substr($Name, 5))))).': '.$Value."\r\n";
            }
        }
        $Out = "POST ".$this->RequestURL." HTTP/1.1\r\nHost: ".$this->Address."\r\nUser-Agent: Hinside\r\nReferer: http://".$_SERVER["HTTP_HOST"].$_SERVER["REQUEST_URI"]."\r\nContent-Type: application/x-www-form-urlencoded;\r\nContent-Length: ".strlen($Content)."\r\nConnection: close\r\n\r\n".$Content;
        fputs($this->Server, $Out);
        $ReturnHeaders = '';
        while($str = trim(fgets($this->Server, 1024)))
        {
            $ReturnHeaders .= $str."\r\n";
        }
        $ReturnBody = '';
        while(!feof($this->Server))
        {
            $ReturnBody .= fgets($this->Server, 1024);
        }
        $this->Disconnect();
        return $ReturnBody;
    }
    
    public function GetServerInfoByURL($URLString='')
    {
        if($URLString == '')
        {
            return -1;
        }
        
        $URLArr = parse_url($URLString);
        if(isset($URLArr['host']))
        {
            $this->Address = $URLArr['host'];
        }
        else
        {
            $this->Address = '127.0.0.1';
        }
        if(isset($URLArr['port']))
        {
            $this->Port = $URLArr['port'];
        }
        else
        {
            $this->Port = 80;
        }
    }
}
?>