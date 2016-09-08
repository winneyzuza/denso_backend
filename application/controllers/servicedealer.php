<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class ServiceDealer extends CI_Controller {
    
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

		$this->load->helper('language');
                if (!$this->session->userdata('logged_in')){
                    redirect('home');
                }
	}

	public function index()
	{
            redirect('servicedealer/addservicedealer');
	}
        
        public function addservicedealer()
        {
            $this->load->model('add_model');
            $data['region'] = $this->add_model->getregion();
            $this->load->view('header_view');
            $this->load->view('side_bar_view');
            $this->load->view('addservicedealer_view', $data);
            $this->load->view('footer_view');
        }
        
        public function add()
        {
            $this->load->model('add_model');
            $data['region'] = $this->add_model->getregion();
            if($this->input->post()){
//                echo "<pre>";
//                print_r($this->input->post());
//                echo "</pre>";
                $this->form_validation->set_error_delimiters('', '\n\\');
                $this->form_validation->set_rules('NameEnglish','Name English','trim|required');
                $this->form_validation->set_rules('NameThai','Name Thai','trim|required');
                $this->form_validation->set_rules('RegionCode','Region Code','trim|required|max_length[5]');
                $this->form_validation->set_rules('ServiceDealerClass','Service Dealer Class','trim|required|max_length[1]');
                $this->form_validation->set_rules('Address','Address','trim|required');
                $this->form_validation->set_rules('PrimaryPhone','Primary Phone','trim|required');
                $this->form_validation->set_rules('Phone','Phone','trim|required');
                $this->form_validation->set_rules('Fax','Fax','trim|required');
                $this->form_validation->set_rules('Owner','Owner','trim|required');
                $this->form_validation->set_rules('Email','Email','trim|required|valid_email');
                if($this->form_validation->run() == FALSE){
                    $this->load->view('header_view');
                    $this->load->view('side_bar_view');
                    $this->load->view('addservicedealer_view', $data);
                    $this->load->view('footer_view');
                }
                else{
                    $this->load->model('add_model');
                    if($this->add_model->getlast('sd_id', 'service_dealer', '')){
                        $sd_id = $this->add_model->getlast('sd_id', 'service_dealer', '')['sd_id'];
                        $sd_id = 'SD'.str_pad(substr($sd_id, 2, 4) + 1, 4, 0, STR_PAD_LEFT);
                    }
                    else{
                        $sd_id = 'SD0001';
                    }
                    $AddServiceDealerData = array(
                        'sd_id'         => $sd_id,
                        'name_eng'      => $this->input->post('NameEnglish'),
                        'name_th'       => $this->input->post('NameThai'),
                        'region_code'   => $this->input->post('RegionCode'),
                        'sd_class'      => $this->input->post('ServiceDealerClass'),
                        'address'   => $this->input->post('Address'),
                        'primary_phone'   => $this->input->post('PrimaryPhone'),
                        'phone'         => $this->input->post('Phone'),
                        'fax'         => $this->input->post('Fax'),
                        'owner'        => $this->input->post('Owner'),
                        'email'        => $this->input->post('Email'),
                    );
                    if($this->add_model->addservicedealer($AddServiceDealerData)){
                        $this->load->view('header_view');
                        $this->load->view('side_bar_view');
                        $this->load->view('addsuccess_view');
                        $this->load->view('footer_view');
                    }
                    else{
                        $data['error'] =  'Add error...';
                        $this->load->view('header_view');
                        $this->load->view('side_bar_view');
                        $this->load->view('error_view');
                        $this->load->view('footer_view');
                    }
                }
            }
            else{
                redirect('servicedealer');
            }
        }
}

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */