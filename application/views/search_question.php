<!DOCTYPE html>
<html>
<head>
    <title>Search Questions</title>
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
            background-color: #f4f4f4;
            padding: 20px;
            color: #333;
        }

        h1 {
            color: #444;
            text-align: center;
        }

        form {
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        label {
            font-weight: bold;
            display: block;
            margin-bottom: 5px;
        }

        input[type="text"], select {
            width: 100%;
            padding: 10px;
            margin-bottom: 10px;
            border-radius: 5px;
            border: 1px solid #ddd;
        }

        input[type="submit"] {
            background-color: #5C6BC0;
            color: #fff;
            border: none;
            border-radius: 5px;
            padding: 10px 15px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #7986CB;
        }

        #result {
            margin-top: 20px;
        }

        .answer {
            background-color: #f1f1f1;
            border-radius: 10px;
            padding: 20px;
            margin-bottom: 20px;
            box-shadow: 10px 10px 10px 10px rgba(0,0,0,0.2);
        }

        .answer h3 {
            color: #2c3e50;
        }

        .answer p {
            color: #34495e;
        }

        .answer .username {
            font-style: italic;
            color: #7f8c8d;
        }

    </style>
</head>
<body>
<div class="navbar">
        <a class="nav-link" href="<?php echo base_url('welcome'); ?>">Home</a>
        <a class="nav-link" href="<?php echo base_url('Questions/adding_question'); ?>">Ask Question</a>
        <a class="nav-link" href="<?php echo base_url('Questions'); ?>">View Question</a>
        <a class="nav-link" href="">Browse</a>
        <a class="nav-link" href="<?php echo base_url('Vote'); ?>">Votes</a>
		<a class="nav-link" href="<?php echo base_url('Auth/display_profile'); ?>">Profile</a>
        <a class="nav-link" href="<?php echo base_url('Auth'); ?>" id="logoutLink">Logout</a>        
    </div>

    <h1>Browse Questions</h1>
    <form id="search-form">
        <label for="title">Category:</label>
        <select id="title" name="title">    
            <option value="Operating Systems">Operating Systems</option>
            <option value="Web Development">Web Development</option>
            <option value="Database System">Database System</option>
            <option value="All">All</option>    
        </select><br><br>
        <input type="submit" value="Search">
    </form>
    

    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/underscore.js/1.13.1/underscore-min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/backbone.js/1.4.0/backbone-min.js"></script>

    <div id="result"></div>
    
    <script type="text/template" id="answer-template">
        <div class="answer">
            <h3><%= question %></h3>
            <p><%= answer %></p>
            <p class="username">Answered By - <%= username %></p>
            
        </div>
    </script>
    
    
    <script>
       
       $(document).ready(function() {
        var Answer = Backbone.Model.extend({});

        var AnswerView = Backbone.View.extend({
            tagName: 'div',
            className: 'answer',
            template: _.template($('#answer-template').html()),

            render: function() {
                this.$el.html(this.template(this.model.toJSON()));
                return this;
            }
        });

        var AnswersView = Backbone.View.extend({
            el: '#result',
            render: function(answers) {
                this.$el.empty();
                _.each(answers, function(answer) {
                    var answerModel = new Answer(answer); // Create Backbone model instance
                    var answerView = new AnswerView({ model: answerModel });
                    this.$el.append(answerView.render().el);
                }, this);
            }
        });

        var answersView = new AnswersView();


        $('#search-form').submit(function(e) {
            e.preventDefault();
            var title = $('#title').val();
            $.ajax({
                url: 'browse_questions',
                type: 'GET',
                data: { title: title },
                dataType: 'json',
                success: function(answers) {
                    console.log(answers); // Add this line
                    answersView.render(answers);
                },
                error: function(xhr, status, error) {
                    console.error('Error fetching answers:', error);
                }
            });
        });
    });

</script>

</body>
</html>
