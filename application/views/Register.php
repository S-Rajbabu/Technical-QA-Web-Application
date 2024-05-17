<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>User Registration</title>
    <style>
         body, html {
            height: 100%;
            margin: 0;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        form {
            max-width: 400px;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            background-color: #f9f9f9;
            display: flex;
            flex-direction: column;
        }

        label {
            display: block;
            margin-bottom: 5px;
        }

        .form-group {
            display: flex;
            align-items: center;
            margin-top: 5px;
        }

        .form-group label {
            flex: 1;
            margin-right: 10px;
        }

        .form-group input[type="text"],
        .form-group input[type="password"] {
            flex: 2;
            padding: 8px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 3px;
        }

        .regbtn {
            margin-left: 10px;
            background-color: #28a745; 
            color: #fff; 
            border: none; 
            padding: 12px 15px; 
            border-radius: 3px; 
            cursor: pointer;
            flex: 1;
        }

        .regbtn:hover {
            background-color: #218838; 
        }

        input[type="submit"] {
            background-color: #007bff;
            color: #fff;
            cursor: pointer;
            padding: 12px 15px; 
            border-radius: 3px; 
            border: none; 
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
        }

        h2 {
            text-align: center;
            margin-bottom: 20px;
        }

        body {
            background: url('https://t4.ftcdn.net/jpg/05/66/58/09/360_F_566580964_LR63cXQ7vOcLzwcMxSbKovskk8qFc6Y9.jpg'); 
            -webkit-background-size: cover;
            -moz-background-size: cover;
            -o-background-size: cover;
            background-size: cover;
            } 
            
    </style>
    </head>

<body>

    <div>
        <h2>USER REGISTRATION</h2>
        <form>     
            <div class="form-group">
                <label for="username">Username:</label>
                <input type="text" id="username" name="username">
            </div>
            <div class="form-group">
                <label for="email">Email:</label>
                <input type="text" id="email" name="email">
            </div>
            <div class="form-group">
                <label for="password">Password:</label>
                <input type="password" id="password" name="password">
            </div>
            <div class="form-group" >
                <button type="submit" class="regbtn">Register</button>
            </div>     
        </form>
    </div>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/underscore.js/1.13.1/underscore-min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/backbone.js/1.4.0/backbone-min.js"></script>

    <script>

        var UserModel = Backbone.Model.extend({
                urlRoot: '/Auth'
            });


        $(function() {
            var UserForm = Backbone.View.extend({
                el: 'form',
                events: {
                    'submit': 'submit'
                },
                submit: function(e) {
                    e.preventDefault();
                    var username = this.$('#username').val();
                    var email = this.$('#email').val();
                    var password = this.$('#password').val();

                    // Validate the username, email, and password
                    if (!username || !email || !password) {
                        alert('Username, email, and password cannot be empty.');
                        return;
                    }

                    $.ajax({
                        url: 'register_account',  
                        method: 'POST',
                        data: JSON.stringify({ username: username, email: email, password: password}),
                        contentType: 'application/json',
                        success: function(response) {
                            alert('Account created successfully');
                            window.location.href = '<?php echo base_url("Auth"); ?>';                        
                            
                        }
                    });
                }
            });

            new UserForm();
        });

    </script>

</body>
</html>
