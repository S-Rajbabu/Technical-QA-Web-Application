<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Login</title>

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
        }

        .form-group label {
            flex: 1;
            margin-right: 10px;
        }

        .form-group input[type="text"],
        .form-group input[type="password"] {
            flex: 3;
            padding: 10px;
            margin-bottom: 10px;
            border: 2px solid #ccc;
            border-radius: 5px;
        }

        .register-container {
            display: flex;
            align-items: center;
            margin-top: 10px;
        }

        .register-label {
            flex: 1;
        }

        .register-button {
            margin-left: 10px;
            background-color: #28a745; 
            color: #fff; 
            border: none; 
            padding: 12px 10px; 
            border-radius: 23px; 
            cursor: pointer;
        }

        .register-button:hover {
            background-color: #218838; 
        }

        input[type="submit"] {
            background-color: #007bff;
            color: #fff;
            cursor: pointer;
            padding: 12px 20px; 
            border-radius: 23px; 
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

<body class="bg-light">

    <div>
        <h2>LOGIN FORM</h2>
        <form  method="post" action=<?=base_url('Auth/login')?>>
            <div class="form-group">
                <label for="username">Username:</label>
                <input type="text" id="username" name="username">
            </div>

            <div class="form-group">
                <label for="password">Password:</label>
                <input type="password" id="password" name="password">
            </div>
            <input type="submit" value="Login" >
            <div class="register-container">
                <span class="register-label">If you don't have an account, click here</span>
                <input class="register-button" type="button" value="Register" onclick="window.location.href='<?php echo base_url('Auth/register_view'); ?>'">
            </div>
        </form>
    </div>

    <script>

            // Check if error message exists in session
            var errorMessage = "<?php echo $this->session->flashdata('error'); ?>";
            if (errorMessage) {
                // Display error message 
                alert(errorMessage);
            }

    </script>

    
</body>
</html>
