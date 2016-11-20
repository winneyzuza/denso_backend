<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Add extends CI_Controller {
    
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
		$this->lang->load('add',$lang);

		$this->load->helper('language');
        if (!$this->session->userdata('logged_in')){
            redirect('home');
        }
	}
    
        public function index()
        {
            $this->load->view('header_view');
            $this->load->view('side_bar_view');
            $this->load->view('addhome_view');
            $this->load->view('footer_view');
        }
        
        public function pumpparts(){
            if($this->input->post()){
//                    echo "<pre>";
//                    print_r($this->input->post());
//                    echo "</pre>";
                $this->form_validation->set_error_delimiters('', '\n\\');
                $this->form_validation->set_rules('PartCode','Part Code','trim|required|max_length[3]');
                $this->form_validation->set_rules('CarMaker','Car Maker','trim|required|max_length[5]');
                $this->form_validation->set_rules('CarModel','Car Model','trim|required|max_length[50]');
                $this->form_validation->set_rules('EngineModel','Engine Model','trim|required|max_length[50]');
                $this->form_validation->set_rules('PartName','Part Name','trim|required|max_length[50]');
                $this->form_validation->set_rules('CarMakerPN','Car Maker P/N','trim|required|max_length[50]');
                $this->form_validation->set_rules('ExchangePN','Exchange P/N','trim|required|max_length[50]');
                $this->form_validation->set_rules('Start','Start','trim|required');
                $this->form_validation->set_rules('Finish','Finish','trim');
                if($this->form_validation->run() == FALSE){
                    $this->load->view('header_view');
                    $this->load->view('side_bar_view');
                    $this->load->view('addpumpparts_view');
                    $this->load->view('footer_view');
                }
                else{
                    $AddPumpPartsData = array(
                        'part_code'  => $this->input->post('PartCode'),
                        'maker_id'  => $this->input->post('CarMaker'),
                        'car_model'  => $this->input->post('CarModel'),
                        'engine_model'  => $this->input->post('EngineModel'),
                        'part_name'     => $this->input->post('PartName'),
                        'car_maker_PN'  => $this->input->post('CarMakerPN'),
                        'exchange_PN'   => $this->input->post('ExchangePN'),
                        'start'         => date("Y-m-d", strtotime($this->input->post('Start'))),
                    );
                    if($this->input->post('Finish')){
                        $AddPumpPartsData['finish'] = date("Y-m-d", strtotime($this->input->post('Finish')));
                    }
                    else{
                        $AddPumpPartsData['finish'] = NULL;
                    }
                    if($this->db->insert('pump_parts', $AddPumpPartsData)){
                        $this->load->view('header_view');
                        $this->load->view('side_bar_view');
                        $this->load->view('addsuccess_view');
                        $this->load->view('footer_view');
                    }
                    else{
                        $data['error'] =  'Update error...';
                        $this->load->view('header_view');
                        $this->load->view('side_bar_view');
                        $this->load->view('error_view');
                        $this->load->view('footer_view');
                    }
                }
            }
            else{
                $this->load->view('header_view');
                $this->load->view('side_bar_view');
                $this->load->view('addpumpparts_view');
                $this->load->view('footer_view');
            }
        }
        
        public function injector(){
            if($this->input->post()){
//                    echo "<pre>";
//                    print_r($this->input->post());
//                    echo "</pre>";
                $this->form_validation->set_error_delimiters('', '\n\\');
                $this->form_validation->set_rules('PartCode','Part Code','trim|required|max_length[3]');
                $this->form_validation->set_rules('CarMaker','Car Maker','trim|required|max_length[5]');
                $this->form_validation->set_rules('CarModel','Car Model','trim|required|max_length[50]');
                $this->form_validation->set_rules('EngineModel','Engine Model','trim|required|max_length[50]');
                $this->form_validation->set_rules('PartName','Part Name','trim|required|max_length[50]');
                $this->form_validation->set_rules('CarMakerPN','Car Maker P/N','trim|required|max_length[50]');
                $this->form_validation->set_rules('ExchangePN','Exchange P/N','trim|required|max_length[50]');
                $this->form_validation->set_rules('Start','Start','trim|required');
                $this->form_validation->set_rules('Finish','Finish','trim');
                if($this->form_validation->run() == FALSE){
                    $this->load->view('header_view');
                    $this->load->view('side_bar_view');
                    $this->load->view('addinjector_view');
                    $this->load->view('footer_view');
                }
                else{
                    $AddInjectorData = array(
                        'part_code'  => $this->input->post('PartCode'),
                        'maker_id'  => $this->input->post('CarMaker'),
                        'car_model'  => $this->input->post('CarModel'),
                        'engine_model'  => $this->input->post('EngineModel'),
                        'part_name'     => $this->input->post('PartName'),
                        'car_maker_PN'  => $this->input->post('CarMakerPN'),
                        'exchange_PN'   => $this->input->post('ExchangePN'),
                        'start'         => date("Y-m-d", strtotime($this->input->post('Start'))),
                    );
                    if($this->input->post('Finish')){
                        $AddInjectorData['finish'] = date("Y-m-d", strtotime($this->input->post('Finish')));
                    }
                    else{
                        $AddInjectorData['finish'] = NULL;
                    }
                    if($this->db->insert('injector_parts', $AddInjectorData)){
                        $this->load->view('header_view');
                        $this->load->view('side_bar_view');
                        $this->load->view('addsuccess_view');
                        $this->load->view('footer_view');
                    }
                    else{
                        $data['error'] =  'Update error...';
                        $this->load->view('header_view');
                        $this->load->view('side_bar_view');
                        $this->load->view('error_view');
                        $this->load->view('footer_view');
                    }
                }
            }
            else{
                $this->load->view('header_view');
                $this->load->view('side_bar_view');
                $this->load->view('addinjector_view');
                $this->load->view('footer_view');
            }
        }
        
        public function alternator(){
            if($this->input->post()){
//                    echo "<pre>";
//                    print_r($this->input->post());
//                    echo "</pre>";
                $this->form_validation->set_error_delimiters('', '\n\\');
                $this->form_validation->set_rules('PartCode','Part Code','trim|required|max_length[3]');
                $this->form_validation->set_rules('CarMaker','Car Maker','trim|required|max_length[5]');
                $this->form_validation->set_rules('CarModel','Car Model','trim|required|max_length[50]');
                $this->form_validation->set_rules('EngineModel','Engine Model','trim|required|max_length[50]');
                $this->form_validation->set_rules('PartName','Part Name','trim|required|max_length[50]');
                $this->form_validation->set_rules('CarMakerPN','Car Maker P/N','trim|required|max_length[50]');
                $this->form_validation->set_rules('ExchangePN','Exchange P/N','trim|required|max_length[50]');
                $this->form_validation->set_rules('Start','Start','trim');
                $this->form_validation->set_rules('Finish','Finish','trim');
                if($this->form_validation->run() == FALSE){
                    $this->load->view('header_view');
                    $this->load->view('side_bar_view');
                    $this->load->view('addalternator_view');
                    $this->load->view('footer_view');
                }
                else{
                    $AddAlternatorData = array(
                        'part_code'  => $this->input->post('PartCode'),
                        'maker_id'  => $this->input->post('CarMaker'),
                        'car_model'  => $this->input->post('CarModel'),
                        'engine_model'  => $this->input->post('EngineModel'),
                        'part_name'     => $this->input->post('PartName'),
                        'car_maker_PN'  => $this->input->post('CarMakerPN'),
                        'exchange_PN'   => $this->input->post('ExchangePN'),
                    );
                    if($this->input->post('Start')){
                        $AddAlternatorData['start'] = date("Y-m-d", strtotime($this->input->post('Finish')));
                    }
                    else{
                        $AddAlternatorData['start'] = NULL;
                    }
                    if($this->input->post('Finish')){
                        $AddAlternatorData['finish'] = date("Y-m-d", strtotime($this->input->post('Finish')));
                    }
                    else{
                        $AddAlternatorData['finish'] = NULL;
                    }
                    if($this->db->insert('alternator_parts', $AddAlternatorData)){
                        $this->load->view('header_view');
                        $this->load->view('side_bar_view');
                        $this->load->view('addsuccess_view');
                        $this->load->view('footer_view');
                    }
                    else{
                        $data['error'] =  'Update error...';
                        $this->load->view('header_view');
                        $this->load->view('side_bar_view');
                        $this->load->view('error_view');
                        $this->load->view('footer_view');
                    }
                }
            }
            else{
                $this->load->view('header_view');
                $this->load->view('side_bar_view');
                $this->load->view('addalternator_view');
                $this->load->view('footer_view');
            }
        }
        
        public function compressor(){
            if($this->input->post()){
//                    echo "<pre>";
//                    print_r($this->input->post());
//                    echo "</pre>";
                $this->form_validation->set_error_delimiters('', '\n\\');
                $this->form_validation->set_rules('PartCode','Part Code','trim|required|max_length[3]');
                $this->form_validation->set_rules('CarMaker','Car Maker','trim|required|max_length[5]');
                $this->form_validation->set_rules('CarModel','Car Model','trim|required|max_length[50]');
                $this->form_validation->set_rules('EngineModel','Engine Model','trim|required|max_length[50]');
                $this->form_validation->set_rules('PartName','Part Name','trim|required|max_length[50]');
                $this->form_validation->set_rules('CarMakerPN','Car Maker P/N','trim|required|max_length[50]');
                $this->form_validation->set_rules('ExchangePN','Exchange P/N','trim|required|max_length[50]');
                $this->form_validation->set_rules('Start','Start','trim');
                $this->form_validation->set_rules('Finish','Finish','trim');
                if($this->form_validation->run() == FALSE){
                    $this->load->view('header_view');
                    $this->load->view('side_bar_view');
                    $this->load->view('addcompressor_view');
                    $this->load->view('footer_view');
                }
                else{
                    $AddCompressorData = array(
                        'part_code'  => $this->input->post('PartCode'),
                        'maker_id'  => $this->input->post('CarMaker'),
                        'car_model'  => $this->input->post('CarModel'),
                        'engine_model'  => $this->input->post('EngineModel'),
                        'part_name'     => $this->input->post('PartName'),
                        'car_maker_PN'  => $this->input->post('CarMakerPN'),
                        'exchange_PN'   => $this->input->post('ExchangePN'),
                    );
                    if($this->input->post('Start')){
                        $AddCompressorData['start'] = date("Y-m-d", strtotime($this->input->post('Finish')));
                    }
                    else{
                        $AddCompressorData['start'] = NULL;
                    }
                    if($this->input->post('Finish')){
                        $AddCompressorData['finish'] = date("Y-m-d", strtotime($this->input->post('Finish')));
                    }
                    else{
                        $AddCompressorData['finish'] = NULL;
                    }
                    if($this->db->insert('compressor_parts', $AddCompressorData)){
                        $this->load->view('header_view');
                        $this->load->view('side_bar_view');
                        $this->load->view('addsuccess_view');
                        $this->load->view('footer_view');
                    }
                    else{
                        $data['error'] =  'Update error...';
                        $this->load->view('header_view');
                        $this->load->view('side_bar_view');
                        $this->load->view('error_view');
                        $this->load->view('footer_view');
                    }
                }
            }
            else{
                $this->load->view('header_view');
                $this->load->view('side_bar_view');
                $this->load->view('addcompressor_view');
                $this->load->view('footer_view');
            }
        }
        
        public function starter(){
            if($this->input->post()){
//                    echo "<pre>";
//                    print_r($this->input->post());
//                    echo "</pre>";
                $this->form_validation->set_error_delimiters('', '\n\\');
                $this->form_validation->set_rules('PartCode','Part Code','trim|required|max_length[3]');
                $this->form_validation->set_rules('CarMaker','Car Maker','trim|required|max_length[5]');
                $this->form_validation->set_rules('CarModel','Car Model','trim|required|max_length[50]');
                $this->form_validation->set_rules('EngineModel','Engine Model','trim|required|max_length[50]');
                $this->form_validation->set_rules('PartName','Part Name','trim|required|max_length[50]');
                $this->form_validation->set_rules('CarMakerPN','Car Maker P/N','trim|required|max_length[50]');
                $this->form_validation->set_rules('ExchangePN','Exchange P/N','trim|required|max_length[50]');
                $this->form_validation->set_rules('Start','Start','trim');
                $this->form_validation->set_rules('Finish','Finish','trim');
                if($this->form_validation->run() == FALSE){
                    $this->load->view('header_view');
                    $this->load->view('side_bar_view');
                    $this->load->view('addstarter_view');
                    $this->load->view('footer_view');
                }
                else{
                    $AddStarterData = array(
                        'part_code'  => $this->input->post('PartCode'),
                        'maker_id'  => $this->input->post('CarMaker'),
                        'car_model'  => $this->input->post('CarModel'),
                        'engine_model'  => $this->input->post('EngineModel'),
                        'part_name'     => $this->input->post('PartName'),
                        'car_maker_PN'  => $this->input->post('CarMakerPN'),
                        'exchange_PN'   => $this->input->post('ExchangePN'),
                    );
                    if($this->input->post('Start')){
                        $AddStarterData['start'] = date("Y-m-d", strtotime($this->input->post('Finish')));
                    }
                    else{
                        $AddStarterData['start'] = NULL;
                    }
                    if($this->input->post('Finish')){
                        $AddStarterData['finish'] = date("Y-m-d", strtotime($this->input->post('Finish')));
                    }
                    else{
                        $AddStarterData['finish'] = NULL;
                    }
                    if($this->db->insert('starter_parts', $AddStarterData)){
                        $this->load->view('header_view');
                        $this->load->view('side_bar_view');
                        $this->load->view('addsuccess_view');
                        $this->load->view('footer_view');
                    }
                    else{
                        $data['error'] =  'Update error...';
                        $this->load->view('header_view');
                        $this->load->view('side_bar_view');
                        $this->load->view('error_view');
                        $this->load->view('footer_view');
                    }
                }
            }
            else{
                $this->load->view('header_view');
                $this->load->view('side_bar_view');
                $this->load->view('addstarter_view');
                $this->load->view('footer_view');
            }
        }
        
	public function carModelNotification() {
		
		$data['addResult'] =  '';
		
		if ($this->input->post ()) {
            $this->form_validation->set_rules('CarMaker','Car Maker','trim|required');
			$this->form_validation->set_rules('CarModel','Car Model','trim|required');
			$this->form_validation->set_rules('EmailGroup','Email Group','trim|required');
			if ($this->form_validation->run () == FALSE) {
				$this->load->view ( 'header_view' );
				$this->load->view ( 'side_bar_view' );
				$this->load->view ( 'car_model_notify_msg_view' );
				$this->load->view ( 'footer_view' );
			} else {
				$AddCarModelNotificationData = array (
						'maker_id' => $this->input->post ( 'CarMaker' ),
						'car_model' => $this->input->post ( 'CarModel' ),
						'email_group' => $this->input->post ( 'EmailGroup' ) 
				);
				
				if ($this->db->insert ( 'car_model_notification', $AddCarModelNotificationData )) {
					$this->session->set_userdata(array('addResult' => 'add_successful'));
					$this->load->view ( 'header_view' );
					$this->load->view ( 'side_bar_view' );
					$this->load->view ( 'car_model_notify_msg_view' );
					$this->load->view ( 'footer_view' );
				} else {
					$this->session->set_userdata(array('addResult' => 'update_error'));
					$data ['error'] = 'Update error...';
					$this->load->view ( 'header_view' );
					$this->load->view ( 'side_bar_view' );
					$this->load->view ( 'error_view' );
					$this->load->view ( 'footer_view' );
				}
			}
		} else {
			$this->load->view ( 'header_view' );
			$this->load->view ( 'side_bar_view' );
			$this->load->view ( 'car_model_notify_msg_view' );
			$this->load->view ( 'footer_view' );
		}
	}     

	public function getEmailTemplate() {

		$data['email_template_info'] = "";
		$this->db->select('*');
		$data['email_template_info'] = $this->db->get('email_template')->row_array();
		
		$this->load->view ( 'header_view' );
		$this->load->view ( 'side_bar_view' );
		$this->load->view ( 'email_template_view',$data);
		$this->load->view ( 'footer_view' );
	}
	
	public function doUpdateEmailError() {
			
		$data ['error'] = 'Update error...';
		$this->load->view ( 'header_view' );
		$this->load->view ( 'side_bar_view' );
		$this->load->view ( 'error_view' );
		$this->load->view ( 'footer_view' );
	
	}
	
	public function addEmailTemplate() {
		
		$data['addResult'] =  '';
		
		$email_id = $this->input->post('email_id');
		
		if ($this->input->post ()) {
			$this->form_validation->set_rules('Subject','Subject','trim|required');
			$this->form_validation->set_rules('Sender','Sender','trim|required');
			$this->form_validation->set_rules('EmailContent','Email Content','trim|required');
			if ($this->form_validation->run () == FALSE) {
				$this->getEmailTemplate();
			} else {
				$AddEmailTemplateData = array (
						'subject' => $this->input->post ( 'Subject' ),
						'sender' => $this->input->post ( 'Sender' ),
						'email_content' => $this->input->post ( 'EmailContent' )
				);
		
				if(isset($email_id) && !empty($email_id)){
					
					$this->db->where ( 'email_id', $email_id );
					
					if ($this->db->update ( 'email_template' , $AddEmailTemplateData )) {
						$this->session->set_userdata(array('addResult' => 'add_successful'));
						$this->getEmailTemplate();
					} else {
						$this->session->set_userdata(array('addResult' => 'update_error'));
						$this->doUpdateEmailError();
					}
				}else {
					if ($this->db->insert ( 'email_template', $AddEmailTemplateData )) {
						$this->session->set_userdata(array('addResult' => 'add_successful'));
						$this->getEmailTemplate();
					} else {
						$this->session->set_userdata(array('addResult' => 'update_error'));
						$this->doUpdateEmailError();
					}
				}
			}
		} else {
			$this->getEmailTemplate();
		}
	}        
}

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */