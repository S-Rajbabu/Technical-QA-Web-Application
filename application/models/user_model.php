<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class User_model extends CI_Model {

    public function __construct() {
        parent::__construct();
        $this->load->database(); 
    }

     public function create_account($username, $email, $password) {
            $data = array(
                'username' => $username,
                'email' => $email,
                'password' => $password, 
                'created_at' => date('Y-m-d H:i:s'),
                'updated_at' => date('Y-m-d H:i:s')
            );

            return $this->db->insert('users', $data);
            
        }


    public function login($username, $password) {
        $query = $this->db->get_where('users', array('username' => $username));
        $user = $query->row();
    
        if ($user && $password === $user->password) {
            return $user; // Return the user object if authentication is successful
        } else {
            return false; // Return false if authentication fails
        }
    }


    public function get_user_by_username($username) {
        // Query to get user details by username
        $query = $this->db->get_where('users', array('username' => $username));
        
        return $query->row();
    }
    
    
}

?>
