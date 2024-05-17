<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Questions extends CI_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->helper('url');
        $this->load->library('session');
       
    }

    public function adding_question() {
        $this->load->view('post_question');
    }


    public function display_question(){
        $this->load->view('question_view');
    }

    public function answer_specific_question(){
        $this->load->view('answer_question');
    }


    public function index() {
        // Load the model
        $this->load->model('Question_model');
        
        // Get the list of all posted questions
        $questions = $this->Question_model->get_all_questions();
        
        // Fetch the username from the session
        $username = $this->session->userdata('username');
    
        // Load the view with the questions and username
        $this->load->view('question_view', array('questions' => $questions, 'username' => $username));
    }
    


    public function create() {
        // Get the raw POST data
        $rawData = $this->input->raw_input_stream;
    
        // Convert the JSON data to an array
        $inputData = json_decode($rawData, true);
    
        if ($inputData) {
            $title = $inputData['title'];
            $question = $inputData['question'];
           
    
             // Fetch the username from the session
             $username = $this->session->userdata('username');

            // Load the model
            $this->load->model('Question_model');
    
            // Call the model method
            $this->Question_model->adding_question($title, $question, $username);
    
            $response = array('status' => 'success');
            echo json_encode($response);

        }
    }


    public function view_question($id) {
             
        $this->load->model('Question_model');
        // Get the specific question by ID
        $question = $this->Question_model->get_question($id);

        // Load the view with the question
        $this->load->view('view_question', array('question' => $question));
    }


    public function answer_question($id) {
        
        // Load the model
        $this->load->model('Question_model');
        // Get the specific question by ID
        $question = $this->Question_model->get_question($id);
    
        if($question) {
            // Load the view with the question
            $this->load->view('answer_question', array('question' => $question));
        } else {
            // Handle the case where the question with the given ID is not found
            echo "Question not found!";
        }
    }
    

    public function get_all_questions() {

        $this->load->model('Question_model');
        // Get the list of all posted questions
        $questions = $this->Question_model->get_all_questions();

        // Return the questions as JSON
        echo json_encode($questions);
    } 


    
}

?>
