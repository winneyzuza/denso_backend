<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/**
 * Element
 *
 * Lets you redirect to a page with added get parameters.
 * Keeps the current get parameters.
 *
 * @access	public
 * @param	array
 * @return	string	URL to pass to redirect methods
 */
if ( ! function_exists('redirect_get'))
{
	function redirect_get($getParams)
	{
		$CI =& get_instance();
        $return = current_url()."?";
        $getArray = $CI->input->get();
        $getNewArray = array();
        if (!empty($getArray)) {
            foreach ($getArray as $key => $value) {
                if(isset($getParams[$key])){
                    $value = $getParams[$key];
                    unset($getParams[$key]);
                }
                if (!is_array($value)) {
                    $getNewArray[] = "$key=$value";
                } else {
                    foreach ($value as $key2 => $val) {
                        $getNewArray[] = $key."[]=".$val;
                    }
                }
            }
        }
        $getString = implode("&", $getNewArray);
        $return.=$getString;
        if (!empty($getParams)) {
            $getNewArray = array();
            foreach ($getParams as $key => $value) {
                if (!is_array($value)) {
                    $getNewArray[] = "$key=$value";
                }
            }
            $getString = implode("&", $getNewArray);
            $return.="&".$getString;
        }

        return $return;
	}
}