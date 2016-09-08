<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Home extends CI_Controller {

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
			redirect('home?lang=en');
		}

		$this->lang->load('side',$lang);
		$this->lang->load('menu',$lang);
		$this->lang->load('home',$lang);

		$this->load->helper('language');
	}

	public function index()
	{
		$next = $this->input->get("next");
		$ExtraString = $next == ""?"":"&next=".urlencode($next);
		if ($this->input->post()) {
			$PostData = $this->input->post();
			if ($PostData['username'] == "" OR $PostData['password'] == "") {
				redirect("home?message=".urlencode(lang('home_invalid_login'))."&username=".urlencode($PostData['username']).$ExtraString);
				// echo "
				// 	<script>
				// 		alert('".lang('home_invalid_login')."');
				// 		window.location.href = '".base_url()."?username=".urlencode($PostData['username'])."';
				// 	</script>
				// ";
			} else{
				$this->load->model('admin_model');
				$data = $this->admin_model->login($PostData['username']);

				if (isset($data['username']) AND $data['username'] === $PostData['username'] AND $data['password']===hash("sha256", $PostData['password'].$data['salt'])) {
					$this->session->set_userdata(
						array(
							"username" => $data['username'],
							"sd_id" => $data['sd_id'],
							"logged_in" => TRUE
						)
					);
                    if (!$this->session->userdata('lang')) {
                            $this->session->set_userdata(array('lang' => 'th'));
                    }
					redirect($next);
				} else{
					// $PostData["username"] = "";
					// $PostData["password"] = "";
					redirect("home?message=".urlencode(lang('home_invalid_login'))."&username=".urlencode($PostData['username']).$ExtraString);
					// echo "
					// 	<script>
					// 		alert('".lang('home_invalid_login')."');
					// 		window.location.href = '".base_url()."?username=".urlencode($PostData['username'])."';
					// 	</script>
					// ";
				}
			}
		}
		// $data['controller'] = "home";
		$this->load->view('header_view');
		// $this->load->view('menu_view',$data);
		$this->load->view('side_bar_view');
		$this->load->view('home_view');
		$this->load->view('footer_view');
	}

}

/* End of file home.php */
/* Location: ./application/controllers/home.php */