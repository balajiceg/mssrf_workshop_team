<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class DataPanel extends CI_Controller {

    public function __construct()
    {
        parent::__construct();

        $this->load->database();
        $this->load->helper('url');

        $this->load->library('grocery_CRUD');
    }

   
    public function index()
    {  // $config['grocery_crud_default_per_page'] = 25;
        $crud = new grocery_CRUD();

        $crud->set_theme('datatables');
        $crud->set_table('codes');
        $crud->set_subject('Codes');
        //$crud->set_primary_key('id');
        $crud->columns('id','title','code','type','copy_disable');
        
        $crud->unset_texteditor('code');
        $crud->field_type('type','dropdown',array(2 => 'Js', 1 => 'Html'));
        $crud->field_type('copy_disable','dropdown',array(0 => 'False', 1 => 'True'));


        $output = $crud->render();
        $this->load->view('data_panel.php',$output);
    }

}
