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
            width: 80%;
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
        .form-container {
        text-align: center;
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
        <!-- Display the list of questions -->
        <h1 class = "centered">View list of  Questions</h1>
       
            <?php foreach ($questions as $question) : ?>
                <div class="question">
                    <h3>Category: <?php echo $question->title; ?></h3>
                    <h3>Posted Question: <?php echo $question->question; ?></h3>
                    <p>Asked by: <?php echo $question->username; ?> </p>
                    
                    <div class="form-container">
                        <form action="<?php echo base_url('Questions/answer_question/' . $question->id); ?>" method="post">
                            <button type="submit">Click to Answer</button>
                        </form>
                    </div>
                </div>
            <?php endforeach; ?>
        
    </div>


<script>
    //Backbone.js model
    var QuestionModel = Backbone.Model.extend({
        urlRoot: '<?php echo base_url('questions'); ?>',

        // Method to get all questions
        get_all_questions: function() {
            $.ajax({
                type: 'GET',
                url: 'Questions',
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

</script>

</body>
</html>
