<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Dealer extends CI_Controller {
    
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
            redirect('dealer/adddealer');
	}
        
        public function adddealer()
        {
            $this->load->model('add_model');
            $data['makers'] = $this->add_model->getmakers();
            $data['region'] = $this->add_model->getregion();
            $data['dealers'] = $this->add_model->getdealers();
            $this->load->view('header_view');
            $this->load->view('side_bar_view');
            $this->load->view('adddealer_view', $data);
            $this->load->view('footer_view');
        }
        
        public function add()
        {
            $this->load->model('add_model');
            $data['makers'] = $this->add_model->getmakers();
            $data['region'] = $this->add_model->getregion();
            $data['dealers'] = $this->add_model->getdealers();
            if($this->input->post()){
//                echo "<pre>";
//                print_r($this->input->post());
//                echo "</pre>";
                $this->form_validation->set_error_delimiters('', '\n\\');
                $this->form_validation->set_rules('MakerID','Car Maker','trim|max_length[5]|required');
                $this->form_validation->set_rules('Region','Region','trim|max_length[20]|required');
                $this->form_validation->set_rules('NameEnglish','Name English','trim');
                $this->form_validation->set_rules('NameThai','Name Thai','trim');
                $this->form_validation->set_rules('LocationEnglish','Location English','trim');
                $this->form_validation->set_rules('LocationThai','Location Thai','trim');
                $this->form_validation->set_rules('Address','Address','trim');
                $this->form_validation->set_rules('PrimaryPhone','Primary Phone','trim');
                $this->form_validation->set_rules('Phone','Phone','trim');
                $this->form_validation->set_rules('Fax','Fax','trim');
                if($this->form_validation->run() == FALSE){
                    $this->load->view('header_view');
                    $this->load->view('side_bar_view');
                    $this->load->view('adddealer_view', $data);
                    $this->load->view('footer_view');
                }
                else{
                    $AddDealerData = array(
                        'name_eng'      => $this->input->post('NameEnglish'),
                        'name_th'       => $this->input->post('NameThai'),
                        'maker_id'      => $this->input->post('MakerID'),
                        'location_en'   => $this->input->post('LocationEnglish'),
                        'location_th'   => $this->input->post('LocationThai'),
                        'region'        => $this->input->post('Region'),
                        'address'         => $this->input->post('Address'),
                        'primary_phone'      => $this->input->post('PrimaryPhone'),
                        'phone'       => $this->input->post('Phone'),
                        'fax'      => $this->input->post('Fax'),
                    );
                    if($this->add_model->getlast('dealer_id', 'dealer', $AddDealerData['maker_id'])){
                        $AddDealerData['dealer_id'] = $this->add_model->getlast('dealer_id', 'dealer', $AddDealerData['maker_id'])['dealer_id'] + 1;
                        $AddDealerData['dealer_id'] = str_pad($AddDealerData['dealer_id'], 8, 0, STR_PAD_LEFT);
                    }
                    else{
                        $AddDealerData['dealer_id'] = $AddDealerData['maker_id'].'00001';
                    }
                    if($this->add_model->adddealer($AddDealerData)){
                        redirect('dealer');
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
                redirect('dealer');
            }
        }
}

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */