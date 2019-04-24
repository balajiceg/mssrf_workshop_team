<?php 
if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Data_panel_model extends CI_Model{
    
    function __construct() {
        $this->load->database();
    }
    
    function get_code($id){
        $this->db->select('code,type,title,copy_disable');
        $this->db->where('id',$id);
        $res= $this->db->get('codes');
        $res=$res->result();
        return $res[0];
    }
    
}