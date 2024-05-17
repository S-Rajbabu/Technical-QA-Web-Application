<!DOCTYPE html>
<html>
<head>
    <title>User Questions</title>
    
    <style>
        .navbar {
            background-color: #333;   
            overflow: hidden;
            position: sticky;
            top: 0;
            width: 100%;
        }
        .navbar a {
            float: left;
            display: block;
            color: #f2f2f2;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
        }
        .navbar a:hover {
            background-color: #ddd;
            color: black;
        }
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            
        }
        .question {   

            width: 65%;
            margin: auto;
            padding: 20px;
            background-color: #f8f8f8;
            border-radius: 50px;
            box-shadow: 0px 0px 10px 0px rgba(0,0,0,0.1);
            margin-bottom: 20px;
            text-align: justify;
            
            
        }
        .question h3 {
            margin: 0;
            text-align: center;
            
        }
        .question p {
            margin: 5px 0;
            text-align: center;
        }
        .question button {
            padding: 10px 10px;
            background-color: #007BFF;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            
        }
        .question button:hover {
            background-color: #0056b3;
        }
        .centered {
            text-align: center;
        }


        .votes {
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .votes button {
            margin: 20px 160px;
            text-align: center;
        }

        .circle {
            width: 50px;
            height: 50px;
            border-radius: 50%;
            border: 2.5px solid #828282;
            display: flex;
            align-items: center;
            justify-content: center;
            margin: 5px auto;
           
        }
        .custom-button {
            background-color: #808080; 
            border: none;
            color: white;
            padding: 10px;
            text-align: center;
            font-size: 15px;
            margin: 2px;
            cursor: pointer;
            margin: 1px 10px;
            justify-content: center;
           
            
           
        }

        .custom-button:hover {
            background-color: #6b6b6b; 
        }

    </style>
</head>
<body>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/underscore.js/1.13.1/underscore-min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/backbone.js/1.4.0/backbone-min.js"></script>

    <div class="navbar">
        <a class="nav-link" href="<?php echo base_url('welcome'); ?>">Home</a>
        <a class="nav-link" href="<?php echo base_url('Questions/adding_question'); ?>">Ask Question</a>
        <a class="nav-link" href="">View Question</a>
        <a class="nav-link" href="<?php echo base_url('Answers/browse'); ?>">Browse</a>
        <a class="nav-link" href="<?php echo base_url('Vote'); ?>">Votes</a>
		<a class="nav-link" href="<?php echo base_url('Auth/display_profile'); ?>">Profile</a>
        <a class="nav-link" href="<?php echo base_url('Auth'); ?>" id="logoutLink">Logout</a>        
    </div>

    <div>
 
        <h1 class = "centered">View Votes</h1>

        <button id="sortButton" class="custom-button">Sort by Votes</button>
        <button id="unsortButton" class="custom-button">Unsort</button>

        <?php foreach ($QAs as $QA) : ?>
            <div class="question" data-question-id="<?php echo $QA->question_id; ?>" <?php echo $this->session->userdata('username'); ?>>
                <h3>ID: <?php echo $QA->question_id; ?></h3> 
                <h3>Question: <?php echo $QA->question; ?></h3> 
                <p>Posted Answer: <?php echo $QA->answer; ?></p>
               
                <div class="votes">
                    <button class="upvote">UpVote</button>
                    <span class="vote-count circle" >0</span>
                    <button class="downvote">DownVote</button>
                </div>
            </div>
        <?php endforeach; ?>  
    
    </div>


<script>
       // getting list of question and answers
        var QuestionModel = Backbone.Model.extend({
            urlRoot: '<?php echo base_url('Vote'); ?>',

            // Method to get all the posted question with answers
            get_QA: function() {
                $.ajax({
                    type: 'GET',
                    url: 'Vote',
                    dataType: 'json',
                    success: function(data) {
                        // Handle the response
                        this.set('questions', data);
                        console.log('Questions retrieved successfully!');
                    }.bind(this),
                    error: function(xhr, status, error) {
                        console.error(this.urlRoot, status, error.toString());
                    }.bind(this)
                });
            }
        });

        $(document).ready(function() {
            // Fetch the current vote counts when the page loads
            $.ajax({
                type: 'GET',
                url: '<?php echo base_url('Vote/get_votes'); ?>',
                dataType: 'json',
                success: function(data) {
                    // Update the vote counts in the DOM
                    $.each(data, function(index, item) {
                        var questionId = item.question_id;
                        var voteCount = item.votes;
                        $('.question[data-question-id="' + questionId + '"] .vote-count').text(voteCount);
                    });
                },
                error: function() {
                    console.error('Failed to fetch votes');
                }
            });

            
        });


        $('.upvote').click(function() {
            var voteCountElement = $(this).siblings('.vote-count');
            var currentVoteCount = parseInt(voteCountElement.text(), 10);
            voteCountElement.text(currentVoteCount + 1);

            // Get the question ID, question, answer text, and username
            var questionId = $(this).closest('.question').data('question-id');
            var questionText = $(this).parent().siblings('h3').eq(1).text();
            var answerText = $(this).parent().siblings('p').first().text();
            var username = '<?php echo $this->session->userdata('username'); ?>';

            // Send the vote to the server
            $.ajax({
                type: 'POST',
                url: '<?php echo base_url('Vote/add_vote'); ?>',
                data: JSON.stringify({
                    question_id: questionId,
                    question: questionText,
                    answer: answerText,
                    username: username,
                    vote: 1
                }),
                contentType: 'application/json',
                dataType: 'json',
                success: function() {
                    // Increment the vote count in the DOM
                    voteCountElement.text(currentVoteCount + 1);
                },
                error: function() {
                    console.error('Failed to add vote');
                    // Revert the vote count in the DOM
                    voteCountElement.text(currentVoteCount);
                }
            });
        });

        $('.downvote').click(function() {
            var voteCountElement = $(this).siblings('.vote-count');
            var currentVoteCount = parseInt(voteCountElement.text(), 10);
            voteCountElement.text(currentVoteCount - 1);
          
            // Get the question and answer text
            var questionId = $(this).closest('.question').data('question-id');
            var questionText = $(this).parent().siblings('h3').eq(1).text();
            var answerText = $(this).parent().siblings('p').first().text();
            var username = '<?php echo $this->session->userdata('username'); ?>';

            // Send the vote to the server
            $.ajax({
                type: 'POST',
                url: '<?php echo base_url('Vote/add_vote'); ?>',
                data: JSON.stringify({
                    question_id: questionId,
                    question: questionText,
                    answer: answerText,
                    username: username,
                    vote: -1
                }),
                contentType: 'application/json',
                dataType: 'json',
                success: function() {
                    // Increment the vote count in the DOM
                    voteCountElement.text(currentVoteCount - 1);
                },
                error: function() {
                    console.error('Failed to add vote');
                    // Revert the vote count in the DOM
                    voteCountElement.text(currentVoteCount);
                }
            });
        });


        //Sorting
        $(document).ready(function() {
            var sorted = false;
            var questions = $('.question');

            $('#sortButton').click(function() {
                if (!sorted) {
                    questions.sort(function(a, b) {
                        return parseInt($(b).find('.vote-count').text()) - parseInt($(a).find('.vote-count').text());
                    });
                    questions.detach().appendTo('body');
                    sorted = true;
                }
            });

            $('#unsortButton').click(function() {
                window.location.href = '<?php echo base_url("Vote"); ?>';
            });

        });

</script>
</body>
</html>
