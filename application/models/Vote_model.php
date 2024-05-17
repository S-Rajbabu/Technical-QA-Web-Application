<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Vote_model extends CI_Model {

    public function __construct() {
        parent::__construct();
        $this->load->database(); 
    }
    

    // Add Votes
    public function add_vote_db($question_id, $question, $answer, $username, $vote) {
        $data = array(
            'question_id' => $question_id,
            'question' => $question,
            'answer' => $answer,
            'username' => $username,
            'vote' => $vote          
        );

        $this->db->insert('votes', $data);
    }



    // Getting Votes
    public function get_votes() {
        $this->db->select('question_id, SUM(vote) as votes');
        $this->db->from('Votes');
        $this->db->group_by('question_id');
        $query = $this->db->get();
        return $query->result_array();
    }
   


    // Sorting Votes
    public function get_questions_sorted_by_votes() {
        $this->db->select('question_id, question, answer, username, SUM(vote) as votes');
        $this->db->from('Votes');
        $this->db->group_by('question_id');
        $this->db->order_by('votes', 'desc');
        $query = $this->db->get();
        return $query->result_array();
    }
    
    
}

?>
