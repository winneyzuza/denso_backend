<?php

class Add_model extends CI_Model{
    
    public function __construct()
    {
        parent::__construct();
        $this->load->database('default');
    }
    
    public function adddealer($AddDealerData){
        if($this->db->insert('dealer', $AddDealerData))
            return true;
        else
            return false;
    }
    
    public function addservicedealer($AddServiceDealerData){
        if($this->db->insert('service_dealer', $AddServiceDealerData))
            return true;
        else
            return false;
    }
    
    public function addcarmaker($AddCarMakerData){
        $AddCarMakerData['maker_id'] = str_pad($this->db->get('car_makers')->num_rows() + 1, 3, '0', STR_PAD_LEFT);
        if($this->db->insert('car_makers', $AddCarMakerData))
            return true;
        else
            return false;
    }
    
    public function getlast($field, $table, $maker_id){
        $this->db->select($field);
        $this->db->order_by($field, 'desc');
        if($maker_id){
            $this->db->where('dealer_id LIKE', "$maker_id%");
        }
        return $this->db->get($table, 1)->row_array();
    }
    
    public function getmakers(){
        $this->db->select('maker_th, maker_en, maker_id');
        $this->db->order_by('maker_en', 'asc');
        return $this->db->get('car_makers')->result_array();
    }
    
    public function getsd($region){
        $this->db->select('sd_id, name_eng, name_th');
        $this->db->where('region_code', $region);
        $this->db->order_by('name_eng', 'asc');
        return $this->db->get('service_dealer')->result_array();
    }
    
    public function getregion(){
        $this->db->select('region_code, region_name');
        $this->db->order_by('region_name', 'asc');
        return $this->db->get('region')->result_array();
    }
    
    public function getdealers(){
        $this->db->select(''
                . 'dealer.ID,'
                . 'dealer_id,'
                . 'name_eng,'
                . 'name_th,'
                . 'car_makers.'.lang("search_maker").','
                . 'location_en,'
                . 'location_th,'
                . 'region,'
                . 'address,'
                . 'primary_phone,'
                . 'phone,'
                . 'fax');
        $this->db->join('car_makers', 'car_makers.maker_id = dealer.maker_id');
        $this->db->order_by('id', 'DESC');
        if($result = $this->db->get('dealer', 10)->result_array())
            return $result;
        else
            return false;
    }
    
}
/*
class Login_model extends CI_Model{
    
    

    public function CheckUser($LoginData) {
        foreach ($LoginData as $key => $value) {

        $this->db->select('StaffInitial,StaffID');
          $result=$this->db->get_where('tblStaff',array("StaffPassword"=>$LoginData['StaffPassword']));
          if(($result->num_rows)==1){

                foreach($result->result_array() as $row)
                {
                    return $row['StaffID'];
                }
          }
          else
          {
                return FALSE;
          }
        }
    }
}
*/