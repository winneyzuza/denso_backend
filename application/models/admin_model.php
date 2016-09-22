<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Admin_model extends CI_Model {

	public function __construct()
	{
		parent::__construct();
		$this->load->database('default');
	}

	public function login($username)
	{
		$conds = array(
			"username" => $username,
			"user_group" => "2"
		);
		return $this->db->select('username,password,salt,sd_id')->where($conds)->get('user_auth')->row_array();
	}
        
        public function getuserrole()
	{
		$select = "role_id,name_eng,name_th";
		return $this->db->select($select)->order_by('name_eng', 'asc')->get('user_role')->result_array();
	}

	public function getservicedealers()
	{
		$select = "sd_id,name_eng,name_th";
		return $this->db->select($select)->order_by('name_eng', 'asc')->get('service_dealer')->result_array();
	}
        
        public function adduser($PostData)
	{
            // echo "<pre>"; print_r($PostData); echo "</pre>";

            //BEGIN THE MANUAL ADDING OF THE DATA
            $this->db->trans_begin();

                    $this->db->insert('user_auth',$PostData);

                    //ROLLBACK IF SOMETHING GOES WRONG
            if ($this->db->trans_status() === FALSE)
            {
                $this->db->trans_rollback();
                return FALSE;
            }
            else
            {
                $this->db->trans_commit();
                return TRUE;
            }
	}

}

/* End of file admin_model.php */
/* Location: ./application/models/admin_model.php */