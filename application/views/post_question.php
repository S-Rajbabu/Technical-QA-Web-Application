<!DOCTYPE html>
<html>
<head>
    <title>Question Form</title>
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
        }
        .container {
            width: 50%;
            margin: auto;
            padding: 20px;
        }
        .form-group {
            margin-bottom: 20px;
        }
        .form-group label {
            display: block;
            margin-bottom: 10px;
        }
        .form-group input, .form-group textarea {
            width: 100%;
            padding: 10px;
            border: 1px solid #ddd;
        }
        .form-group button {
            padding: 10px 20px;
            background-color: #007BFF;
            color: white;
            border: none;
            cursor: pointer;
        }
        body {
        background: url('https://img.freepik.com/premium-vector/vector-random-3d-question-mark-white-background_505557-2066.jpg'); 
        background-size: cover;
        background-repeat: no-repeat;
        background-position: center;
        }

    </style>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/underscore.js/1.8.3/underscore-min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/backbone.js/1.3.3/backbone-min.js"></script>
</head>
<body>
    <div class="navbar">
        <a class="nav-link" href="<?php echo base_url('welcome'); ?>">Home</a>
        <a class="nav-link" href="">Ask Question</a>
        <a class="nav-link" href="<?php echo base_url('Questions'); ?>">View Question</a>
        <a class="nav-link" href="<?php echo base_url('Answers/browse'); ?>">Browse</a>
        <a class="nav-link" href="<?php echo base_url('Vote'); ?>">Votes</a>
		<a class="nav-link" href="<?php echo base_url('Auth/display_profile'); ?>">Profile</a>
        <a class="nav-link" href="<?php echo base_url('Auth'); ?>" id="logoutLink">Logout</a>        
    </div>
    <div class="container">
        <h1>Post Your Question</h1>
        <form>
            <div class="form-group">  
                <label>User: <?php echo $this->session->userdata('username'); ?></label>    
            </div>
            <div class="form-group">
                <label for="title">Title:</label>
                <input type="text" id="title" name="title" required>
            </div>
            <div class="form-group">
                <label for="question">Question:</label>
                <textarea id="question" name="question" required></textarea>
            </div>
            <div class="form-group">
                <button type="submit">Submit Question</button>
            </div>
        </form>
    </div>

    <script>
        var Question = Backbone.Model.extend({
            urlRoot: '/questions'
        });


    $(function() {
        var QuestionForm = Backbone.View.extend({
            el: 'form',
            events: {
                'submit': 'submit'
            },
            submit: function(e) {
                e.preventDefault();
                var title = this.$('#title').val();
                var question = this.$('#question').val();

                // Fetch the username from the session
                var username = '<?php echo $this->session->userdata("username"); ?>';

                $.ajax({
                    url: 'create',  
                    method: 'POST',
                    data: JSON.stringify({ title: title, question: question, username: username }),
                    contentType: 'application/json',
                    success: function(response) {
                        alert('Question posted successfully');
                        self.$('#title').val('');
                        self.$('#question').val('');
                        window.location.href = '<?php echo base_url("welcome"); ?>';
                        
                    }
                });
            }
        });

        new QuestionForm();
    });
    </script>
</body>
</html>
