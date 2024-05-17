<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Question_model extends CI_Model {

    // Add questions
    public function adding_question($title, $question, $username) {
        $data = array(
            'title' => $title,
            'question' => $question,
            'username' => $username
            
        );

        $this->db->insert('questions', $data);
    }


    // Getting all the questions
    public function get_all_questions() {
        
        $this->db->select('id, title, question, username');
        
        // Query to get all questions
        $query = $this->db->get('questions');

        return $query->result();
    }


    // Getting specific question
    public function get_question($id) {
        // Query to get a specific question
        $query = $this->db->get_where('questions', array('id' => $id));

        return $query->row();
    }


}

?>
