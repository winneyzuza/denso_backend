<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Search_model extends CI_Model{
    
    public function __construct()
    {
        parent::__construct();
        $this->load->database('default');
    }
    
    public function search($SearchData){
        $this->db->like('name_eng', $SearchData['Name']);
        $this->db->or_like('name_th', $SearchData['Name']);
        if($result = $this->db->get($SearchData['Table'], $SearchData['Limit'], $SearchData['Offset'])->result_array())
            return $result;
        else
            return false;
    }
    
    public function searchdealer($SearchData){
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
        $this->db->like('name_eng', $SearchData['Name']);
        $this->db->or_like('name_th', $SearchData['Name']);
        $this->db->join('car_makers', 'car_makers.maker_id = '.$SearchData['Table'].'.maker_id');
        if($result = $this->db->get($SearchData['Table'], $SearchData['Limit'], $SearchData['Offset'])->result_array())
            return $result;
        else
            return false;
    }
    
    public function searchwhere($SearchData){
        if($result = $this->db->get_where($SearchData['Table'], array($SearchData['Field'] => $SearchData['Value'])))
            return $result->row_array();
        else
            return false;
    }

    public function valid_maker($maker_id)
    {
        $result = $this->db->select("maker_id")->where("maker_id", $maker_id)->get("car_makers");
        return ($result->num_rows()==1);
    }
    
    public function total($SearchData){
        $this->db->like('name_eng', $SearchData['Name']);
        $this->db->or_like('name_th', $SearchData['Name']);
        $this->db->from($SearchData['Table']);
        if($result = $this->db->count_all_results())
            return $result;
        else
            return false;
    }
    
    public function getmakers(){
        $this->db->select('maker_th, maker_en, maker_id');
        $this->db->order_by('maker_en', 'asc');
        return $this->db->get('car_makers')->result_array();
    }

    public function getmakerbyid($maker_id){
        $this->db->select('maker_th, maker_en, maker_id');
        $this->db->where("maker_id", $maker_id);
        $this->db->order_by('maker_en', 'asc');
        return $this->db->get('car_makers')->result_array();
    }
    
    public function getregion(){
        $this->db->select('region_code, region_name');
        $this->db->order_by('region_name', 'asc');
        return $this->db->get('region')->result_array();
    }
    
    public function getservicedealers()
    {
        $select = "sd_id,name_eng,name_th";
        return $this->db->select($select)->order_by('name_eng', 'asc')->get('service_dealer')->result_array();
    }
    
    public function getuser($id)
    {
        $this->db->select('username, password, salt, sd_id, full_name, user_group');
        return $this->db->get_where('user_auth', array('id' => $id))->row_array();
    }
    
}