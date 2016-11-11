<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Search extends CI_Controller {
    
        public function __construct()
	{
		parent::__construct();

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
                $this->lang->load('search',$lang);

		$this->load->helper('language');
                if (!$this->session->userdata('logged_in')){
                    redirect('home');
                }
	}
    
        public function index()
        {
            $this->load->view('header_view');
            $this->load->view('side_bar_view');
            $this->load->view('search_view');
            $this->load->view('footer_view');
        }

	public function searchdata()
        {
            if($this->input->post()){
//                echo "<pre>";
//                print_r($this->input->post());
//                echo "</pre>";
                $this->form_validation->set_error_delimiters('', '\n\\');
                $this->form_validation->set_rules('Name','Name','trim');
                $this->form_validation->set_rules('Table','Table','trim|required');
                if($this->form_validation->run() == FALSE){
                    $this->load->view('header_view');
                    $this->load->view('side_bar_view');
                    $this->load->view('search_view');
                    $this->load->view('footer_view');
                }
                else{
                    if($this->input->post('Table') == "Dealer"){
                        $table = 'dealer';
                        $viewname = 'dealer';
                    }
                    else{
                        $table = 'service_dealer';
                        $viewname = 'servicedealer';
                    }
//                    if($this->uri->segment(5))
//                        echo $offset = $this->uri->segment(5);
//                    else
                    $offset = 0;
                    $SearchData = array(
                        'Name'      => $this->input->post('Name'),
                        'Table'     => $table,
                        'Limit'     => 10,
                        'Offset'    => $offset
                    );
                    $this->load->model('search_model');
                    if($this->input->post('Table') == "Dealer"){
                        $result['result'] = $this->search_model->searchdealer($SearchData);
                    }
                    else{
                        $result['result'] = $this->search_model->search($SearchData);
                    }
                    if($result['result']){
//                        echo "<pre>";
//                        print_r($result);
//                        echo "</pre>";
                        $result['total'] = $this->search_model->total($SearchData);
                        $result['table'] = $SearchData['Table'];
                        $result['query'] = $SearchData['Name'];
                        
                        $this->load->library('pagination');
                        $config['base_url'] = base_url().'index.php/search/searchdata/'.$table.'/'.$result['query'];
                        $config['total_rows'] = $result['total'];
                        $config['per_page'] = $SearchData['Limit'];
                        $config['uri_segment'] = 5;
                        $config['num_links'] = 4;
                        $config['first_link'] = 'First';
                        $config['last_link'] = 'Last';
                        
                        $this->pagination->initialize($config); 

//                        echo $this->pagination->create_links();
                        $this->load->view('header_view');
                        $this->load->view('side_bar_view');
                        $this->load->view($viewname.'result_view', $result);
                        $this->load->view('footer_view');
                    }
                    else{
                        $data['query'] = $this->input->post('Name');
                        $this->load->view('header_view');
                        $this->load->view('side_bar_view');
                        $this->load->view($viewname.'result_view', $data);
                        $this->load->view('footer_view');
                    }
                }
            }
            else{
                if($this->uri->segment(3)){
                    if($this->uri->segment(3) == "dealer"){
                        $table = 'dealer';
                        $viewname = 'dealer';
                    }
                    else{
//                        echo $this->uri->segment(3);
                        $table = 'service_dealer';
                        $viewname = 'servicedealer';
                    }
                    if($this->uri->segment(5))
                        $offset = $this->uri->segment(5);
                    else
                        $offset = 0;
                    $table = $this->uri->segment(3);
                    
                    if(empty($this->uri->segment(5))){
                    	$keyWord = '';
                    	$offset = $this->uri->segment(4);
                    }else{
                    	$keyWord = $this->uri->segment(4);
                    }
                    $SearchData = array(
                        'Name'      => $keyWord,
                        'Table'     => $table,
                        'Limit'     => 10,
                        'Offset'    => $offset
                    );
                    $this->load->model('search_model');
                    if($result['result'] = $this->search_model->search($SearchData)){
//                        echo "<pre>";
//                        print_r($result);
//                        echo "</pre>";
                        $result['total'] = $this->search_model->total($SearchData);
                        $result['table'] = $SearchData['Table'];
                        $result['query'] = $SearchData['Name'];
                        
                        $this->load->library('pagination');
                        $config['base_url'] = base_url().'index.php/search/searchdata/'.$result['table'].'/'.$result['query'];
                        $config['total_rows'] = $result['total'];
                        $config['per_page'] = $SearchData['Limit'];
                        
                        if(empty($this->uri->segment(5))){
	                        $config['uri_segment'] = 4;
	                        $config['num_links'] = 4;
                        }else{
	                        $config['uri_segment'] = 5;
	                        $config['num_links'] = 4;
                        }
                        
                        $config['first_link'] = 'First';
                        $config['last_link'] = 'Last';
                        
                        $this->pagination->initialize($config);

//                        echo $this->pagination->create_links();
                        $this->load->view('header_view');
                        $this->load->view('side_bar_view');
                        $this->load->view($viewname.'result_view', $result);
                        $this->load->view('footer_view');
                    }
                    else{
                        $this->load->view('header_view');
                        $this->load->view('side_bar_view');
                        $this->load->view($viewname.'result_view');
                        $this->load->view('footer_view');
                    }
                }
                else{
                    $this->load->view('header_view');
                    $this->load->view('side_bar_view');
                    $this->load->view('search_view');
                    $this->load->view('footer_view');
                }
            }
        }
        
        public function injector(){
            $this->load->view('header_view');
            $this->load->view('side_bar_view');
            $this->load->view('injector_view');
            $this->load->view('footer_view');
        }
        
        public function pumpparts(){
            $this->load->view('header_view');
            $this->load->view('side_bar_view');
            $this->load->view('pumpparts_view');
            $this->load->view('footer_view');
        }
        
        public function alternator(){
            $this->load->view('header_view');
            $this->load->view('side_bar_view');
            $this->load->view('alternator_view');
            $this->load->view('footer_view');
        }
        
        public function compressor(){
            $this->load->view('header_view');
            $this->load->view('side_bar_view');
            $this->load->view('compressor_view');
            $this->load->view('footer_view');
        }
        
        public function starter(){
            $this->load->view('header_view');
            $this->load->view('side_bar_view');
            $this->load->view('starter_view');
            $this->load->view('footer_view');
        }
        
        public function users(){
            $this->load->model('search_model');
            $data['sd'] = $this->search_model->getservicedealers();
            $this->load->view('header_view');
            $this->load->view('side_bar_view');
            $this->load->view('users_view', $data);
            $this->load->view('footer_view');
        }
        
        public function deleteuser(){
            if($this->uri->segment('3')){
                $this->db->where('id', $this->uri->segment('3'));
                $this->db->where('username', $this->uri->segment('4'));
                $this->db->delete('user_auth');
                
                $this->load->model('search_model');
                $data['sd'] = $this->search_model->getservicedealers();
                $this->load->view('header_view');
                $this->load->view('side_bar_view');
                echo "<script>alert('Successfully deleted ".$this->uri->segment('4').".');</script>";
                $this->load->view('users_view', $data);
                $this->load->view('footer_view');
            }
            else
                redirect('search/users');
        }
        
        public function fetchinjcarmodel(){
            if(!empty($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) == 'xmlhttprequest') {
                $maker_id = $this->input->post('CarMaker');
                $this->db->select('car_model');
                $this->db->order_by('car_model', 'asc');
                $this->db->distinct();
                $result = $this->db->get_where('injector_parts', array('maker_id' => $maker_id))->result_array();
                echo json_encode($result);
            }
        }
        
        public function fetchinjenginemodel(){
            if(!empty($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) == 'xmlhttprequest') {
                $maker_id = $this->input->post('CarMaker');
                $car_model = $this->input->post('CarModel');
                $this->db->select('engine_model');
                $this->db->order_by('engine_model', 'asc');
                $this->db->distinct();
                $result = $this->db->get_where('injector_parts', array('maker_id' => $maker_id, 'car_model' => $car_model))->result_array();
                echo json_encode($result);
            }
        }
        
        public function fetchinjresults(){
            if(!empty($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) == 'xmlhttprequest') {
                $maker_id = $this->input->post('CarMaker');
                $car_model = $this->input->post('CarModel');
                $engine_model = $this->input->post('EngineModel');
                if($this->uri->segment(3))
                    $offset = $this->uri->segment(3);
                else
                    $offset = 0;
                $perpage = 10;
                
                $this->db->select('id, part_code, part_name, car_maker_PN, exchange_PN, start, finish');
                $result['result'] = $this->db->get_where('injector_parts', array('maker_id' => $maker_id, 'car_model' => $car_model, 'engine_model' => $engine_model), $perpage, $offset)->result_array();
                
                $this->db->where(array('maker_id' => $maker_id, 'car_model' => $car_model, 'engine_model' => $engine_model));
                $this->db->from('injector_parts');
                
                $result['total'] = $this->db->count_all_results();
                
                $this->load->library('pagination');
                $config['base_url'] = base_url().'index.php/search/fetchinjresults/';
                $config['total_rows'] = $result['total'];
                $config['per_page'] = $perpage;
                $config['uri_segment'] = 3;
                $config['num_links'] = 4;

                $this->pagination->initialize($config);
                
                $result['links'] = $this->pagination->create_links();
                $result['offset'] = $offset;
                
                echo json_encode($result);
            }
        }
        
        public function fetchcarmodel(){
            if(!empty($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) == 'xmlhttprequest') {
                $maker_id = $this->input->post('CarMaker');
                $this->db->select('car_model');
                $this->db->order_by('car_model', 'asc');
                $this->db->distinct();
                $result = $this->db->get_where('pump_parts', array('maker_id' => $maker_id))->result_array();
                echo json_encode($result);
            }
        }
        
        public function fetchenginemodel(){
            if(!empty($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) == 'xmlhttprequest') {
                $maker_id = $this->input->post('CarMaker');
                $car_model = $this->input->post('CarModel');
                $this->db->select('engine_model');
                $this->db->order_by('engine_model', 'asc');
                $this->db->distinct();
                $result = $this->db->get_where('pump_parts', array('maker_id' => $maker_id, 'car_model' => $car_model))->result_array();
                echo json_encode($result);
            }
        }
        
        public function fetchresults(){
            if(!empty($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) == 'xmlhttprequest') {
                $maker_id = $this->input->post('CarMaker');
                $car_model = $this->input->post('CarModel');
                $engine_model = $this->input->post('EngineModel');
                if($this->uri->segment(3))
                    $offset = $this->uri->segment(3);
                else
                    $offset = 0;
                $perpage = 10;
                
                $this->db->select('id, part_code, part_name, car_maker_PN, exchange_PN, start, finish');
                $result['result'] = $this->db->get_where('pump_parts', array('maker_id' => $maker_id, 'car_model' => $car_model, 'engine_model' => $engine_model), $perpage, $offset)->result_array();
                
                $this->db->where(array('maker_id' => $maker_id, 'car_model' => $car_model, 'engine_model' => $engine_model));
                $this->db->from('pump_parts');
                
                $result['total'] = $this->db->count_all_results();
                
                $this->load->library('pagination');
                $config['base_url'] = base_url().'index.php/search/fetchresults/';
                $config['total_rows'] = $result['total'];
                $config['per_page'] = $perpage;
                $config['uri_segment'] = 3;
                $config['num_links'] = 4;

                $this->pagination->initialize($config);
                
                $result['links'] = $this->pagination->create_links();
                $result['offset'] = $offset;
                
                echo json_encode($result);
            }
        }
        
        public function fetchacarmodel(){
            if(!empty($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) == 'xmlhttprequest') {
                $maker_id = $this->input->post('CarMaker');
                $this->db->select('car_model');
                $this->db->order_by('car_model', 'asc');
                $this->db->distinct();
                $result = $this->db->get_where('alternator_parts', array('maker_id' => $maker_id))->result_array();
                echo json_encode($result);
            }
        }
        
        public function fetchaenginemodel(){
            if(!empty($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) == 'xmlhttprequest') {
                $maker_id = $this->input->post('CarMaker');
                $car_model = $this->input->post('CarModel');
                $this->db->select('engine_model');
                $this->db->order_by('engine_model', 'asc');
                $this->db->distinct();
                $result = $this->db->get_where('alternator_parts', array('maker_id' => $maker_id, 'car_model' => $car_model))->result_array();
                echo json_encode($result);
            }
        }
        
        public function fetcharesults(){
            if(!empty($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) == 'xmlhttprequest') {
                $maker_id = $this->input->post('CarMaker');
                $car_model = $this->input->post('CarModel');
                $engine_model = $this->input->post('EngineModel');
                if($this->uri->segment(3))
                    $offset = $this->uri->segment(3);
                else
                    $offset = 0;
                $perpage = 10;
                
                $this->db->select('id, part_code, part_name, car_maker_PN, exchange_PN, start, finish');
                $result['result'] = $this->db->get_where('alternator_parts', array('maker_id' => $maker_id, 'car_model' => $car_model, 'engine_model' => $engine_model), $perpage, $offset)->result_array();
                
                $this->db->where(array('maker_id' => $maker_id, 'car_model' => $car_model, 'engine_model' => $engine_model));
                $this->db->from('alternator_parts');
                
                $result['total'] = $this->db->count_all_results();
                
                $this->load->library('pagination');
                $config['base_url'] = base_url().'index.php/search/fetcharesults/';
                $config['total_rows'] = $result['total'];
                $config['per_page'] = $perpage;
                $config['uri_segment'] = 3;
                $config['num_links'] = 4;

                $this->pagination->initialize($config);
                
                $result['links'] = $this->pagination->create_links();
                $result['offset'] = $offset;
                
                echo json_encode($result);
            }
        }
        
        public function fetchccarmodel(){
            if(!empty($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) == 'xmlhttprequest') {
                $maker_id = $this->input->post('CarMaker');
                $this->db->select('car_model');
                $this->db->order_by('car_model', 'asc');
                $this->db->distinct();
                $result = $this->db->get_where('compressor_parts', array('maker_id' => $maker_id))->result_array();
                echo json_encode($result);
            }
        }
        
        public function fetchcenginemodel(){
            if(!empty($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) == 'xmlhttprequest') {
                $maker_id = $this->input->post('CarMaker');
                $car_model = $this->input->post('CarModel');
                $this->db->select('engine_model');
                $this->db->order_by('engine_model', 'asc');
                $this->db->distinct();
                $result = $this->db->get_where('compressor_parts', array('maker_id' => $maker_id, 'car_model' => $car_model))->result_array();
                echo json_encode($result);
            }
        }
        
        public function fetchcresults(){
            if(!empty($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) == 'xmlhttprequest') {
                $maker_id = $this->input->post('CarMaker');
                $car_model = $this->input->post('CarModel');
                $engine_model = $this->input->post('EngineModel');
                if($this->uri->segment(3))
                    $offset = $this->uri->segment(3);
                else
                    $offset = 0;
                $perpage = 10;
                
                $this->db->select('id, part_code, part_name, car_maker_PN, exchange_PN, start, finish');
                $result['result'] = $this->db->get_where('compressor_parts', array('maker_id' => $maker_id, 'car_model' => $car_model, 'engine_model' => $engine_model), $perpage, $offset)->result_array();
                
                $this->db->where(array('maker_id' => $maker_id, 'car_model' => $car_model, 'engine_model' => $engine_model));
                $this->db->from('compressor_parts');
                
                $result['total'] = $this->db->count_all_results();
                
                $this->load->library('pagination');
                $config['base_url'] = base_url().'index.php/search/fetchcresults/';
                $config['total_rows'] = $result['total'];
                $config['per_page'] = $perpage;
                $config['uri_segment'] = 3;
                $config['num_links'] = 4;

                $this->pagination->initialize($config);
                
                $result['links'] = $this->pagination->create_links();
                $result['offset'] = $offset;
                
                echo json_encode($result);
            }
        }
        
        public function fetchscarmodel(){
            if(!empty($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) == 'xmlhttprequest') {
                $maker_id = $this->input->post('CarMaker');
                $this->db->select('car_model');
                $this->db->order_by('car_model', 'asc');
                $this->db->distinct();
                $result = $this->db->get_where('starter_parts', array('maker_id' => $maker_id))->result_array();
                echo json_encode($result);
            }
        }
        
        public function fetchsenginemodel(){
            if(!empty($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) == 'xmlhttprequest') {
                $maker_id = $this->input->post('CarMaker');
                $car_model = $this->input->post('CarModel');
                $this->db->select('engine_model');
                $this->db->order_by('engine_model', 'asc');
                $this->db->distinct();
                $result = $this->db->get_where('starter_parts', array('maker_id' => $maker_id, 'car_model' => $car_model))->result_array();
                echo json_encode($result);
            }
        }
        
        public function fetchsresults(){
            if(!empty($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) == 'xmlhttprequest') {
                $maker_id = $this->input->post('CarMaker');
                $car_model = $this->input->post('CarModel');
                $engine_model = $this->input->post('EngineModel');
                if($this->uri->segment(3))
                    $offset = $this->uri->segment(3);
                else
                    $offset = 0;
                $perpage = 10;
                
                $this->db->select('id, part_code, part_name, car_maker_PN, exchange_PN, start, finish');
                $result['result'] = $this->db->get_where('starter_parts', array('maker_id' => $maker_id, 'car_model' => $car_model, 'engine_model' => $engine_model), $perpage, $offset)->result_array();
                
                $this->db->where(array('maker_id' => $maker_id, 'car_model' => $car_model, 'engine_model' => $engine_model));
                $this->db->from('starter_parts');
                
                $result['total'] = $this->db->count_all_results();
                
                $this->load->library('pagination');
                $config['base_url'] = base_url().'index.php/search/fetchsresults/';
                $config['total_rows'] = $result['total'];
                $config['per_page'] = $perpage;
                $config['uri_segment'] = 3;
                $config['num_links'] = 4;

                $this->pagination->initialize($config);
                
                $result['links'] = $this->pagination->create_links();
                $result['offset'] = $offset;
                
                echo json_encode($result);
            }
        }
        
        public function fetchusers(){
            if(!empty($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) == 'xmlhttprequest') {
                $Username = $this->input->post('Username');
                $FullName = $this->input->post('FullName');
                $ServiceDealer = $this->input->post('ServiceDealer');
                if($this->uri->segment(3))
                    $offset = $this->uri->segment(3);
                else
                    $offset = 0;
                $perpage = 10;
                
                $this->db->select('user_auth.id, username, full_name, service_dealer.name_eng, service_dealer.name_th, user_group');
                $this->db->join('service_dealer', 'service_dealer.sd_id = user_auth.sd_id', 'left');
                if($Username)
                    $this->db->like('username', $Username, 'both');
                if($FullName)
                    $this->db->like('full_name', $FullName, 'both');
                if($ServiceDealer)
                    $this->db->like('user_auth.sd_id', $ServiceDealer, 'both');
                $result['result'] = $this->db->get('user_auth', $perpage, $offset)->result_array();
                if($Username)
                    $this->db->like('username', $Username, 'both');
                if($FullName)
                    $this->db->like('full_name', $FullName, 'both');
                if($ServiceDealer)
                    $this->db->like('user_auth.sd_id', $ServiceDealer, 'both');
                $this->db->from('user_auth');
                
                $result['total'] = $this->db->count_all_results();
                
                $this->load->library('pagination');
                $config['base_url'] = base_url().'index.php/search/fetchusers/';
                $config['total_rows'] = $result['total'];
                $config['per_page'] = $perpage;
                $config['uri_segment'] = 3;
                $config['num_links'] = 4;

                $this->pagination->initialize($config);
                
                $result['links'] = $this->pagination->create_links();
                $result['offset'] = $offset;
                
                echo json_encode($result);
            }
        }
        
        public function servicedealer(){
            $this->load->view('header_view');
            $this->load->view('side_bar_view');
            $this->load->view('searchsd_view');
            $this->load->view('footer_view');
        }
        
        public function fetchsd(){
            if(!empty($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) == 'xmlhttprequest') {
                $ServiceDealer = $this->input->post('ServiceDealer');
                if($this->uri->segment(3))
                    $offset = $this->uri->segment(3);
                else
                    $offset = 0;
                $perpage = 10;
                
                if($ServiceDealer){
                    $this->db->like('name_eng', $ServiceDealer);
                    $this->db->or_like('name_th', $ServiceDealer);
                }
                $result['result'] = $this->db->get('service_dealer', $perpage, $offset)->result_array();
                if($ServiceDealer){
                    $this->db->like('name_eng', $ServiceDealer);
                    $this->db->or_like('name_th', $ServiceDealer);
                }
                $this->db->from('service_dealer');
                
                $result['total'] = $this->db->count_all_results();
                
                $this->load->library('pagination');
                $config['base_url'] = base_url().'index.php/search/fetchsd/';
                $config['total_rows'] = $result['total'];
                $config['per_page'] = $perpage;
                $config['uri_segment'] = 3;
                $config['num_links'] = 4;

                $this->pagination->initialize($config);
                
                $result['links'] = $this->pagination->create_links();
                $result['offset'] = $offset;
                
                echo json_encode($result);
            }
        }
        
        public function fetchallcarmodel(){
        	if(!empty($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) == 'xmlhttprequest') {
        		$maker_id = $this->input->post('CarMaker');
        		
        		$query = "select distinct(model.car_model) from car_makers c
        					left join (
		        				select * from pump_parts pp
		        				union all
		        				select * from compressor_parts cp
		        				union all
		        				select * from injector_parts
		        				union all
		        				select * from alternator_parts) model
		        			on c.maker_id = model.maker_id
		        		where c.maker_id = '".$maker_id."'"." order by model.car_model asc";
        		
        		$result =  $this->db->query($query)->result_array();
        		echo json_encode($result);
        	}
        }
        
        public function carModelNotification(){
        	if(!empty($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) == 'xmlhttprequest') {
        		$maker_id = $this->input->post('CarMaker');
        		$car_model = $this->input->post('CarModel');
        		
        		if($this->uri->segment(3))
        			$offset = $this->uri->segment(3);
        		else
        			$offset = 0;
        		$perpage = 10;
        		
        		$this->db->select('cn.id as id,cm.maker_en as maker_en,cn.car_model as car_model');
        		$this->db->join('car_makers cm','cm.maker_id = cn.maker_id','left');
        		$this->db->order_by('cm.maker_en,cn.car_model', 'asc');
        		
        		if(empty($maker_id) && empty($car_model)){
        			$result['result'] = $this->db->get('car_model_notification cn', $perpage, $offset)->result_array();
        			$query = $this->db->get('car_model_notification cn')->result_array();
        		}elseif(empty($car_model)){
        			$result['result'] = $this->db->get_where('car_model_notification cn', array('cn.maker_id' => $maker_id),$perpage, $offset)->result_array();
        			$query = $this->db->get_where('car_model_notification cn', array('cn.maker_id' => $maker_id))->result_array();
        		}else{
        			$result['result'] = $this->db->get_where('car_model_notification cn', array('cn.maker_id' => $maker_id, 'cn.car_model' => $car_model),$perpage, $offset)->result_array();
        			$query = $this->db->get_where('car_model_notification cn', array('cn.maker_id' => $maker_id, 'cn.car_model' => $car_model))->result_array();
        		}
        		
        		//$result['total'] = $this->db->count_all_results('car_model_notification');
        		$result['total'] = count($query);
        		
        		$this->load->library('pagination');
        		$config['base_url'] = base_url().'index.php/search/carModelNotification/';
        		$config['total_rows'] = $result['total'];
        		$config['per_page'] = $perpage;
        		$config['uri_segment'] = 3;
        		$config['num_links'] = 4;
        		
        		$this->pagination->initialize($config);
        		
        		$result['links'] = $this->pagination->create_links();
        		$result['offset'] = $offset;
        		
        		echo json_encode($result);
        		
        	}
        }

        public function deleteCarModelNotification(){
        	
        	if($this->uri->segment('3')){
        		
        		$rawurldecodes = uri_string();
        		$rawurldecodes= urldecode($rawurldecodes);
        		$uris = 'search/deleteCarModelNotification/'.$this->uri->segment('3').'/';
        		$carModelDel = substr($rawurldecodes,strlen($uris),strlen($rawurldecodes)-strlen($uris));
        		
        		$this->db->where('id', $this->uri->segment('3'));
        		$this->db->where('car_model', $carModelDel);
        		$this->db->delete('car_model_notification');
        		$this->load->view('header_view');
        		$this->load->view('side_bar_view');
        		echo "<script>alert('Successfully deleted ".$carModelDel.".');</script>";
        		$this->load->view('car_model_notify_msg_view');
        		$this->load->view('footer_view');
        	}
        	else
        		redirect('search/carModelNotification');
        }
}

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */