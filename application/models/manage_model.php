<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Manage_model extends CI_Model {

	public function __construct()
	{
		parent::__construct();
		$this->load->database('default');
	}

	public function getros($sd_id,$status,$offset, $per_page)
	{
		// $select = "created_time,CONCAT('<a href=''create/draft/',ros_no,'''>',ros_no,'</a>') AS ros_no,service_dealer.".lang("manage_sd_name").",warranty, car_model, injector, car_makers.".lang("manage_maker_name").", '-' AS part_no,'-' AS ApproveDate, '-' AS Delivery, '-' AS Core, status";
		// $return = array();
		// $result = $this->db->query("
		// 	SELECT $select FROM ros_draft
		// 	LEFT JOIN service_dealer ON service_dealer.sd_id = ros_draft.created_by
		// 	LEFT JOIN car_makers ON car_makers.maker_id = ros_draft.maker_id
		// 	WHERE ros_draft.created_by = '$sd_id'
		// ");

		// if ($result->num_rows() >= 1) {
		// 	$return = $result->result_array();
		// }
		if ($status == "all") {
			$status_query = " WHERE status != 'Draft' ";
		} else {
			$status_query = " WHERE status = '$status' ";
		}
		$select = "CONCAT('<a href=''manage/ros/',ros_no,'''>',ros_no,'</a>') AS ros_no, injector, car_model, warranty, created_time, repair_date, service_dealer.".lang("manage_sd_name").",car_makers.".lang("manage_maker_name").", '-' AS part_no,'-' AS ApproveDate, '-' AS Delivery, '-' AS Core, status";
		$additional = " LIMIT $per_page OFFSET $offset";
		$query = "
			SELECT $select FROM ros_form
			LEFT JOIN service_dealer ON service_dealer.sd_id = ros_form.created_by
			LEFT JOIN car_makers ON car_makers.maker_id = ros_form.maker_id 
			$status_query
                        ORDER BY created_time desc
		";
		$result = $this->db->query($query.$additional);

		if ($result->num_rows() >= 1) {
			$return['records'] = $result->result_array();
			$return['total_rows'] = $this->db->query($query)->num_rows();
		}


		if (!empty($return)) {
			return $return;
		} else{
			return FALSE;
		}
	}

	public function statusbyros($ros_no)
	{
		return $this->db->select("status")->where("ros_no",$ros_no)->get("ros_form")->row()->status;
	}
        
        public function getrosfiltered($sd_id,$status,$offset, $per_page, $filter)
	{
		// $select = "created_time,CONCAT('<a href=''create/draft/',ros_no,'''>',ros_no,'</a>') AS ros_no,service_dealer.".lang("manage_sd_name").",warranty, car_model, injector, car_makers.".lang("manage_maker_name").", '-' AS part_no,'-' AS ApproveDate, '-' AS Delivery, '-' AS Core, status";
		// $return = array();
		// $result = $this->db->query("
		// 	SELECT $select FROM ros_draft
		// 	LEFT JOIN service_dealer ON service_dealer.sd_id = ros_draft.created_by
		// 	LEFT JOIN car_makers ON car_makers.maker_id = ros_draft.maker_id
		// 	WHERE ros_draft.created_by = '$sd_id'
		// ");

		// if ($result->num_rows() >= 1) {
		// 	$return = $result->result_array();
		// }
		if ($status == "all") {
			$status_query = " WHERE status != 'Draft' ";
		} else {
			$status_query = " WHERE status = '$status' ";
		}
                
                if(isset($filter['CarMaker']))
                    $status_query .= " AND car_makers.".lang("manage_maker_name")." = '".$filter['CarMaker']."'";
                if(isset($filter['DealerName']))
                    $status_query .= " AND dealer.".lang("manage_dealer_name")." LIKE '%".$filter['DealerName']."%'";
                if(isset($filter['SDName']))
                    $status_query .= " AND service_dealer.".lang("manage_sd_name")." LIKE '%".$filter['SDName']."%'";
                if(isset($filter['RosNo']))
                    $status_query .= " AND ros_no LIKE '%".$filter['RosNo']."%'";
                if(isset($filter['plate_no']))
                    $status_query .= " AND plate_no LIKE '%".$filter['plate_no']."%'";
                if(isset($filter['frame_no']))
                    $status_query .= " AND frame_no LIKE '%".$filter['frame_no']."%'";
                if(isset($filter['CreateFrom']))
                    $status_query .= " AND created_time >= '".$filter['CreateFrom']."'";
                if(isset($filter['CreateTo']))
                    $status_query .= " AND created_time <= '".$filter['CreateTo']." 23:59:59'";
                if(isset($filter['RepairFrom']))
                    $status_query .= " AND repair_date >= '".$filter['RepairFrom']."'";
                if(isset($filter['RepairTo']))
                    $status_query .= " AND repair_date <= '".$filter['RepairTo']."'";
                if(isset($filter['DealerKey']))
                    $status_query .= " AND (dealer.name_eng LIKE '%".$filter['DealerKey']."%' OR dealer.name_th LIKE '%".$filter['DealerKey']."%')";
                if(isset($filter['SDKey']))
                    $status_query .= " AND (service_dealer.name_eng LIKE '%".$filter['SDKey']."%' OR service_dealer.name_th LIKE '%".$filter['SDKey']."%')";
                
		$select = "CONCAT('<a href=''manage/ros/',ros_no,'''>',ros_no,'</a>') AS ros_no, ros_no AS raw_ros, dealer.".lang('manage_dealer_name')." AS dealer_".lang('manage_dealer_name').", part_types.".lang('manage_part_type_column')." AS part_type, car_model, warranty, created_time, repair_date, service_dealer.".lang("manage_sd_name").",car_makers.".lang("manage_maker_name").", ros_form.part_failure_pn AS part_no, ros_form.status_approve_date AS ApproveDate, ros_form.status_delivery_date AS Delivery, ros_form.status_core_return_date AS Core, status";
		$additional = " LIMIT $per_page OFFSET $offset";
		$query = "
			SELECT $select FROM ros_form
					LEFT JOIN service_dealer ON service_dealer.sd_id = ros_form.created_by
                    LEFT JOIN dealer ON dealer.dealer_id = ros_form.dealer_id 
                    LEFT JOIN part_types ON part_types.part_id = ros_form.part_id
					LEFT JOIN car_makers ON car_makers.maker_id = ros_form.maker_id 
					$status_query
                    ORDER BY created_time desc";
		$result = $this->db->query($query.$additional);

		if ($result->num_rows() >= 1) {
			$return['records'] = $result->result_array();
			$return['total_rows'] = $this->db->query($query)->num_rows();
		}


		if (!empty($return)) {
			return $return;
		} else{
			return FALSE;
		}
	}

	public function getproblems()
	{
		$select = 'id,'.lang('create_problems_column');
		$table = "car_problems";
		return $this->db->select($select)->get($table)->result_array();
	}

	public function getsdinfo($sd_id)
	{
		$select = "name_th,name_eng,address,phone,fax, primary_phone";
		$conds = array(
			"sd_id" => $sd_id
		);
		$table = "service_dealer";
		return $this->db->select($select)->where($conds)->get($table)->row_array();
	}

	public function getdealers($maker_id,$sd_id)
	{
//		$select = "dealer_id,".lang("create_dealer_column");
//		$conds = array(
//			"maker_id" => $maker_id,
//			"sd_id" => $sd_id
//		);
//		$table = "dealer";
//		return $this->db->select($select)->where($conds)->get($table)->result_array();
                
                $this->db->select("dealer.dealer_id, dealer.".lang("create_dealer_column"));
                $this->db->join('dealer_relationship', 'dealer_relationship.dealer_id = dealer.dealer_id');
                $this->db->order_by('dealer.name_eng', 'asc');
                return $this->db->get_where('dealer', array(
                    'dealer_relationship.sd_id' => $sd_id,
                    'dealer.maker_id'           => $maker_id
                ))->result_array();
	}

	public function create($PostData,$table)
	{
		//BEGIN THE MANUAL ADDING OF THE DATA
        $this->db->trans_begin();

		$this->db->insert($table,$PostData);

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

	public function getlast($table)
	{
		$result = $this->db->query("SELECT ros_no FROM $table ORDER BY id DESC LIMIT 1");

		if ($result->num_rows===1) {
			return $result->row()->ros_no;
		} else{
			return "DX-000-XX";
		}
	}

	public function getrosinfo($ros_no, $table)
	{
		$conds = array(
			"ros_no" => $ros_no,
		);
		return $this->db->where($conds)->get($table)->row_array();
	}

	public function update($PostData, $table)
	{
                    //BEGIN THE MANUAL ADDING OF THE DATA
            $this->db->trans_begin();

            $conds = array(
                    "ros_no" => $PostData['ros_no'],
                    "created_by" => $this->session->userdata("created_by")
            );

            $this->db->where($conds)->update($table,$PostData);

    //		$conds = array(
    //			"ros_no" => $PostData['ros_no']
    //		);
    //		
    //		$this->db->update($table,$PostData);

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

	public function deletedraft($ros_no)
	{
		$sd_id = $this->session->userdata("sd_id");
		$this->db->query("DELETE FROM ros_draft WHERE ros_no = '$ros_no' AND created_by = '$sd_id' LIMIT 1");
		return TRUE;
	}

	public function getcarmakers()
	{
		$select = "maker_id,".lang("create_car_maker_column");
		$table = "car_makers";
		return $this->db->select($select)->get($table)->result_array();
	}

	public function getcarmodels($PostData)
	{
		$table = $PostData['part_type']."_parts";
		$maker_id = $PostData['maker_id'];
		$query = "SELECT DISTINCT car_model FROM $table WHERE maker_id = '$maker_id'";

		return $this->db->query($query)->result_array();
	}

	public function getenginemodels($PostData)
	{
		$table = $PostData['part_type']."_parts";
		$maker_id = $PostData['maker_id'];
		$car_model = $PostData['car_model'];
		$query = "SELECT DISTINCT engine_model FROM $table WHERE maker_id = '$maker_id' AND car_model = '$car_model'";

		return $this->db->query($query)->result_array();
	}
        
    public function getfailuremodels($PostData)
	{
		$table = $PostData['part_type']."_parts";
		$maker_id = $PostData['maker_id'];
		$car_model = $PostData['car_model'];
                $engine_model = $PostData['engine_model'];
		$query = "SELECT DISTINCT car_maker_PN FROM $table WHERE maker_id = '$maker_id' AND car_model = '$car_model' AND engine_model = '$engine_model'";

		return $this->db->query($query)->result_array();
	}
        
    public function getexchangemodels($PostData)
	{
		$table = $PostData['part_type']."_parts";
		$maker_id = $PostData['maker_id'];
		$car_model = $PostData['car_model'];
                $engine_model = $PostData['engine_model'];
                $car_maker_PN = $PostData['car_maker_PN'];
		$query = "SELECT DISTINCT exchange_PN, part_code FROM $table WHERE maker_id = '$maker_id' AND car_model = '$car_model' AND engine_model = '$engine_model' AND car_maker_PN = '$car_maker_PN'";

		return $this->db->query($query)->result_array();
	}

	public function getwarranty($delivery_date,$maker_id)
	{
		$table = "warranty_condition";
		$select = "no_of_days, mileage";
		$delivery_date = date("Y-m-d",strtotime($delivery_date));
		$query = "SELECT $select FROM $table WHERE starting_date <= \"$delivery_date\" AND ending_date >= \"$delivery_date\" AND maker_id = \"$maker_id\" LIMIT 1";
		return $this->db->query($query)->row_array();
	}

	public function getnextstatuses($status)
	{
		$table = "status_master";
		$select = "next_status_dsd as next_status, editable_by_dsd";
		$conds = array(
			"status" => $status
		);
		return $query = $this->db->select($select)->where($conds)->get($table)->row_array();
	}
        
        public function getdealerinfo($dealerid){
            $this->db->select('name_th, location_th, primary_phone, fax');
            if($result = $this->db->get_where('dealer', array('dealer_id' => $dealerid)))
                return $result->row_array();
            else
                return false;
        }
        
        public function getallmakers(){
            return $this->db->select('maker_en, maker_th')->order_by('maker_en', 'asc')->get('car_makers')->result_array();
        }
        
        public function getallstatuses(){
            return $this->db->select('status')->order_by('status', 'asc')->get('status_master')->result_array();
        }
        
        public function getsomedealers($CarMaker){
            $this->db->select('maker_id');
            $this->db->where('maker_en', $CarMaker);
            $this->db->or_where('maker_th', $CarMaker);
            $maker = $this->db->get('car_makers')->row_array();
            return $this->db->select('name_eng, name_th')->order_by('name_eng', 'asc')->get_where('dealer', array('maker_id' => $maker['maker_id']))->result_array();
        }
        
        public function getalldealers(){
            return $this->db->select('name_eng, name_th')->order_by('name_eng', 'asc')->get('dealer')->result_array();
        }
        
        public function getallsd(){
            return $this->db->select('name_eng, name_th')->order_by('name_th', 'asc')->get('service_dealer')->result_array();
        }
        
        public function getsdid($ros){
            $this->db->select('created_by');
            $this->db->where('ros_no', $ros);
            return $this->db->get('ros_form')->row_array();
        }
        
        public function getstatuslog($ros){
            $this->db->select('status, created_time');
            $this->db->where('ros_no', $ros);
            return $this->db->get('status_log')->result_array();
        }
        
//        public function getdate($status, $ros){
//            $this->db->select('created_time');
//            if($result = $this->db->get_where('status_log', array('status' => $status, 'ros_no' => $ros))->row_array())
//                return $result;
//            else
//                return false;
//        }


    public function getparttypes($sd_id)
	{
		$select = "part_id, ".lang("manage_part_type_column").",table_prefix";
		$conds = array(
			"sd_id"
		);
		$query = "SELECT ".$select." FROM part_types
					  WHERE part_id IN(
						  SELECT part_id FROM sd_map_parts
						  WHERE sd_id = ?
					  )";
		return $this->db->query($query,array($sd_id))->result_array();
	}

	public function getcarproblems($PostData)
	{
		$select = 'id,'.lang('create_problems_column');
		$conds = array(
			"part_id" => $PostData['part_id']
		);
		$table = "car_problems";
		return $this->db->select($select)->where($conds)->get($table)->result_array();
	}

	public function getstatuses($current_status)
	{
		$select = "CONCAT(status,',',next_status_dsd ) AS status_string";
		$conds = array(
				"status" => $current_status
			);
		$table = "status_master";
		return $this->db->select($select,FALSE)->where($conds)->get($table)->row_array();
	}
}

/* End of file manage_model.php */
/* Location: ./application/models/manage_model.php */