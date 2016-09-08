<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Manage extends CI_Controller {

	public function __construct()
	{
		parent::__construct();

		if(!$this->session->userdata("logged_in")){
            redirect('home?next='.urlencode(uri_string()));
		}

		$lang = $this->input->get('lang');

        if ($lang == "") {
            $lang = $this->session->userdata('lang');
        }

        //Default language for new users.
        if($lang==""){
            $lang = "th";
        }

        $this->session->set_userdata(
            array(
                "lang" => $lang
            )
        );

        switch ($lang) {
            case 'en':
                $lang = 'english';
            break;
            
            case 'th':
                $lang = 'thai';
            break;

            // Invalid language provided.
            default:
                redirect(current_url().'?lang=th');
            break;
        }

		if (!file_exists('application/language/'.$lang.'/side_lang.php')) {
			redirect('manage?lang=en');
		}

		$this->lang->load('side',$lang);
		$this->lang->load('menu',$lang);
		$this->lang->load('manage',$lang);
		$this->lang->load('create',$lang);

		$this->load->helper('language');

		$this->load->model("manage_model");

		//Load the pagination class to display the results in the paged structure.
		$this->load->library('pagination');
	}

	public function index()
	{
		if ($this->session->userdata('logged_in')) {

			// $data['controller'] = "home";
			$this->load->view('header_view');
			// $this->load->view('menu_view',$data);
			$this->load->view('side_bar_view');
			$per_page = 10;
			$status = $this->input->get("status");
			if ($status == "" OR !$status) {
				$status = "all";
			}
			
			$filter = array();
			if(is_array($this->input->get())){
				$getinput = $this->input->get();
				unset($getinput['RosCheck']);
				foreach ($getinput as $k => $v){
					if($v){
						switch ($k){
							case 'CreateFrom':
							case 'CreateTo':
							case 'RepairFrom':
							case 'RepairTo':
							$filter[$k] = date("Y-m-d", strtotime($v));
							break;
							default:
							$filter[$k] = $v;
							break;
						}
					}
				}
			}
//                        else{
////                            $filter['CarMaker'] = '';
////                            $filter['DealerName'] = '';
////                            $filter['SDName'] = '';
////                            $filter['RosNo'] = '';
////                            $filter['CreateFrom'] = '';
////                            $filter['CreateTo'] = '';
////                            $filter['RepairFrom'] = '';
////                            $filter['RepairTo'] = '';
//                        }
			$geturl = '';
			foreach($filter as $k => $v){
				if($k != 'status')
					$geturl .= "&$k=$v";
			}
//                        $data['filter'] = $filter;
//                        echo "<pre>";
//                        print_r ($filter);
//                        echo "</pre>";
			$offset = $this->input->get("record");
			if ($offset == "" OR $offset%$per_page!=0) {
				$offset = 0;
			}
			$return = $this->manage_model->getrosfiltered($this->session->userdata("created_by"),$status,$offset, $per_page, $filter);
			$data['records'] = $return['records'];
//                        foreach ($return['records'] as $key => $value) {
//                            foreach ($value as $k => $v) {
//                                if($v == 'Approved'){
//                                    if($result = $this->manage_model->getdate($v, $data['records'][$key]['ros_no'])){
//                                        $data['records'][$key]['ApproveDate'] = $result['created_time'];
//                                    }
//                                    else{
//                                        $data['records'][$key]['ApproveDate'] = 'in else + '.$key.$v.$data['records'][$key]['ros_no'];
//                                    }
//                                }
//                            }
//                        }
			$total_rows = $return['total_rows'];

			//config the pagination library.
			$config['base_url'] = base_url().'index.php/manage?status='.$status.$geturl;
			$config['total_rows'] = $total_rows;
	        // $config['use_page_numbers'] = TRUE;
			$config['per_page'] = $per_page;
			$config['page_query_string'] = TRUE;
			$config['first_link'] = 'First';
			$config['last_link'] = 'Last';
			$config['query_string_segment'] = 'record';

	        //Initialize the pagination library with above configurations.
			$this->pagination->initialize($config);
			
			$data['table_makers'] = $this->manage_model->getallmakers();
			$data['table_statuses'] = $this->manage_model->getallstatuses();
			if($this->input->get('CarMaker'))
				$data['table_dealers'] = $this->manage_model->getsomedealers($this->input->get('CarMaker'));
			else
				$data['table_dealers'] = $this->manage_model->getalldealers();
			$data['table_sd'] = $this->manage_model->getallsd();


			$this->load->view('manage_view',$data);
			$this->load->view('footer_view');
		} else{
			redirect("home");
		}
	}

	public function ros($ros_no = "")
	{
		if ($this->session->userdata('logged_in')) {

			if ($this->input->post("ros_no")) {
				$PostData = $this->input->post();
				unset($PostData['part_code']);
				unset($PostData['draft']);
				unset($PostData['action']);
				unset($PostData['maker_name']);
				unset($PostData['dummy']);
				$table = "ros_form";
				$log_ros_no = $PostData['ros_no'];
				if(isset($PostData['status'])){
					$log_status = $PostData['status'];
					$allowed = FALSE;
					$current_status = $this->manage_model->statusbyros($log_ros_no);
					$statuses = $this->manage_model->getstatuses($current_status);
					if (!empty($statuses)) {
						$new_statuses = explode(",", $statuses['status_string']);
						foreach ($new_statuses as $key => $status) {
							$status = trim($status);
							if ($status != "") {
								if ($log_status == $status) {
									$allowed = TRUE;
								}
							}
						}
					}
					if (!$allowed) {
						$return['code'] = 0;
						$return['message'] = "Changing status not allowed. Please refresh and try again.";
						echo json_encode($return);
						die();
					}
				}
				foreach ($PostData as $key => $value) {
					if (!is_array($value)) {
						$PostData[$key] = $PostData[$key]==""?null:$PostData[$key];
					}
				}
				if(isset($PostData['delivery_date']))
					$PostData['delivery_date'] = date("Y-m-d", strtotime($PostData['delivery_date']));
				if(isset($PostData['repair_date']))
					$PostData['repair_date'] = date("Y-m-d", strtotime($PostData['repair_date']));
				$PostData['updated_time'] = date('Y-m-d H:i:s');
				$status = $this->manage_model->update($PostData,$table);
				if(isset($log_status))
					trace_status($log_ros_no, $log_status);
				echo json_encode(array(
					"code" => 1,
					"message" => "Updated ".$PostData['ros_no']."successfully."
					));
			} else{
				if ($ros_no!=="") {
					$table = "ros_form";
					$data['ros_info'] = $this->manage_model->getrosinfo($ros_no,$table);
					if (!empty($data['ros_info'])) {
						// echo "<pre>";print_r($data['ros_info']);echo "</pre>";
						$data['problems'] = $this->manage_model->getproblems();
						$data['sd_info'] = $this->manage_model->getsdinfo($data['ros_info']['created_by']);
						$data['car_makers'] = $this->manage_model->getcarmakers();
						$temp = $this->manage_model->getnextstatuses($data['ros_info']['status']);
						$data['next_statuses'] = "";
						$data['editable'] = $temp['editable_by_dsd'];
						if ($temp['next_status']!="") {
							$next_statuses = explode(",",$temp['next_status']);
							foreach ($next_statuses as $next_status) {
								$data['next_statuses'].="<option>$next_status</option>";
							}
						}
						$this->session->set_userdata("created_by",$data['ros_info']['created_by']);
						unset($data['ros_info']['id']);
//						unset($data['ros_info']['created_by']);
						unset($data['ros_info']['created_time']);
						unset($data['ros_info']['updated_time']);
						foreach ($data['ros_info'] as $key => $value) {
							if(!$value)
								unset($data['ros_info'][$key]);
						}
						if(isset($data['ros_info']['delivery_date']))
							$data['ros_info']['delivery_date'] = date("d-m-Y", strtotime($data['ros_info']['delivery_date']));
						if(isset($data['ros_info']['repair_date']))
							$data['ros_info']['repair_date'] = date("d-m-Y", strtotime($data['ros_info']['repair_date']));
						$data['part_types'] = $this->manage_model->getparttypes($this->session->userdata('created_by'));
						// $data['controller'] = "create";
						$this->load->view('header_view');
						// $this->load->view('menu_view',$data);
						$this->load->view('side_bar_view');
						$this->load->view('create_view',$data);
						$this->load->view('footer_view');
					} else{
						redirect("manage");
					}
				} else {
					redirect('manage');
				}
			}
		} else{
			redirect('home');
		}
	}

	public function getcarproblems()
	{
		if ($this->input->is_ajax_request()) {
			if ($this->session->userdata("logged_in")) {
				if ($this->input->post("part_id")) {
					$PostData = $this->input->post();
					$problems = $this->manage_model->getcarproblems($PostData);
					$return['code'] = 200;
					$return['message'] = "<option value=''>Select</option>";
					foreach ($problems as $key => $row) {
						$return['message'].="<option value='".$row['id']."'>".$row[lang('create_problems_column')]."</option>";
					}
					// $return['message'] = $problems;
				} else {
					$return['code'] = 0;
					$return['message'] = "Invalid request type.";
				}
			} else {
				$return['code'] = 0;
				$return['message'] = "Session expired or not logged in.";
			}
		} else {
			redirect("home");
		}

		echo json_encode($return);
	}

	public function getdealers()
	{
		if ($this->input->is_ajax_request()) {
			if ($this->session->userdata("logged_in")) {
				if ($this->input->post("maker_id")) {
					$maker_id = $this->input->post("maker_id");
					$dealers = $this->manage_model->getdealers($maker_id,$this->session->userdata("created_by"));
					if (isset($dealers) && !empty($dealers)) {
						$return['code'] = 1;
						$return['message'] = "<option selected value=''>".lang('create_general_select')."</option>";

						foreach ($dealers as $key => $value) {
							$return['message'].="<option value='".$value['dealer_id']."'>".$value[lang("create_dealer_column")]."</option>";
						}
					} else {
						$return['code'] = 0;
						$return['message'] = "No dealers found.";
					}
				} else {
					$return['code'] = 0;
					$return['message'] = "Invalid request type.";
				}
			} else {
				$return['code'] = 0;
				$return['message'] = "Session expired or not logged in.";
			}
		} else {
			$return['code'] = 0;
			$return['message'] = "NOT AJAX.";
		}

		echo json_encode($return);
	}

	public function getcarmodels()
	{
		if ($this->input->is_ajax_request()) {
			if ($this->session->userdata("logged_in")) {
				if ($this->input->post("maker_id")) {
					$PostData = $this->input->post();
					$models = $this->manage_model->getcarmodels($PostData);
					$return['code'] = 200;
					$return['message'] = "<option value=''>Select</option>";
					foreach ($models as $key => $row) {
						$return['message'].="<option value='".$row['car_model']."'>".$row['car_model']."</option>";
					}
					// $return['message'] = $models;
				} else {
					$return['code'] = 0;
					$return['message'] = "Invalid request type.";
				}
			} else {
				$return['code'] = 0;
				$return['message'] = "Session expired or not logged in.";
			}
		} else {
			$return['code'] = 0;
			$return['message'] = "NOT AJAX.";
		}

		echo json_encode($return);
	}

	public function getenginemodels()
	{
		if ($this->input->is_ajax_request()) {
			if ($this->session->userdata("logged_in")) {
				if ($this->input->post("maker_id")) {
					$PostData = $this->input->post();
					$models = $this->manage_model->getenginemodels($PostData);
					$return['code'] = 200;
					$return['message'] = "<option value=''>Select</option>";
					foreach ($models as $key => $row) {
						$return['message'].="<option value='".$row['engine_model']."'>".$row['engine_model']."</option>";
					}
					// $return['message'] = $models;
				} else {
					$return['code'] = 0;
					$return['message'] = "Invalid request type.";
				}
			} else {
				$return['code'] = 0;
				$return['message'] = "Session expired or not logged in.";
			}
		} else {
			redirect("home");
		}

		echo json_encode($return);
	}
	
	public function getfailuremodels()
	{
		if ($this->input->is_ajax_request()) {
			if ($this->session->userdata("logged_in")) {
				if ($this->input->post("engine_model")) {
					$PostData = $this->input->post();
					$models = $this->manage_model->getfailuremodels($PostData);
					$return['code'] = 200;
					$return['message'] = "<option value=''>Select</option>";
					foreach ($models as $key => $row) {
						$return['message'].="<option value='".$row['car_maker_PN']."'>".$row['car_maker_PN']."</option>";
					}
					// $return['message'] = $models;
				} else {
					$return['code'] = 0;
					$return['message'] = "Invalid request type.";
				}
			} else {
				$return['code'] = 0;
				$return['message'] = "Session expired or not logged in.";
			}
		} else {
			redirect("home");
		}

		echo json_encode($return);
	}
	
	public function getexchangemodels()
	{
		if ($this->input->is_ajax_request()) {
			if ($this->session->userdata("logged_in")) {
				if ($this->input->post("car_maker_PN")) {
					$PostData = $this->input->post();
					$models = $this->manage_model->getexchangemodels($PostData);
					$return['code'] = 200;
					foreach ($models as $key => $row) {
						$return['message']=$row['exchange_PN'];
						$return['part_code'] = $row['part_code'];
					}
					// $return['message'] = $models;
				} else {
					$return['code'] = 0;
					$return['message'] = "Invalid request type.";
				}
			} else {
				$return['code'] = 0;
				$return['message'] = "Session expired or not logged in.";
			}
		} else {
			redirect("home");
		}

		echo json_encode($return);
	}

	public function getwarranty()
	{
		if ($this->input->is_ajax_request()) {
			if ($this->session->userdata("logged_in")) {
				if ($this->input->post()) {
					$PostData = $this->input->post();
					if (!isset($PostData['delivery_date']) OR !isset($PostData['repair_date'])) {
						$return['code'] = 0;
						$return['message'] = "Incomplete info provided.";
					} else {
						$warranty_conditions = $this->manage_model->getwarranty($PostData['delivery_date'],$PostData['maker_id']);
						if (!empty($warranty_conditions) AND count($warranty_conditions) != 0) {
							$delivery_date = date_create($PostData['delivery_date']);
							$repair_date = date_create($PostData['repair_date']);
							date_add($delivery_date, date_interval_create_from_date_string((int)$warranty_conditions['no_of_days']." days"));
							if ($repair_date > $delivery_date OR $PostData['mileage'] > $warranty_conditions['mileage']) {
								$return['code'] = 1;
								$return['warranty'] = "out";
							} else{
								$return['code'] = 1;
								$return['warranty'] = "in";
							}
						} else {
							$return['code'] = 1;
							$return['warranty'] = "out";
							$return['message'] = "Warranty policy not set or is outdated.";
						}
					}
				} else {
					$return['code'] = 0;
					$return['message'] = "Invalid request type.";
				}
			} else {
				$return['code'] = 0;
				$return['message'] = "Session expired or not logged in.";
			}
		} else {
			redirect("home");
		}

		echo json_encode($return);
	}

	public function delete()
	{
		if ($this->input->is_ajax_request()) {
			if ($this->session->userdata("logged_in")) {
				if ($this->input->post("ros_no") AND $this->input->post("ros_no")!="") {
					$PostData = $this->input->post();
					$this->manage_model->deletedraft($PostData['ros_no']);
					$return['code'] = 1;
					$return['message'] = "Deleted successfully";
				} else {
					$return['code'] = 0;
					$return['message'] = "Invalid request type.";
				}
			} else {
				$return['code'] = 0;
				$return['message'] = "Session expired or not logged in.";
			}
		} else {
			redirect("home");
		}

		echo json_encode($return);
	}
	
	public function printform(){
		if($this->session->userdata('sd_id') == ''){
			$data['sd_info'] = $this->manage_model->getsdinfo($this->session->userdata('sd_id'));
		}
		else{
			$data['sd_info'] = $this->manage_model->getsdinfo($this->manage_model->getsdid($this->input->get('ros_no'))['created_by']);
		}
		if($this->input->get('dealer_id')){
			$data['dealer_info'] = $this->manage_model->getdealerinfo($this->input->get('dealer_id'));
		}
		if($this->input->get('ros_no')){
			$statuslog = $this->manage_model->getstatuslog($this->input->get('ros_no'));
			foreach ($statuslog as $key => $value) {
				$data[str_replace(' ', '', $value['status'])] = $value['created_time'];
			}
		}
//		$this->load->view('printform_view', $data);
                // for loading form of each part 
                // 1 & 2 pump and injector use same form (printform_view.php) ,
                // 3 for compressor(printform_compressor_view.php) and 
                // 4 for alternator(printform_alternator_view.php)
                $part_id = $this->input->get('part_id');
                if (intval($part_id) === 1 || intval($part_id) === 2) {
        //            echo "Pump & Injector";
                    $this->load->view('printform_view', $data);
                }
                else if (intval($part_id) === 3) {
        //            echo "Compressor";
                    $this->load->view('printform_compressor_view', $data);
                }
                else if (intval($part_id) === 4) {
        //            echo "Alternator";
                    $this->load->view('printform_alternator_view', $data);
                }
	}
	
	public function getsomedealers()
	{
		if ($this->input->is_ajax_request()) {
			if ($this->session->userdata("logged_in")) {
				if ($this->input->post("CarMaker")) {
					$PostData = $this->input->post("CarMaker");
					$dealers = $this->manage_model->getsomedealers($PostData);
					$return['code'] = 200;
					$return['message'] = "<option value=''>All</option>";
					foreach ($dealers as $key => $row) {
						$return['message'].="<option value='".$row[lang('manage_dealer_name')]."'>".$row[lang('manage_dealer_name')]."</option>";
					}
				} else {
					$dealers = $this->manage_model->getalldealers();
					$return['code'] = 200;
					$return['message'] = "<option value=''>All</option>";
					foreach ($dealers as $key => $row) {
						$return['message'].="<option value='".$row[lang('manage_dealer_name')]."'>".$row[lang('manage_dealer_name')]."</option>";
					}
				}
			} else {
				$return['code'] = 0;
				$return['message'] = "Session expired or not logged in.";
			}
		} else {
			redirect("home");
		}

		echo json_encode($return);
	}

	public function getstatuses()
	{
		if ($this->input->is_ajax_request()) {
			if ($this->session->userdata("logged_in")) {
				if ($this->input->post("status")) {
					$current_status = $this->input->post("status");
					$statuses = $this->manage_model->getstatuses($current_status);
					if (!empty($statuses)) {
						$return['code'] = 200;
						$return['message'] = "";
						$new_statuses = explode(",", $statuses['status_string']);
						foreach ($new_statuses as $key => $status) {
							$status = trim($status);
							if ($status != "") {
								$return['message'].="<option value='$status'>$status</option>";
							}
						}
					} else{
						$return['code'] = 500;
						$return['message'] = "Error 505: Internal server error";
					}
				} else {
					$return['code'] = 0;
					$return['message'] = "No status provided.";
				}
			} else {
				$return['code'] = 0;
				$return['message'] = "Session expired or not logged in.";
			}
		} else {
			redirect("home");
		}

		echo json_encode($return);
	}


	public function gettabs()
	{
		if ($this->input->is_ajax_request()) {
			if ($this->session->userdata("logged_in")) {
				if ($this->input->post("part_type")) {
					$PostData = $this->input->post();
					try {
						$return['tabs'] = $this->load->view($PostData['part_type']."_tabheading_view","",true);
						$return['code'] = 200;
						$return['tab_content'] = $this->load->view($PostData['part_type']."_content_view","",true);
					} catch (Exception $e) {
						$return['code'] = 500;
						$return['message'] = $e->getMessage();
					}
				} else {
					$return['code'] = 0;
					$return['message'] = "Invalid request type.";
				}
			} else {
				$return['code'] = 0;
				$return['message'] = "Session expired or not logged in.";
			}
		} else {
			redirect("home");
		}

		echo json_encode($return);
	}

}

/* End of file manage.php */
/* Location: ./application/controllers/manage.php */