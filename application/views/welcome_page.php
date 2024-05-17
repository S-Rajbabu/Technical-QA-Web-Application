<!DOCTYPE html>
<html>
<head>
    <title> Welcome to Tech Q&A </title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }
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
        .container {
            width: 58%;
            margin: auto;
            padding: 10px;
            background-color: #f1f1f1;
            border-radius: 5px;
            box-shadow: 0px 0px 10px 0px rgba(0,0,0,0.1);
            margin-bottom: 20px;
            text-align: justify;
        }
		
		.container1 {
		    width: 20%;
            margin: auto;
            padding: 5px;
            background-color: #f1f1f1;
            border-radius: 5px;
            box-shadow: 0px 0px 10px 0px rgba(0,0,0,0.1);
            margin-bottom: 20px;
		}

        .container p {
        display: inline-block;
        }

        h1 {
            color: #007BFF;
            text-align: center;
        }

        p {
            line-height: 1.6;
        }

        .button {
            display: block;
            background-color: #007BFF;
            color: #fff;
            padding: 10px 80px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            text-decoration: none;
        }
		
		body {
			background: url('https://img.freepik.com/premium-vector/vector-random-3d-question-mark-white-background_505557-2066.jpg'); 
            background-size: cover;
            background-repeat: no-repeat;
            background-position: center;
		}

		footer {
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
        <a class="nav-link" href="">Home</a>
        <a class="nav-link" href="<?php echo base_url('Questions/adding_question'); ?>">Ask Question</a>
        <a class="nav-link" href="<?php echo base_url('Questions'); ?>">View Question</a>
        <a class="nav-link" href="<?php echo base_url('Answers/browse'); ?>">Browse</a>
        <a class="nav-link" href="<?php echo base_url('Vote'); ?>">Votes</a>
		<a class="nav-link" href="<?php echo base_url('Auth/display_profile'); ?>">Profile</a> 
        <a class="nav-link" href="<?php echo base_url('Auth'); ?>" id="logoutLink">Logout</a>        
    </div>

    
    <div class="container">
        <h1>Welcome to Tech Q&A : <?php echo $this->session->userdata('username'); ?></h1>
        <p>Tech Q&A functions as a platform that supports community engagement, enabling users to seek solutions to technical inquiries from experts across the globe. Whether encountering coding obstacles, seeking software assistance, or aiming to enhance knowledge in specific tech areas, Tech Q&A is available to offer guidance.</p>
        <p>To commence, new users can register for a free account, while existing users can log in. Upon logging in, users gain access to features such as asking questions, offering answers, and endorsing valuable content.</p>     
    </div>

    <div class="container1">
        <h1>Post Question</h1>
        <p>Get answers to your queries from experts.</p>
        
        <a href="<?php echo base_url('Questions/adding_question'); ?>" class="button" >Ask Questions</a>
    </div>
	
	<footer>
        <div>
            <p> Selvakanthan Rajbabu | w1809752 | 2019239 </p>
        </div>
    </footer>

</body>
</html>
