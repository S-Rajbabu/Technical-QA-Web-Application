<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Auth extends CI_Controller {

    public function __construct() {    

        parent::__construct();
        $this->load->helper('url'); // Load the URL helper
        $this->load->library('session'); // Load the Session library
    }

    public function index() {
        $this->load->view('login_form');
    }

    public function register_view() {
        $this->load->view('Register');
    }

    public function view_profile(){
        $this->load->view('profile');
    }


    public function register_account() {
        // Get the raw POST data
        $rawData = $this->input->raw_input_stream;
    
        // Convert the JSON data to an array
        $inputData = json_decode($rawData, true);
    
        if ($inputData) {
            $username = $inputData['username'];
            $email = $inputData['email'];
            $password = $inputData['password'];
    
            // Load the model
            $this->load->model('User_model');
    
            $this->User_model->create_account($username, $email, $password);

            $response = array('status' => 'success');

            echo json_encode($response);
        }
    }

    public function login() {

        $username = $this->input->post('username');
        $password = $this->input->post('password');
    
        // Validate the username and password
        if (empty($username) || empty($password)) {
            $this->session->set_flashdata('error', 'Username and password cannot be empty.');
            redirect($this->config->item('base_url') . 'Auth');
            return;
        }
    
        $this->load->model('User_model');
        $user = $this->User_model->login($username, $password);
        $welcome_base_url = $this->config->item('base_url');
    
        if ($user) {
            $this->session->set_userdata('logged_in', TRUE);
            $this->session->set_userdata('username', $username);
            echo json_encode(['status' => 'success']);
    
            redirect($welcome_base_url . 'welcome');
        } else {
            $this->session->set_flashdata('error', 'Login failed. Please check your credentials.');
            redirect($welcome_base_url . 'Auth');
        }
    }
    

    
    public function logout() {
        // Destroy the current session
        $this->session->sess_destroy();       
    }


    public function display_profile(){
        $this->load->model('User_model');
        
        // Get the currently logged-in username from the session
        $username = $this->session->userdata('username');
        
        // Call the method in the model to get user details by username
        $user_details = $this->User_model->get_user_by_username($username);
        
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
