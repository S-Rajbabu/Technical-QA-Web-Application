<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Answer_model extends CI_Model {

    //Post Answer
    public function adding_answer($title, $question_id, $question, $answer, $username) {
        $data = array(
            'title' => $title,
            'question_id' => $question_id,
            'question' => $question,
            'answer' => $answer,
            'username' => $username          
        );

        $this->db->insert('answers', $data);
    }


    // searching
    public function Browse_by_category($title) {
        $this->db->select('question, answer, username');
        $this->db->from('answers');
    
        if ($title !== 'All') {
            $this->db->where('title', $title);
        }
    
        $query = $this->db->get();
        return $query->result();
    }


       // Getting all posted Question and Answers
       public function get_all_qa() {
        // Select only the specified columns
        $this->db->select('question_id, question, answer, username');
        
        // Query to get all questions
        $query = $this->db->get('answers');

        return $query->result();
    }

    //Sorting based on the Votes
    public function get_all_qa_sorted_by_votes() {
        $this->db->select('qa.question_id, qa.question, qa.answer, SUM(v.vote) as votes');
        $this->db->from('Answers qa');
        $this->db->join('Votes v', 'qa.question_id = v.question_id', 'left');
        $this->db->group_by('qa.question_id');
        $this->db->order_by('votes', 'DESC'); // Sort by votes in descending order
        $query = $this->db->get();
        return $query->result();
    }
}


?>







