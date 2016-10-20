<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Update extends CI_Controller {
    
    public function __construct()
    {
        parent::__construct();
        $this->load->helper("redirect");
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
                redirect(redirect_get(array("lang"=>"th")));
                // redirect(current_url().'?lang=th');
            break;
        }

        if (!file_exists('application/language/'.$lang.'/side_lang.php')) {
                redirect('manage?lang=en');
        }

        $this->lang->load('side',$lang);
        $this->lang->load('menu',$lang);
        $this->lang->load('manage',$lang);
        $this->lang->load('create',$lang);
        $this->lang->load('home',$lang);

        $this->load->helper('language');
        if (!$this->session->userdata('logged_in')){
            redirect('home');
        }
    }

	public function index()
        {
            redirect('home');
        }
        
        public function dealer(){
            if($id = $this->uri->segment(3)){
                $this->load->model('search_model');
                $SearchData = array(
                    'Field' => 'ID',
                    'Value' => $id,
                    'Table' => 'dealer'
                );
                $result = $this->search_model->searchwhere($SearchData);
//                    print_r($result);
                $renamed = array(
                    'DealerID'              =>$result['dealer_id'],
                    'NameEnglish'           =>$result['name_eng'],
                    'NameThai'              =>$result['name_th'],
                    'MakerID'               =>$result['maker_id'],
                    'LocationEnglish'       =>$result['location_en'],
                    'LocationThai'          =>$result['location_th'],
                    'Region'                =>$result['region'],
                    'Address'               => $result['address'],
                    'PrimaryPhone'          => $result['primary_phone'],
                    'Phone'                 => $result['phone'],
                    'Fax'                   => $result['fax'],
                );
                $renamed['makers'] = $this->search_model->getmakers();
                $renamed['region'] = $this->search_model->getregion();
//                echo $id;
                if($this->input->post()){
//                    echo "<pre>";
//                    print_r($this->input->post());
//                    echo "</pre>";
                    $this->form_validation->set_error_delimiters('', '\n\\');
                    $this->form_validation->set_rules('NameEnglish','Name English','trim|required');
                    $this->form_validation->set_rules('NameThai','Name Thai','trim');
                    $this->form_validation->set_rules('MakerID','Maker ID','trim|max_length[5]');
                    $this->form_validation->set_rules('LocationEnglish','Location English','trim');
                    $this->form_validation->set_rules('LocationThai','Location Thai','trim');
                    $this->form_validation->set_rules('Region','Region','trim|max_length[20]');
                    $this->form_validation->set_rules('Address','Address','trim');
                    $this->form_validation->set_rules('PrimaryPhone','Primary Phone','trim');
                    $this->form_validation->set_rules('Phone','Phone','trim');
                    $this->form_validation->set_rules('Fax','Fax','trim');
                    if($this->form_validation->run() == FALSE){
                        $this->load->view('header_view');
                        $this->load->view('side_bar_view');
                        $this->load->view('updatedealer_view', $renamed);
                        $this->load->view('footer_view');
                    }
                    else{
                        $UpdateDealerData = array(
                            'name_eng'      => $this->input->post('NameEnglish'),
                            'name_th'       => $this->input->post('NameThai'),
                            'maker_id'      => $this->input->post('MakerID'),
                            'location_en'   => $this->input->post('LocationEnglish'),
                            'location_th'   => $this->input->post('LocationThai'),
                            'region'        => $this->input->post('Region'),
                            'address'       => $this->input->post('Address'),
                            'primary_phone' => $this->input->post('PrimaryPhone'),
                            'phone'         => $this->input->post('Phone'),
                            'fax'           => $this->input->post('Fax')
                        );
                        $this->load->model('update_model');
                        if($this->update_model->updatedealer($UpdateDealerData, $id, 'dealer')){
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
                    $this->load->view('updatedealer_view', $renamed);
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
        
        public function servicedealer(){
            if($id = $this->uri->segment(3)){
//                echo $id;
                $this->load->model('search_model');
                $SearchData = array(
                    'Field' => 'ID',
                    'Value' => $id,
                    'Table' => 'service_dealer'
                );
                $result = $this->search_model->searchwhere($SearchData);
//                    print_r($result);
                $renamed = array(
                    'ServiceDealerID'       =>$result['sd_id'],
                    'NameEnglish'           =>$result['name_eng'],
                    'NameThai'              =>$result['name_th'],
                    'RegionCode'            =>$result['region_code'],
                    'ServiceDealerClass'    =>$result['sd_class'],
                    'Address'               =>$result['address'],
                    'PrimaryPhone'          =>$result['primary_phone'],
                    'Phone'                 =>$result['phone'],
                    'Fax'                   =>$result['fax'],
                    'Owner'                 =>$result['owner'],
                    'Email'                 =>$result['email'],
                );
                $renamed['region'] = $this->search_model->getregion();
                if($this->input->post()){
//                    echo "<pre>";
//                    print_r($this->input->post());
//                    echo "</pre>";
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
                        $this->load->view('updateservicedealer_view', $renamed);
                        $this->load->view('footer_view');
                    }
                    else{
                        $UpdateServiceDealerData = array(
                            'name_eng'      => $this->input->post('NameEnglish'),
                            'name_th'       => $this->input->post('NameThai'),
                            'region_code'   => $this->input->post('RegionCode'),
                            'sd_class'      => $this->input->post('ServiceDealerClass'),
                            'address'       => $this->input->post('Address'),
                            'primary_phone' => $this->input->post('PrimaryPhone'),
                            'phone'         => $this->input->post('Phone'),
                            'fax'           => $this->input->post('Fax'),
                            'owner'         => $this->input->post('Owner'),
                            'email'         => $this->input->post('Email'),
                        );
                        $this->load->model('update_model');
                        if($this->update_model->updatedealer($UpdateServiceDealerData, $id, 'service_dealer')){
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
                    $this->load->view('updateservicedealer_view', $renamed);
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
        
        public function injector(){
            if($id = $this->uri->segment(3)){
                $this->load->model('search_model');
                $SearchData = array(
                    'Field' => 'ID',
                    'Value' => $id,
                    'Table' => 'injector_parts'
                );
                $result = $this->search_model->searchwhere($SearchData);
                $SearchData = array(
                    'Field' => 'maker_id',
                    'Value' => $result['maker_id'],
                    'Table' => 'car_makers'
                );
                $CarMaker = $this->search_model->searchwhere($SearchData);
                $renamed = array(
                    'PartCode'      => $result['part_code'],
                    'MakerID'       => $CarMaker['maker_en'],
                    'CarModel'      => $result['car_model'],
                    'EngineModel'   => $result['engine_model'],
                    'PartName'      => $result['part_name'],
                    'CarMakerPN'    => $result['car_maker_PN'],
                    'ExchangePN'    => $result['exchange_PN'],
                    'Start'         => date("d-m-Y", strtotime($result['start'])),
                );
                if($result['finish']){
                    $renamed['Finish'] = date("d-m-Y", strtotime($result['finish']));
                }
                else{
                    $renamed['Finish'] = NULL;
                }
                if($this->input->post()){
                    $this->form_validation->set_error_delimiters('', '\n\\');
                    $this->form_validation->set_rules('EngineModel','Engine Model','trim|required|max_length[50]');
                    $this->form_validation->set_rules('PartName','Part Name','trim|required|max_length[50]');
                    $this->form_validation->set_rules('CarMakerPN','Car Maker P/N','trim|required|max_length[50]');
                    $this->form_validation->set_rules('ExchangePN','Exchange P/N','trim|required|max_length[50]');
                    $this->form_validation->set_rules('Start','Start','trim|required');
                    $this->form_validation->set_rules('Finish','Finish','trim');
                    if($this->form_validation->run() == FALSE){
                        $this->load->view('header_view');
                        $this->load->view('side_bar_view');
                        $this->load->view('updateinjector_view', $renamed);
                        $this->load->view('footer_view');
                    }
                    else{
                        $UpdateInjectorData = array(
                            'engine_model'  => $this->input->post('EngineModel'),
                            'part_name'     => $this->input->post('PartName'),
                            'car_maker_PN'  => $this->input->post('CarMakerPN'),
                            'exchange_PN'   => $this->input->post('ExchangePN'),
                            'start'         => date("Y-m-d", strtotime($this->input->post('Start'))),
                        );
                        if($this->input->post('Finish')){
                            $UpdateInjectorData['finish'] = date("Y-m-d", strtotime($this->input->post('Finish')));
                        }
                        else{
                            $UpdateInjectorData['finish'] = NULL;
                        }
                        $this->load->model('update_model');
                        if($this->update_model->updatedealer($UpdateInjectorData, $id, 'injector_parts')){
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
                    $this->load->view('updateinjector_view', $renamed);
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
        
        public function pumpparts(){
            if($id = $this->uri->segment(3)){
                $this->load->model('search_model');
                $SearchData = array(
                    'Field' => 'ID',
                    'Value' => $id,
                    'Table' => 'pump_parts'
                );
                $result = $this->search_model->searchwhere($SearchData);
                $SearchData = array(
                    'Field' => 'maker_id',
                    'Value' => $result['maker_id'],
                    'Table' => 'car_makers'
                );
                $CarMaker = $this->search_model->searchwhere($SearchData);
                $renamed = array(
                    'PartCode'      => $result['part_code'],
                    'MakerID'       => $CarMaker['maker_en'],
                    'CarModel'      => $result['car_model'],
                    'EngineModel'   => $result['engine_model'],
                    'PartName'      => $result['part_name'],
                    'CarMakerPN'    => $result['car_maker_PN'],
                    'ExchangePN'    => $result['exchange_PN'],
                    'Start'         => date("d-m-Y", strtotime($result['start'])),
                );
                if($result['finish']){
                    $renamed['Finish'] = date("d-m-Y", strtotime($result['finish']));
                }
                else{
                    $renamed['Finish'] = NULL;
                }
                if($this->input->post()){
                    $this->form_validation->set_error_delimiters('', '\n\\');
                    $this->form_validation->set_rules('EngineModel','Engine Model','trim|required|max_length[50]');
                    $this->form_validation->set_rules('PartName','Part Name','trim|required|max_length[50]');
                    $this->form_validation->set_rules('CarMakerPN','Car Maker P/N','trim|required|max_length[50]');
                    $this->form_validation->set_rules('ExchangePN','Exchange P/N','trim|required|max_length[50]');
                    $this->form_validation->set_rules('Start','Start','trim|required');
                    $this->form_validation->set_rules('Finish','Finish','trim');
                    if($this->form_validation->run() == FALSE){
                        $this->load->view('header_view');
                        $this->load->view('side_bar_view');
                        $this->load->view('updatepumpparts_view', $renamed);
                        $this->load->view('footer_view');
                    }
                    else{
                        $UpdatePumpPartsData = array(
                            'engine_model'  => $this->input->post('EngineModel'),
                            'part_name'     => $this->input->post('PartName'),
                            'car_maker_PN'  => $this->input->post('CarMakerPN'),
                            'exchange_PN'   => $this->input->post('ExchangePN'),
                            'start'         => date("Y-m-d", strtotime($this->input->post('Start'))),
                        );
                        if($this->input->post('Finish')){
                            $UpdatePumpPartsData['finish'] = date("Y-m-d", strtotime($this->input->post('Finish')));
                        }
                        else{
                            $UpdatePumpPartsData['finish'] = NULL;
                        }
                        $this->load->model('update_model');
                        if($this->update_model->updatedealer($UpdatePumpPartsData, $id, 'pump_parts')){
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
                    $this->load->view('updatepumpparts_view', $renamed);
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
        
        public function alternator(){
            if($id = $this->uri->segment(3)){
                $this->load->model('search_model');
                $SearchData = array(
                    'Field' => 'ID',
                    'Value' => $id,
                    'Table' => 'alternator_parts'
                );
                $result = $this->search_model->searchwhere($SearchData);
                $SearchData = array(
                    'Field' => 'maker_id',
                    'Value' => $result['maker_id'],
                    'Table' => 'car_makers'
                );
                $CarMaker = $this->search_model->searchwhere($SearchData);
                $renamed = array(
                    'PartCode'      => $result['part_code'],
                    'MakerID'       => $CarMaker['maker_en'],
                    'CarModel'      => $result['car_model'],
                    'EngineModel'   => $result['engine_model'],
                    'PartName'      => $result['part_name'],
                    'CarMakerPN'    => $result['car_maker_PN'],
                    'ExchangePN'    => $result['exchange_PN'],
                    'Start'         => date("d-m-Y", strtotime($result['start'])),
                );
                if($result['finish']){
                    $renamed['Finish'] = date("d-m-Y", strtotime($result['finish']));
                }
                else{
                    $renamed['Finish'] = NULL;
                }
                if($this->input->post()){
                    $this->form_validation->set_error_delimiters('', '\n\\');
                    $this->form_validation->set_rules('EngineModel','Engine Model','trim|required|max_length[50]');
                    $this->form_validation->set_rules('PartName','Part Name','trim|required|max_length[50]');
                    $this->form_validation->set_rules('CarMakerPN','Car Maker P/N','trim|required|max_length[50]');
                    $this->form_validation->set_rules('ExchangePN','Exchange P/N','trim|required|max_length[50]');
                    $this->form_validation->set_rules('Start','Start','trim');
                    $this->form_validation->set_rules('Finish','Finish','trim');
                    if($this->form_validation->run() == FALSE){
                        $this->load->view('header_view');
                        $this->load->view('side_bar_view');
                        $this->load->view('updatealternator_view', $renamed);
                        $this->load->view('footer_view');
                    }
                    else{
                        $UpdateAlternatorData = array(
                            'engine_model'  => $this->input->post('EngineModel'),
                            'part_name'     => $this->input->post('PartName'),
                            'car_maker_PN'  => $this->input->post('CarMakerPN'),
                            'exchange_PN'   => $this->input->post('ExchangePN'),
                        );
                        if($this->input->post('Start')){
                            $UpdateAlternatorData['start'] = date("Y-m-d", strtotime($this->input->post('Start')));
                        }
                        else{
                            $UpdateAlternatorData['start'] = NULL;
                        }
                        if($this->input->post('Finish')){
                            $UpdateAlternatorData['finish'] = date("Y-m-d", strtotime($this->input->post('Finish')));
                        }
                        else{
                            $UpdateAlternatorData['finish'] = NULL;
                        }
                        $this->load->model('update_model');
                        if($this->update_model->updatedealer($UpdateAlternatorData, $id, 'alternator_parts')){
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
                    $this->load->view('updatealternator_view', $renamed);
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
        
        public function compressor(){
            if($id = $this->uri->segment(3)){
                $this->load->model('search_model');
                $SearchData = array(
                    'Field' => 'ID',
                    'Value' => $id,
                    'Table' => 'compressor_parts'
                );
                $result = $this->search_model->searchwhere($SearchData);
                $SearchData = array(
                    'Field' => 'maker_id',
                    'Value' => $result['maker_id'],
                    'Table' => 'car_makers'
                );
                $CarMaker = $this->search_model->searchwhere($SearchData);
                $renamed = array(
                    'PartCode'      => $result['part_code'],
                    'MakerID'       => $CarMaker['maker_en'],
                    'CarModel'      => $result['car_model'],
                    'EngineModel'   => $result['engine_model'],
                    'PartName'      => $result['part_name'],
                    'CarMakerPN'    => $result['car_maker_PN'],
                    'ExchangePN'    => $result['exchange_PN'],
                    'Start'         => date("d-m-Y", strtotime($result['start'])),
                );
                if($result['finish']){
                    $renamed['Finish'] = date("d-m-Y", strtotime($result['finish']));
                }
                else{
                    $renamed['Finish'] = NULL;
                }
                if($this->input->post()){
                    $this->form_validation->set_error_delimiters('', '\n\\');
                    $this->form_validation->set_rules('EngineModel','Engine Model','trim|required|max_length[50]');
                    $this->form_validation->set_rules('PartName','Part Name','trim|required|max_length[50]');
                    $this->form_validation->set_rules('CarMakerPN','Car Maker P/N','trim|required|max_length[50]');
                    $this->form_validation->set_rules('ExchangePN','Exchange P/N','trim|required|max_length[50]');
                    $this->form_validation->set_rules('Start','Start','trim');
                    $this->form_validation->set_rules('Finish','Finish','trim');
                    if($this->form_validation->run() == FALSE){
                        $this->load->view('header_view');
                        $this->load->view('side_bar_view');
                        $this->load->view('updatecompressor_view', $renamed);
                        $this->load->view('footer_view');
                    }
                    else{
                        $UpdateCompressorData = array(
                            'engine_model'  => $this->input->post('EngineModel'),
                            'part_name'     => $this->input->post('PartName'),
                            'car_maker_PN'  => $this->input->post('CarMakerPN'),
                            'exchange_PN'   => $this->input->post('ExchangePN'),
                        );
                        if($this->input->post('Start')){
                            $UpdateCompressorData['start'] = date("Y-m-d", strtotime($this->input->post('Start')));
                        }
                        else{
                            $UpdateCompressorData['start'] = NULL;
                        }
                        if($this->input->post('Finish')){
                            $UpdateCompressorData['finish'] = date("Y-m-d", strtotime($this->input->post('Finish')));
                        }
                        else{
                            $UpdateCompressorData['finish'] = NULL;
                        }
                        $this->load->model('update_model');
                        if($this->update_model->updatedealer($UpdateCompressorData, $id, 'compressor_parts')){
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
                    $this->load->view('updatecompressor_view', $renamed);
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
        
        public function starter(){
            if($id = $this->uri->segment(3)){
                $this->load->model('search_model');
                $SearchData = array(
                    'Field' => 'ID',
                    'Value' => $id,
                    'Table' => 'starter_parts'
                );
                $result = $this->search_model->searchwhere($SearchData);
                $SearchData = array(
                    'Field' => 'maker_id',
                    'Value' => $result['maker_id'],
                    'Table' => 'car_makers'
                );
                $CarMaker = $this->search_model->searchwhere($SearchData);
                $renamed = array(
                    'PartCode'      => $result['part_code'],
                    'MakerID'       => $CarMaker['maker_en'],
                    'CarModel'      => $result['car_model'],
                    'EngineModel'   => $result['engine_model'],
                    'PartName'      => $result['part_name'],
                    'CarMakerPN'    => $result['car_maker_PN'],
                    'ExchangePN'    => $result['exchange_PN'],
                    'Start'         => date("d-m-Y", strtotime($result['start'])),
                );
                if($result['finish']){
                    $renamed['Finish'] = date("d-m-Y", strtotime($result['finish']));
                }
                else{
                    $renamed['Finish'] = NULL;
                }
                if($this->input->post()){
                    $this->form_validation->set_error_delimiters('', '\n\\');
                    $this->form_validation->set_rules('EngineModel','Engine Model','trim|required|max_length[50]');
                    $this->form_validation->set_rules('PartName','Part Name','trim|required|max_length[50]');
                    $this->form_validation->set_rules('CarMakerPN','Car Maker P/N','trim|required|max_length[50]');
                    $this->form_validation->set_rules('ExchangePN','Exchange P/N','trim|required|max_length[50]');
                    $this->form_validation->set_rules('Start','Start','trim');
                    $this->form_validation->set_rules('Finish','Finish','trim');
                    if($this->form_validation->run() == FALSE){
                        $this->load->view('header_view');
                        $this->load->view('side_bar_view');
                        $this->load->view('updatestarter_view', $renamed);
                        $this->load->view('footer_view');
                    }
                    else{
                        $UpdateStarterData = array(
                            'engine_model'  => $this->input->post('EngineModel'),
                            'part_name'     => $this->input->post('PartName'),
                            'car_maker_PN'  => $this->input->post('CarMakerPN'),
                            'exchange_PN'   => $this->input->post('ExchangePN'),
                        );
                        if($this->input->post('Start')){
                            $UpdateStarterData['start'] = date("Y-m-d", strtotime($this->input->post('Start')));
                        }
                        else{
                            $UpdateStarterData['start'] = NULL;
                        }
                        if($this->input->post('Finish')){
                            $UpdateStarterData['finish'] = date("Y-m-d", strtotime($this->input->post('Finish')));
                        }
                        else{
                            $UpdateStarterData['finish'] = NULL;
                        }
                        $this->load->model('update_model');
                        if($this->update_model->updatedealer($UpdateStarterData, $id, 'starter_parts')){
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
                    $this->load->view('updatestarter_view', $renamed);
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
        
        public function users(){
            if($id = $this->uri->segment(3)){
                $data = $this->db->where('id',$id)->get('user_auth')->row_array();
                $data['sd'] = $this->db->get("service_dealer")->result_array();
                if($this->input->post()){
                    $this->form_validation->set_error_delimiters('', '\n\\');
                    $this->form_validation->set_rules('Username', 'Username', 'trim|required|max_length[20]');
                    $this->form_validation->set_rules('Password', 'Password');
                    $this->form_validation->set_rules('Passconf', 'Password Confirmation', 'matches[Password]');
                    $this->form_validation->set_rules('ServiceDealer', 'Service Dealer');
                    $this->form_validation->set_rules('FullName', 'Full Name', 'trim|required|max_length[150]');
                    if($this->form_validation->run() == FALSE){
                        $this->load->view('header_view');
                        $this->load->view('side_bar_view');
                        $this->load->view('updateusers_view', $data);
                        $this->load->view('footer_view');
                    }
                    else{
                        $UpdateUserData = array(
                            'username'      => $this->input->post('Username'),
                            'full_name'     => $this->input->post('FullName'),
                            'last_password' => $data['password'],
                            'changed_by'    => $this->session->userdata('username'),
                            'changed_time'  => date("Y-m-d H:i:s")
                        );
                        if($this->input->post('ServiceDealer'))
                            $UpdateUserData['sd_id'] = $this->input->post('ServiceDealer');
                        if($this->input->post('Password'))
                            $UpdateUserData['password'] = hash("sha256", $this->input->post('Password').$data['salt']);
                        $this->load->model('update_model');
                        if($this->update_model->updatedealer($UpdateUserData, $id, 'user_auth')){
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
                    $this->load->view('updateusers_view', $data);
                    $this->load->view('footer_view');
                }
            }
            else{
                redirect('search/users');
            }
        }
        
        public function mapping(){
        	
        	$this->load->model('search_model');
        	$regions = $this->search_model->getregion();
        	
            if($id = $this->uri->segment(3)){
                $this->load->model('search_model');
                $maker_id = $this->input->get("maker_id");
                $data['maker_id'] = $maker_id;
                
                if($this->search_model->valid_maker($maker_id)){
                    $data['makers'] = "";
                    $makers = $this->search_model->getmakers();
                    foreach ($makers as $key => $row) {
                        $data['makers'].=("<option value='".redirect_get(array("maker_id"=>$row['maker_id']))."'").(($row['maker_id']==$maker_id)?(" selected"):("")).(">".$row[lang('manage_maker_name')]."</option>");
                    }
                } else {
                    redirect(redirect_get(array("maker_id"=>"001")));
                }
                
                $region = $this->input->get("region");
                if($regions){
                	$data['regions'] = "";
                	foreach ($regions as $value) {
                		$data['regions'].=("<option value='".redirect_get(array("region"=>$value['region_code']))."'").(($value['region_code']==$region)?(" selected"):("")).(">".$value[lang('region_name')]."</option>");                		
                	}
                }
                
                //sd info
//                echo '<pre>';
                $sd_info = $this->db->get_where('service_dealer', array('id' => $id))->row_array();
//                print_r($sd_info);
                
                //in relationship
                $this->db->join('dealer_relationship', 'dealer_relationship.dealer_id = dealer.dealer_id');
                $this->db->order_by('dealer.name_eng', 'asc');
                $taken = $this->db->get_where('dealer', array(
                    'dealer_relationship.sd_id' => $sd_info['sd_id'],
                    'dealer.maker_id'           => $maker_id
                ))->result_array();
//                echo 'inside = '.count($taken).'<br />';
                
                //not in relationship
                $temp = array();
                foreach($taken as $key => $value){
                    foreach ($value as $k => $v) {
                        if($k == 'dealer_id')
                            array_push($temp, $v);
                    }
                }
                if($temp)
                    $this->db->where_not_in('dealer_id', $temp);
                $this->db->order_by('dealer.name_eng', 'asc');
                
                if(!$region){
                	$region = $sd_info['region_code'];
                }
                $single = $this->db->get_where('dealer', array(
                    'region'            => $region,
                    'dealer.maker_id'   => $maker_id
                ))->result_array();
//                echo 'outside = '.count($single).'<br />';
                
                //total
                $complete = $this->db->get_where('dealer', array(
                    'region'                    => $region,
                    'dealer.maker_id'           => $maker_id
                ))->result_array();
//                echo 'total = '.count($complete);
                
//                echo '<br>';
//                print_r($taken);
//                echo '</pre>';
                
                $data['sd_info'] = $sd_info;
                $data['taken'] = $taken;
                $data['single'] = $single;
                $data['complete'] = $complete;
                $this->load->view('header_view');
                $this->load->view('side_bar_view');
                $this->load->view('updatemapping_view', $data);
                $this->load->view('footer_view');
            }
            else{
                redirect('search/servicedealer');
            }
        }
        
        public function breakup(){
            if ($this->input->is_ajax_request()) {
                if ($this->session->userdata("logged_in")) {
                    $this->db->where('sd_id', $this->input->post('sdid'));
                    $this->db->where_in('dealer_id', $this->input->post('taken'));
                    $this->db->delete('dealer_relationship');
                    $return['code'] = 1;
                    $return['message'] = $this->input->post();
                } else {
                    $return['code'] = 0;
                    $return['message'] = "Session expired or not logged in.";
                }
            } else {
                redirect("update/mapping");
            }

            echo json_encode($return);
        }
        
        public function unite(){
            if ($this->input->is_ajax_request()) {
                if ($this->session->userdata("logged_in")) {
                    if($this->input->post('single')){
                        $data = array();
                        foreach ($this->input->post('single') as $key => $value) {
                            array_push($data, array(
                                'dealer_id'     => $value,
                                'sd_id'         => $this->input->post('sdid'),
                                'maker_id'      => '001',
                                'created_by'    => $this->session->userdata('username')
                            ));
                        }
                        $this->db->insert_batch('dealer_relationship', $data);
                        $return['code'] = 1;
                        $return['message'] = $data;
                    }
                    else{
                        $return['code'] = 0;
                        $return['message'] = "No dealers to add.";
                    }
                } else {
                    $return['code'] = 0;
                    $return['message'] = "Session expired or not logged in.";
                }
            } else {
                redirect("update/mapping");
            }

            echo json_encode($return);
        }

        public function partmapping(){
            if($id = $this->uri->segment(3)){
                
                //sd info
//                echo '<pre>';
                $this->load->model('search_model');
                $sd_info = $this->db->get_where('service_dealer', array('id' => $id))->row_array();
//                print_r($sd_info);
                
                //in relationship
                $this->db->join('sd_map_parts', 'sd_map_parts.part_id = part_types.part_id');
                $this->db->order_by('part_types.name_eng', 'asc');
                $taken = $this->db->get_where('part_types', array(
                    'sd_map_parts.sd_id' => $sd_info['sd_id']
                ))->result_array();
//                echo 'inside = '.count($taken).'<br />';
                
                //not in relationship
                $temp = array();
                foreach($taken as $key => $value){
                    foreach ($value as $k => $v) {
                        if($k == 'part_id')
                            array_push($temp, $v);
                    }
                }
                if($temp)
                    $this->db->where_not_in('part_id', $temp);
                $this->db->order_by('part_types.name_eng', 'asc');
                $single = $this->db->get('part_types')->result_array();
//                echo 'outside = '.count($single).'<br />';
                
                //total
                $complete = $this->db->get('part_types')->result_array();
//                echo 'total = '.count($complete);
                
//                echo '<br>';
//                print_r($taken);
//                echo '</pre>';
                
                $data['sd_info'] = $sd_info;
                $data['taken'] = $taken;
                $data['single'] = $single;
                $data['complete'] = $complete;
                $this->load->view('header_view');
                $this->load->view('side_bar_view');
                $this->load->view('updatepartmapping_view', $data);
                $this->load->view('footer_view');
            }
            else{
                redirect('search/servicedealer');
            }
        }

        public function partbreakup(){
            if ($this->input->is_ajax_request()) {
                if ($this->session->userdata("logged_in")) {
                    $this->db->where('sd_id', $this->input->post('sdid'));
                    $this->db->where_in('part_id', $this->input->post('taken'));
                    $this->db->delete('sd_map_parts');
                    $return['code'] = 1;
                    $return['message'] = $this->input->post();
                } else {
                    $return['code'] = 0;
                    $return['message'] = "Session expired or not logged in.";
                }
            } else {
                redirect("update/mapping");
            }

            echo json_encode($return);
        }
        
        public function partunite(){
            if ($this->input->is_ajax_request()) {
                if ($this->session->userdata("logged_in")) {
                    if($this->input->post('single')){
                        $data = array();
                        foreach ($this->input->post('single') as $key => $value) {
                            array_push($data, array(
                                'part_id'     => $value,
                                'sd_id'         => $this->input->post('sdid'),
                                'created_by'    => $this->session->userdata('username')
                            ));
                        }
                        $this->db->insert_batch('sd_map_parts', $data);
                        $return['code'] = 1;
                        $return['message'] = $data;
                    }
                    else{
                        $return['code'] = 0;
                        $return['message'] = "No parts to add.";
                    }
                } else {
                    $return['code'] = 0;
                    $return['message'] = "Session expired or not logged in.";
                }
            } else {
                redirect("update/mapping");
            }

            echo json_encode($return);
        }
        
}