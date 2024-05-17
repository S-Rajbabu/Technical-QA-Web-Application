<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Answers extends CI_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->helper('url');
        $this->load->library('session');
       
    }

    public function post_answer() {
        // Get the raw POST data
        $rawData = $this->input->raw_input_stream;
    
        // Convert the JSON data to an array
        $inputData = json_decode($rawData, true);
    
        if ($inputData) {
            $title = $inputData['title'];
            $question_id = $inputData['question_id'];
            $question = $inputData['question'];
            $answer = $inputData['answer'];
          
           
            // Load the model
            $this->load->model('Answer_model');
    
            // Fetch the username from the session
            $username = $this->session->userdata('username');
    
            // Call the model method
            $this->Answer_model->adding_answer($title, $question_id, $question, $answer, $username);
    
            $response = array('status' => 'success');
            echo json_encode($response);

        }
    }


    // Browse by category
    public function browse(){
        $this->load->view('search_question');
    }

   // Browse question
    public function browse_questions() {
        $this->load->model('Answer_model');
        $title = $this->input->get('title');
        $questions = $this->Answer_model->Browse_by_category($title);
        echo json_encode($questions);
    } 



    public function display_profile(){
        $this->load->model('Answer_model');
        $title = $this->input->get('title');
        
        $user_details = $this->User_model2->get_user_by_username($username);
        
        // Check if user details exist
        if($user_details) {
            // Pass user details to the view
            $data['username'] = $user_details->username;
            $data['email'] = $user_details->email;
            $data['user_id'] = $user_details->id;
            
            $this->load->view('profile', $data);
        } else {
            
            echo "User details not found!";
        }
    }
   
}

?>
