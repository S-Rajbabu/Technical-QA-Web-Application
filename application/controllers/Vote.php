<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Vote extends CI_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->helper('url');
        $this->load->library('session');
        $this->load->model('Vote_model'); // Load the Vote model 
       
    }


    public function index(){

        $this->load->model('Answer_model');
    
        // Get all question and answer data
        $data['QAs'] = $this->Answer_model->get_all_qa();
    
        // Load the view with the data
        $this->load->view('vote_view', $data);
    }
    

    // getting all the question and the answers posted by user (for voting purpose)
    public function get_QA() {

        $this->load->model('Question_model');
        // Get the list of all posted questions
        $QAs = $this->Question_model->get_all_qa();

        // Return the questions as JSON
        echo json_encode($QAs);
    } 


    public function add_vote() {

        $rawData = $this->input->raw_input_stream;
    
        $inputData = json_decode($rawData, true);
    
        if ($inputData) {
            // Get the question, answer, and vote from the data
            $question_id = $inputData['question_id']; 
            $question = $inputData['question']; 
            $answer = $inputData['answer']; 
            $username = $inputData['username']; 
            $vote = $inputData['vote']; 
    
            // Call the add_vote method in the model
            $this->Vote_model->add_vote_db($question_id, $question, $answer, $username, $vote);
    
            // Send a response back to the client
            echo json_encode(array('status' => 'success'));
        }
    }


    public function get_votes() {
        $this->load->model('Vote_model');
        $votes = $this->Vote_model->get_votes();
        echo json_encode($votes);
    }
    
        
}


?>
