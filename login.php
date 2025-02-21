<?php
session_start();

error_reporting(E_ALL);
ini_set('display_errors', 1);

include 'connection.php';

switch (isset($_SESSION['level'])) {
    case 'admin':
        header('location: admin/homeadmin.php');
        break;
    case 'user':
        header('location: customer/dashboard.php');
        break;
}

if (isset($_POST['submit'])) {
    $email =  $_POST['email'];
    $password = $_POST['password'];

    $sql = "SELECT * FROM admin WHERE email='$email' AND password='$password'";
    $result = mysqli_query($conn, $sql);

    // die($_SESSION['level']);

    if ($result->num_rows > 0) {
        $row = mysqli_fetch_assoc($result);

        // print_r($row); die;
        $_SESSION['username'] = $row['username'];
        $_SESSION['email'] = $row['email'];
        $_SESSION['level'] = $row['level'];
        $_SESSION['id'] = $row['id'];

        // header("Location: dashboard.php");

        switch ($row['level']) {
            case 'admin':
                header('location: admin/homeadmin.php');
                break;
            case 'user':
                header('location: customer/dashboard.php');
                break;
        }

        exit();
    } else {
        echo "<script>alert('Email atau password Anda salah. Silakan coba lagi!')</script>";
    }
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <script src="https://cdn.tailwindcss.com"></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet" />
    <style>
        body {
            font-family: 'Roboto', sans-serif;
            background: #D6CFC7;
        }
        .form-input {
            background: transparent;
            color: #00796B;
            border-color: #00796B;
        }
        .form-input:focus {
            outline: none;
            border-color: #005f54;
        }
    </style>
</head>

<body class="flex items-center justify-center min-h-screen relative">
    <a href="home.php" class="absolute top-4 left-4 text-[#48494B] hover:underline">
        <i class="fas fa-arrow-left"></i> Back
    </a>
    <div class="flex items-center space-x-2">
        <div class="w-80 bg-white p-6 rounded-lg shadow-lg">
            <h2 class="text-3xl font-bold text-center mb-4 text-[#777B7E]">SIGN IN</h2>
            <form method="post">
            <div class="mb-4">
                    <label class="block text-[#7a6e5d]">Email</label>
                    <div class="flex items-center border-b border-[#7a6e5d] py-2">
                        <input class="appearance-none bg-transparent border-none w-full text-[#7a6e5d] mr-3 py-1 px-2 leading-tight focus:outline-none" type="email" name="email" placeholder="Email" required />
                        <i class="fas fa-envelope text-[#7a6e5d]"></i>
                    </div>
                </div>
                <div class="mb-4">
                    <label class="block text-[#7a6e5d]">Password</label>
                    <div class="flex items-center border-b border-[#7a6e5d] py-2">
                        <input class="appearance-none bg-transparent border-none w-full text-[#7a6e5d] mr-3 py-1 px-2 leading-tight focus:outline-none" type="password" name="password" placeholder="Password" required />
                        <i class="fas fa-eye-slash text-[#7a6e5d]"></i>
                    </div>
                </div>
                <div class="flex items-center justify-center mb-2">
                <button class="bg-[#777B7E] hover:bg-[#777B7E] text-white font-bold py-3 px-6 rounded-full w-full text-lg" type="submit" name="submit">Login</button>
                </div>
            </form>
            <div class="flex justify-between text-sm text-[#48494B]">
                <a href="regist.php" class="hover:underline">Create an account?</a>
                <a href="forgot.php" class="hover:underline">Forgot Password?</a>
            </div>
        </div>
    </div>

    <script>
        // Fungsi untuk toggle visibility password
        const togglePassword = document.getElementById('toggle-password');
        const passwordField = document.getElementById('password');

        togglePassword.addEventListener('click', function () {
            if (passwordField.type === 'password') {
                passwordField.type = 'text';
                togglePassword.classList.remove('fa-eye-slash');
                togglePassword.classList.add('fa-eye');
            } else {
                passwordField.type = 'password';
                togglePassword.classList.remove('fa-eye');
                togglePassword.classList.add('fa-eye-slash');
            }
        });
    </script>
</body>

</html>
