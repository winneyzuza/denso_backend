<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/**
 * Element
 *
 * Lets you determine whether an array index is set and whether it has a value.
 * If the element is empty it returns FALSE (or whatever you specify as the default value.)
 *
 * @access	public
 * @param	string
 * @param	array
 * @param	mixed
 * @return	mixed	depends on what the array contains
 */
if ( ! function_exists('trace_status'))
{
	function trace_status($ros_no, $status)
	{
		$CI =& get_instance();
		$CI->load->database('default');
		$table = "status_log";
		$data = array(
			"user_id" => $CI->session->userdata("sd_id"),
			"ros_no" => $ros_no,
			"status" => $status
		);

		$CI->db->insert($table,$data);
                
                switch($status){
                    case 'Approved':
                        $CI->db->where('ros_no', $ros_no)->update('ros_form', array('status_approve_date' => date("Y-m-d H:i")));
                        break;
                    case 'Delivery':
                        $CI->db->where('ros_no', $ros_no)->update('ros_form', array('status_delivery_date' => date("Y-m-d H:i")));
                        break;
                    case 'Core Return':
                        $CI->db->where('ros_no', $ros_no)->update('ros_form', array('status_core_return_date' => date("Y-m-d H:i")));
                        break;
                    default :
                        break;
                }
	}
}