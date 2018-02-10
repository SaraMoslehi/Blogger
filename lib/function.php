<?php
function redirect( $loc ) {
	header( "Location: $loc" );
	die( "<meta http-equiv='refresh' content='0; $loc'>".
		 "<script language='javascript' type='text/javascript'>".
		 "document.location.replace('$loc')".
		 "</script>"."<a href=\"$loc\">$loc</a>" );
}
if(!function_exists('scandir')) {
   function scandir($dir, $sortorder = 0) {
       if(is_dir($dir))        {
           $dirlist = opendir($dir);
           while( ($file = readdir($dirlist)) !== false) {
               if(!is_dir($file)) {
                   $files[] = $file;
               }
           }
           ($sortorder == 0) ? asort($files) : rsort($files);
           return $files;
       } else {
       return FALSE;
       //break;
       }
   } 
}
function str_replace_array ($search, $replace, $subject, $c) {
	if (is_array($subject)) {
        foreach ($subject as $id => $inner_subject) {
            $subject[$id] = str_replace_array($search, $replace, $inner_subject, $c);
        }
    } else {
		$j = 0;
        $subject = str_replace($search, $replace, $subject);
		if( $j>0 ) $c = $c + $j;
    }
    return $subject;
}
function zzz($str){
	$str = str_ireplace('ي', 'ی', $str);
	$str = str_ireplace('ك', 'ک', $str);
	return $str;
}
function zzzs($str){
	$str = str_ireplace('ي', 'ی', $str);
	$str = str_ireplace('ك', 'ک', $str);
	$str = ltrim($str);
	return $str;
}
function CreateRss(){
	global $db;
//*****************************************خواندن پنجاه خبر اخبار مهم و عادی فراگیر
	$sql = "SELECT * FROM xxnews
			WHERE (xnewsgroupid=10 OR xnewsgroupid=28) AND xdeleted='no' AND xpublish='yes'
			ORDER BY xdate DESC
			LIMIT 0,50";
	$res = $db->getAll($sql);	
//*****************************************تولید ار اس اس
	$html = "";	
	$html = '<?xml version="1.0" encoding="utf-8"?>
	<rss version="2.0">
	  <channel>
		<title>دانشپذیر-مرجع فراگیر</title>
		<link>http://www.daneshpazir.net/</link>
		<description>خبرهای مهم وعا دی فراگیر پیام نور</description>';
		foreach($res as $key=>$val)
			{
				$html .= "<item><title>$val[xnews]</title><link>".URL."/news-detail/$val[xnewsid]/</link></item>";
			}
	$html .= "</channel>
	</rss>";
	$ourFileName = "rss.xml";
	$ourFileHandle = fopen($ourFileName, 'w');
	fwrite($ourFileHandle, $html);
	fclose($ourFileHandle);
	return 1;
}
function CreateSitemap($depid){
	global $db;
//----------------------------------------------------------- تولید سایت مپ
	$xmlurl='https://www.parsayanedu.com';
	$sql = "SELECT * FROM xxnewsgroup
			WHERE xnewsgroupdeleted='no' 
			ORDER BY xnewsgroupid DESC";
	$NewsGroupList = $db->getAll($sql);
	$sql = "SELECT * FROM xxnews
			WHERE xnewsdeleted='no' 
			ORDER BY xnewsregtime DESC, xnewsid DESC";
	$NewsList = $db->getAll($sql);
	$html = "";	
	$html = '<?xml version="1.0" encoding="UTF-8"?><urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.sitemaps.org/schemas/sitemap/0.9 http://www.sitemaps.org/schemas/sitemap/0.9/sitemap.xsd">';
	$html.= "<url><loc>".$xmlurl."</loc><changefreq>daily</changefreq><priority>1.00</priority></url>";	
	foreach($NewsGroupList as $key=>$val){
		//$tt = str_ireplace(' ', '-', $val['xnewsgroup']);
		$html .= "<url><loc>".$xmlurl."/news/$val[xnewsgroupid]/"."</loc><changefreq>daily</changefreq><priority>0.95</priority></url>";
	}
	foreach($NewsList as $key=>$val){
		//$tt = str_ireplace(' ', '-', $val['xnews']);
		$html .= "<url><loc>".$xmlurl."/news-detail/$val[xnewsid]/"."</loc><changefreq>daily</changefreq><priority>0.85</priority></url>";
	}
	$html .= "</urlset>";
	$ourFileName = "sitemap.xml";
	$ourFileHandle = fopen($ourFileName, 'w');
	fwrite($ourFileHandle, $html);
	fclose($ourFileHandle);
}
function minify_css()
{
		require_once("lib/cssmin-v3.0.1-minified.php");
		$cssmin = CssMin::minify(file_get_contents("+style/styles1.css"));
		$ourFileName = "+style/styles1.min.css";
		$ourFileHandle = fopen($ourFileName, 'w');
		fwrite($ourFileHandle, $cssmin);
		fclose($ourFileHandle);
}
function time_minus($time1, $time2)
{
	$time2 = ((is_int($time2)) ? ($time2) : (strtotime($time2)));
	$time1 = ((is_int($time1)) ? ($time1) : (strtotime($time1)));
	$plus  = abs($time2 - $time1);
	$output = date("H:i:s", $plus);
	return $output;
}
function time_plus($time1, $time2)
{
	$time2 = ((is_int($time2)) ? ($time2) : (strtotime($time2)));
	$time1 = ((is_int($time1)) ? ($time1) : (strtotime($time1)));
	$plus  = abs($time1 + $time2);
	$output = date("H:i:s", $plus);
	return $output;
}
function time_sum($time1, $time2) {
  $times = array($time1, $time2);
  $seconds = 0;
  foreach ($times as $time)
  {
    list($hour,$minute,$second) = explode(':', $time);
    $seconds += $hour*3600;
    $seconds += $minute*60;
    $seconds += $second;
  }
  $hours = floor($seconds/3600);
  $seconds -= $hours*3600;
  $minutes  = floor($seconds/60);
  $seconds -= $minutes*60;
  return "{$hours}:{$minutes}";
}
function display_menu($parent, $level, $treeid) {
	global $db;
	if (!isset($treemenu)) $treemenu = null;
	$table="xxtreemenu";
	$sql = "SELECT xtreemenutitle,xtreemenuid,xtreemenuurl,xtreemenufa FROM $table
			WHERE xtreeid='$treeid' AND xtreemenuparentid='$parent' AND xtreemenudeleted = 'no'
			ORDER BY xtreemenusort ASC, xtreeid ASC";
	$result = $db->getAll($sql);
	foreach($result as $key=>$val){
	   $has_child = topmenuhas_children($val['xtreemenuid'], $treeid);
	   if($has_child){
		   if($val['xtreemenuurl']=='') $result[$key]['xtreemenuurl']="#";
		   $treemenu=$treemenu.'<li class="dropdown-submenu nav'.$val["xtreemenuid"].'"><a class="dropdown-toggle" tabindex="-1" data-toggle="dropdown" href="#"><span class="'.$val["xtreemenufa"].'"></span> '.$val["xtreemenutitle"].'<span class="caret"></span></a><ul class="dropdown-menu">';
		   $treemenu=$treemenu.display_menu($val['xtreemenuid'], $level+1, $treeid);
		   $treemenu=$treemenu."</ul></li>";
	   }else{
		   if($val['xtreemenuurl']=='') $result[$key]['xtreemenuurl']="#";
			$treemenu=$treemenu.'<li><a class="nav1" href="'.$val["xtreemenuurl"].'"><span class="'.$val["xtreemenufa"].'"></span> '.$val["xtreemenutitle"].'</a></li>';
			$treemenu=$treemenu.display_menu($val['xtreemenuid'], $level+1, $treeid);
		}		
	}
	return $treemenu;
}

function topmenuhas_children($menuid, $treeid) {
	global $db;
	$table="xxtreemenu";
	$sql = "SELECT xtreemenuid FROM $table
			WHERE xtreeid='$treeid' AND xtreemenudeleted = 'no' AND xtreemenuparentid='$menuid' LIMIT 1";
	$result = $db->getOne($sql);
	if($result)
		return 1;
	else	
		return 0;
	
}
function file_get_contents_curl($url) {
    $ch = curl_init();

    curl_setopt($ch, CURLOPT_AUTOREFERER, TRUE);
    curl_setopt($ch, CURLOPT_HEADER, 0);
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
    curl_setopt($ch, CURLOPT_URL, $url);
    curl_setopt($ch, CURLOPT_FOLLOWLOCATION, TRUE);       

    $data = curl_exec($ch);
    curl_close($ch);

    return $data;
}
?>