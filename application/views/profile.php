<!DOCTYPE html>
<html>
<head>
    <title>User Profile </title>
    <style>
        .navbar {
            font-family: Arial, sans-serif;
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
        .container {
            display: flex;
            justify-content: center;
            align-items: center;
            height: calc(100vh - 60px); 
            margin: 0;
            background-color: #f3f3f3;
        }
        .profile {
            width: 300px;
            height:350px;
            background-color: #fff;
            padding: 20px;
            border-radius: 20px;
            box-shadow: 0px 0px 10px rgba(0,0,0,0.1);
        }
        .profile h2 {
            text-align: center;
            padding: 30px;
            color: #333;
        }
        .profile p {
            text-align: center;
            padding: 20px;
            color: #333;
        }
        footer {
            font-family: Arial, sans-serif;
            position: fixed;
            left: 0;
            bottom: 5px;
            width: 100%;
            background-color: #808080;
            color: white;
            text-align: center;
            font-size: 13.5px;
            padding: -15px ;
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
        <a class="nav-link" href="">Profile</a>
        <a class="nav-link" href="<?php echo base_url('Auth'); ?>" id="logoutLink">Logout</a>        
    </div>

    <div class="container">
        <div class="profile">
            <h2>Username: <?php echo $username; ?></h2>
            <p>Email ID: <?php echo $email; ?></p>
            <p>User ID: <?php echo $user_id; ?></p>
        </div>
    </div>


    <footer>
        <div>
            <p> Selvakanthan Rajbabu | w1809752 | 2019239 </p>
        </div>
    </footer>
    
</body>
</html>
