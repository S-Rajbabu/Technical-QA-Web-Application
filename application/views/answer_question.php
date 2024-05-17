<!DOCTYPE html>
<html>
<head>
    <title>Answer Form</title>
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
            background-color:LightGray;
            
           
        }

        .container {
            width: 80%;
            margin: 0 auto;
            background-color: #f8f8f8;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0px 0px 10px 0px rgba(0,0,0,0.1);
        }

        h1 {
            color: #333;
            
        }

        .centered {
            text-align: center;
        }

        p {
            color: #333;
        }

        form {
            margin-top: 20px;
        }

        label {
            display: block;
            margin-bottom: 10px;
            color: #666;
        }

        textarea {
            width: 100%;
            min-height: 100px;
            padding: 10px;
            margin-bottom: 20px;
            border-radius: 5px;
            border: 1px solid #ddd;
        }

        input[type="submit"] {
            padding: 10px 20px;
            background-color: #5C6BC0;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #3F51B5;
        }
    </style>
</head>
<body>

    <div class="navbar">
        <a class="nav-link" href="<?php echo base_url('welcome'); ?>">Home</a>
        <a class="nav-link" href="<?php echo base_url('Questions/adding_question'); ?>">Ask Question</a>
        <a class="nav-link" href="<?php echo base_url('Questions'); ?>">View Question</a>
        <a class="nav-link" href="<?php echo base_url('Answers/browse'); ?>">Browse</a>
        <a class="nav-link" href="<?php echo base_url('Vote'); ?>">Votes</a>
		<a class="nav-link" href="<?php echo base_url('Auth/display_profile'); ?>">Profile</a>
        <a class="nav-link" href="<?php echo base_url('Auth'); ?>" id="logoutLink">Logout</a>        
    </div>

    <!-- Display the specific question based on user selected -->
    <h1 class="centered">Post Your Answer</h1> 
    <div class="container">
        <form>

            <h4>Category: <?php echo $question->title; ?></h4>
            <p style = "color: black">Posted Question: <?php echo $question->question; ?></p>
            <label style = "color: black">Asked By: <?php echo $question->username; ?></label>
            <br><br>
            <label for="question">Type your Answer Below </label>
            <textarea name="answer" id="answer" placeholder="Answer ..." required ></textarea>
            <input type="hidden" name="question_id" id="question_id" value="<?php echo $question->id; ?>">
            <input type="submit" value="Answer">
        </form>
    </div>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/underscore.js/1.8.3/underscore-min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/backbone.js/1.3.3/backbone-min.js"></script>

<script>

    $(document).ready(function() {
        var Answer = Backbone.Model.extend({
            urlRoot: '<?php echo base_url('Answers/post_answer'); ?>',
            defaults: {
                title: '',
                question: '',
                answer: '',
                question_id: '',
               
            }
        });

        var AnswerView = Backbone.View.extend({
            el: 'form',
            events: {
                'submit': 'submit'
            },
            submit: function(e) {
                e.preventDefault();
                var answer = new Answer();
                answer.save({
                    title: this.$('h4').text().replace('Category: ', ''),
                    question: this.$('p').text().replace('Posted Question: ', ''),
                  
                    answer: this.$('#answer').val(),
                    question_id: this.$('#question_id').val()
                    
                }, {
                    success: function(model, response) {
                        alert('Answer successfully posted.');
                        window.location.href = '<?php echo base_url("welcome"); ?>';
                    },
                    error: function(model, response) {
                        alert('Error in posting answer.');
                    }
                });
            }
        });

        var answerView = new AnswerView();
    });

</script>

</body>
</html>
