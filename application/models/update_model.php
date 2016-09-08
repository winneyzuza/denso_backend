<?php

class Update_model extends CI_Model{
    
    public function updatedealer($UpdateData, $id, $table){
        $this->db->where('id', $id);
        if($this->db->update($table, $UpdateData))
            return true;
        else
            return false;
    }
    
}