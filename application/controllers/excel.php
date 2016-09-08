<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

//http://arjunphp.com/how-to-use-phpexcel-with-codeigniter/
//however can't name it Excel.php (library) for some reason...use another name
//THUNDER :D

class Excel extends CI_Controller {

    public function __construct()
    {
        parent::__construct();

        if(!$this->session->userdata("logged_in")){
            redirect('home?next='.urlencode(uri_string()));
        }

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

        $this->lang->load('excel',$lang);

        $this->load->helper('language');
    }

    public function index()
    {
        //load our new PHPExcel library
        $this->load->library('toexcel');
        //activate worksheet number 1
        $this->toexcel->setActiveSheetIndex(0);
        //name the worksheet
        $this->toexcel->getActiveSheet()->setTitle('test worksheet');
        //set cell A1 content with some text
        $this->toexcel->getActiveSheet()->setCellValue('A1', 'This is just some text value');
        //change the font size
        $this->toexcel->getActiveSheet()->getStyle('A1')->getFont()->setSize(20);
        //make the font become bold
        $this->toexcel->getActiveSheet()->getStyle('A1')->getFont()->setBold(true);
        //merge cell A1 until D1
        $this->toexcel->getActiveSheet()->mergeCells('A1:D1');
        //set aligment to center for that merged cell (A1 to D1)
        $this->toexcel->getActiveSheet()->getStyle('A1')->getAlignment()->setHorizontal(PHPExcel_Style_Alignment::HORIZONTAL_CENTER);
        $filename='just_some_random_name.xls'; //save our workbook as this file name
        header('Content-Type: application/vnd.ms-excel'); //mime type
        header('Content-Disposition: attachment;filename="'.$filename.'"'); //tell browser what's the file name
        header('Cache-Control: max-age=0'); //no cache

        //save it to Excel5 format (excel 2003 .XLS file), change this to 'Excel2007' (and adjust the filename extension, also the header mime type)
        //if you want to save it as .XLSX Excel 2007 format
        $objWriter = PHPExcel_IOFactory::createWriter($this->toexcel, 'Excel5');  
        //force user to download the Excel file without writing it to server's HD
        $objWriter->save('php://output');
    }
        
    public function pumpparts()
    {
        //load our new PHPExcel library
        $this->load->library('toexcel');
        //activate worksheet number 1
        $this->toexcel->setActiveSheetIndex(0);
        //name the worksheet
        $this->toexcel->getActiveSheet()->setTitle('Pump Parts');
        //set cell A1 content with some text
        
        $this->db->select('pump_parts.id, pump_parts.part_code, car_makers.maker_en, pump_parts.car_model, pump_parts.engine_model, pump_parts.part_name, pump_parts.car_maker_PN, pump_parts.exchange_PN, pump_parts.start, pump_parts.finish');
        $this->db->join('car_makers', 'car_makers.maker_id = pump_parts.maker_id');
        $this->db->order_by("id", "asc"); 
        $result = $this->db->get('pump_parts')->result_array();
        $rows = $this->db->get('pump_parts')->num_rows();
        $columns = count($result[0]);
        $X = 'A';
        $Y = '1';
        foreach ($result[0] as $key => $value){
            $this->toexcel->getActiveSheet()->setCellValue($X.$Y, $key);
            $this->toexcel->getActiveSheet()->getStyle($X.$Y)->getFont()->setBold(true);
            $X++;
        }
        $X = 'A';
        $Y = '2';
        foreach ($result as $key){
            foreach ($key as $k => $v){
                $this->toexcel->getActiveSheet()->setCellValue($X++.$Y, $v);
            }
            $Y++;
            $X = 'A';
        }
        // //change the font size
        // $this->toexcel->getActiveSheet()->getStyle('A1')->getFont()->setSize(20);
        // //make the font become bold
        // $this->toexcel->getActiveSheet()->getStyle('A1')->getFont()->setBold(true);
        // //merge cell A1 until D1
        // $this->toexcel->getActiveSheet()->mergeCells('A1:D1');
        // //set aligment to center for that merged cell (A1 to D1)
        // $this->toexcel->getActiveSheet()->getStyle('A1')->getAlignment()->setHorizontal(PHPExcel_Style_Alignment::HORIZONTAL_CENTER);
        $filename='pump_parts.xls'; //save our workbook as this file name
        header('Content-Type: application/vnd.ms-excel'); //mime type
        header('Content-Disposition: attachment;filename="'.$filename.'"'); //tell browser what's the file name
        header('Cache-Control: max-age=0'); //no cache

        //save it to Excel5 format (excel 2003 .XLS file), change this to 'Excel2007' (and adjust the filename extension, also the header mime type)
        //if you want to save it as .XLSX Excel 2007 format
        $objWriter = PHPExcel_IOFactory::createWriter($this->toexcel, 'Excel5');  
        //force user to download the Excel file without writing it to server's HD
        $objWriter->save('php://output');
//            echo 'done';
    }
        
    public function filtered()
    {
        //load our new PHPExcel library
        $this->load->library('toexcel');
        //activate worksheet number 1
        $this->toexcel->setActiveSheetIndex(0);
        //name the worksheet
        $this->toexcel->getActiveSheet()->setTitle('Pump Parts');
        //set cell A1 content with some text

        $this->db->select('
            ros_form.ros_no,
            service_dealer.'.lang("excel_sd_name").' AS sd_name,
            car_makers.'.lang("excel_maker_name").' AS maker_name,
            dealer.'.lang("excel_dealer_name").' AS dealer_name,
            dealer.'.lang("excel_dealer_location").' AS dealer_location,
            ros_form.warranty,
            ros_form.car_model,
            ros_form.frame_no,
            ros_form.engine_no,
            ros_form.engine_model,
            ros_form.year,
            ros_form.plate_no,
            ros_form.delivery_date,
            ros_form.repair_date,
            ros_form.mileage,
            car_problems.'.lang("excel_car_problem").' AS car_problem,
            ros_form.car_problem_other,
            ros_form.dtc_code,
            ros_form.car_condition,
            ros_form.car_condition_other,
            ros_form.fuel_condition,
            ros_form.fuel_condition_other,
            ros_form.parts_condition,
            ros_form.parts_condition_other,
            part_types.'.lang("excel_part_name").' AS part_name,
            ros_form.part_quantity,
            ros_form.part_failure_pn,
            ros_form.part_exchange_pn,
            ros_form.failure_sn_1,
            ros_form.failure_sn_2,
            ros_form.failure_sn_3,
            ros_form.failure_sn_4,
            ros_form.failure_sn_5,
            ros_form.failure_sn_6,
            ros_form.new_sn_1,
            ros_form.new_sn_2,
            ros_form.new_sn_3,
            ros_form.new_sn_4,
            ros_form.new_sn_5,
            ros_form.new_sn_6,
            ros_form.status,
            ros_form.remark,
            ros_form.created_time,
            ros_form.updated_time
        ');

        //$this->db->select('pump_parts.id, pump_parts.part_code, car_makers.maker_en, pump_parts.car_model, pump_parts.engine_model, pump_parts.part_name, pump_parts.car_maker_PN, pump_parts.exchange_PN, pump_parts.start, pump_parts.finish');
        //$this->db->join('car_makers', 'car_makers.maker_id = pump_parts.maker_id');
        $this->db->join('car_makers', 'car_makers.maker_id = ros_form.maker_id');
        $this->db->join('part_types','part_types.part_id = ros_form.part_id');
        $this->db->join('dealer', 'dealer.dealer_id = ros_form.dealer_id', 'left');
        $this->db->join('car_problems', 'car_problems.id = ros_form.car_problem');
        $this->db->join('service_dealer', 'service_dealer.sd_id = ros_form.created_by');
        $this->db->order_by("ros_form.id", "asc");

        if($this->input->get('RosCheck')){
            $this->db->where_in('ros_form.ros_no', $this->input->get('RosCheck'));
        } else {
        if($this->input->get('CarMaker'))
            $this->db->where('car_makers.maker_en', $this->input->get('CarMaker'));
        if($this->input->get('DealerName'))
            $this->db->where('dealer.name_eng', $this->input->get('DealerName'));
        if($this->input->get('SDName'))
            $this->db->where('service_dealer.name_th', $this->input->get('SDName'));
        if($this->input->get('RosNo'))
            $this->db->where('ros_form.ros_no', $this->input->get('RosNo'));
        if($this->input->get('CreateFrom'))
            $this->db->where('ros_form.created_time >=', date("Y-m-d", strtotime($this->input->get('CreateFrom'))));
        if($this->input->get('CreateTo'))
            $this->db->where('ros_form.created_time <=', date("Y-m-d", strtotime($this->input->get('CreateTo')))." 23:59:59");
        if($this->input->get('RepairFrom'))
            $this->db->where('ros_form.repair_date >=', date("Y-m-d", strtotime($this->input->get('RepairFrom'))));
        if($this->input->get('RepairTo'))
            $this->db->where('ros_form.repair_date <=', date("Y-m-d", strtotime($this->input->get('RepairTo')))." 23:59:59");
        if($this->input->get('DealerKey')){
            $where = "(dealer.name_eng LIKE '%".$this->input->get('DealerKey')."%' OR dealer.name_th LIKE '%".$this->input->get('DealerKey')."%')";
            $this->db->where($where);
        }
        if($this->input->get('SDKey')){
            $where = "(service_dealer.name_eng LIKE '%".$this->input->get('SDKey')."%' OR service_dealer.name_th LIKE '%".$this->input->get('SDKey')."%')";
            $this->db->where($where);
        }
        if($this->input->get('status')){
            if($this->input->get('status') != null)
                $this->db->where('ros_form.status', $this->input->get('status'));
            }
        }

        $result = $this->db->get('ros_form')->result_array();
        // $rows = $this->db->get('ros_form')->num_rows();
        if(empty($result)){
            echo "No results match criteria.";
        } else {
            $mappings = lang("mapping_keys");
            $X = 'A';
            $Y = '1';
            foreach ($result[0] as $key => $value){
                $this->toexcel->getActiveSheet()->setCellValue($X.$Y, isset($mappings[$key])?$mappings[$key]:$key);
                $this->toexcel->getActiveSheet()->getStyle($X.$Y)->getFont()->setBold(true);
                $X++;
            }
            $X = 'A';
            $Y = '2';
            foreach ($result as $key){
                foreach ($key as $k => $v){
                    if(strpos($v, "=") === 0)
                        $this->toexcel->getActiveSheet()->setCellValue($X++.$Y, " ".$v);
                    else
                        $this->toexcel->getActiveSheet()->setCellValue($X++.$Y, $v);
                }
                $Y++;
                $X = 'A';
            }

            // //change the font size
            // $this->toexcel->getActiveSheet()->getStyle('A1')->getFont()->setSize(20);
            // //make the font become bold
            // $this->toexcel->getActiveSheet()->getStyle('A1')->getFont()->setBold(true);
            // //merge cell A1 until D1
            // $this->toexcel->getActiveSheet()->mergeCells('A1:D1');
            // //set aligment to center for that merged cell (A1 to D1)
            // $this->toexcel->getActiveSheet()->getStyle('A1')->getAlignment()->setHorizontal(PHPExcel_Style_Alignment::HORIZONTAL_CENTER);
            if($this->input->get('name') != null){
                $filename = $this->input->get('name').'.xls';
            }
            else{
                $filename = 'filteredresults.xls'; //save our workbook as this file name
            }

            // Set headers to enable sending through browser with correct MIME type.
            header('Content-Type: application/vnd.ms-excel'); //mime type
            header('Content-Disposition: attachment;filename="'.$filename.'"'); //tell browser what's the file name
            header('Cache-Control: max-age=0'); //disable cache

            //save it to Excel5 format (excel 2003 .XLS file), change this to 'Excel2007' (and adjust the filename extension, also the header mime type)
            //if you want to save it as .XLSX Excel 2007 format
            $objWriter = PHPExcel_IOFactory::createWriter($this->toexcel, 'Excel5');

            //force user to download the Excel file without writing it to server's HD
            $objWriter->save('php://output');
        }
    }
        
    public function test(){
        $result = $this->db->get('pump_parts')->result_array();
        echo "Rows: ".$this->db->get('pump_parts')->num_rows()."<br />";
        echo "Columns: ".count($result[0])."<br />";
        foreach ($result[0] as $key => $value){
            echo $key."\t";
        }
        echo "<br />";
        foreach ($result as $key){
            foreach ($key as $k => $v){
                echo $v;
            }
            echo "<br />";
        }
        echo '<pre>';
        print_r($result);
    }
    
}

    /* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */