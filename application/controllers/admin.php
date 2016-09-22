<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Admin extends CI_Controller {

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
                
                $this->load->model('admin_model');
                if (!$this->session->userdata('logged_in')){
                    redirect('home');
                }
	}
        
        public function index(){
            $this->load->view('header_view');
            $this->load->view('side_bar_view');
            $this->load->view('adduser_view');
            $this->load->view('footer_view');
        }
        
        public function dealer(){
            if($this->input->post()){
                $this->load->library('form_validation');
                $this->form_validation->set_error_delimiters('', '\n\\');
                $this->form_validation->set_rules('Username', 'Username', 'trim|required|max_length[20]');
                $this->form_validation->set_rules('Password', 'Password', 'required');
                $this->form_validation->set_rules('Passconf', 'Password Confirmation', 'required|matches[Password]');
                $this->form_validation->set_rules('FullName', 'Full Name', 'trim|required|max_length[150]');
                if ($this->form_validation->run() == FALSE){
                    $this->load->view('header_view');
                    $this->load->view('side_bar_view');
                    $this->load->view('adduserd_view');
                    $this->load->view('footer_view');
                }
                else{
                    $PostData = array(
                        'username'  => $this->input->post('Username'),
                        'sd_id'     => 'denso',
                        'full_name' => $this->input->post('FullName'),
                        'user_group'    => 2,
                        'changed_time'  => date("Y-m-d H:i:s", time())
                    );
                    $PostData['salt'] = bin2hex(openssl_random_pseudo_bytes(32));
                    $PostData['password'] = hash("sha256", $this->input->post('Password').$PostData['salt']);
                    $PostData['created_by'] = $PostData['changed_by'] = $this->session->userdata('username');
                    if($this->admin_model->adduser($PostData)){
                        unset($PostData);
                        echo "<script>alert('Added successfully');window.location.href='".base_url()."index.php/admin/';</script>";
                    }
                }
            }
            else{
                $this->load->view('header_view');
                $this->load->view('side_bar_view');
                $this->load->view('adduserd_view');
                $this->load->view('footer_view');
            }
        }
        
        public function servicedealer(){
            $data['sd'] = $this->admin_model->getservicedealers();
            $data['role'] = $this->admin_model->getuserrole();    
            if($this->input->post()){
                $this->load->library('form_validation');
                $this->form_validation->set_error_delimiters('', '\n\\');
                $this->form_validation->set_rules('Username', 'Username', 'trim|required|max_length[20]');
                $this->form_validation->set_rules('Password', 'Password', 'required');
                $this->form_validation->set_rules('Passconf', 'Password Confirmation', 'required|matches[Password]');
                $this->form_validation->set_rules('ServiceDealer', 'Service Dealer', 'trim|required');
                $this->form_validation->set_rules('FullName', 'Full Name', 'trim|required|max_length[150]');
                $this->form_validation->set_rules('UserRole', 'User Role', 'trim|required');
                
                if ($this->form_validation->run() == FALSE){
                    $this->load->view('header_view');
                    $this->load->view('side_bar_view');
                    $this->load->view('addusersd_view', $data);
                    $this->load->view('footer_view');
                }
                else{
                    $PostData = array(
                        'username'  => $this->input->post('Username'),
                        'sd_id'     => $this->input->post('ServiceDealer'),
                        'full_name' => $this->input->post('FullName'),
                        'user_role' => $this->input->post('UserRole'),
                        'user_group'    => 1,
                        'changed_time'  => date("Y-m-d H:i:s", time())
                    );
                    $PostData['salt'] = bin2hex(openssl_random_pseudo_bytes(32));
                    $PostData['password'] = hash("sha256", $this->input->post('Password').$PostData['salt']);
                    $PostData['created_by'] = $PostData['changed_by'] = $this->session->userdata('username');
                    if($this->admin_model->adduser($PostData)){
                        unset($PostData);
                        echo "<script>alert('Added successfully');window.location.href='".base_url()."index.php/admin/';</script>";
                    }
                }
            }
            else{
                $this->load->view('header_view');
                $this->load->view('side_bar_view');
                $this->load->view('addusersd_view', $data);
                $this->load->view('footer_view');
            }
        }
        
}

/* End of file admin.php */
/* Location: ./application/controllers/admin.php */