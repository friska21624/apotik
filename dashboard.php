<!DOCTYPE html>
<html lang="en">

<head>
   <meta charset="UTF-8">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>Cure & Care</title>
   <!-- tailwind -->
   <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet" />
   <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&amp;display=swap" rel="stylesheet" />
   <script src="https://cdn.tailwindcss.com"></script>
   <!-- Bootstrap 5 CSS CDN -->
   <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
   <!-- icon bootstrap -->
   <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css">
   <link rel="stylesheet" href="../css/style.css">
   <style>
      .user-header {
         display: flex;
         justify-content: space-between;
         align-items: center;
         background-color: rgba(0, 0, 0, 0.15);
         padding: 10px 20px;
      }

      .user-info {
         display: flex;
         align-items: center;
      }

      .user-icon {
         width: 30px;
         height: 30px;
         margin-right: 10px;
      }

      .user-text {
         display: flex;
         flex-direction: column;
      }

      .user-name {
         color: red;
         font-size: 20px;
      }

      .user-role {
         color: black;
         font-size: 18px;
         font-weight: bold;
      }

      .user-actions {
         display: flex;
         gap: 20px;
      }

      .action-btn {
         background-color: white;
         border: none;
         border-radius: 50%;
         padding: 10px;
         cursor: pointer;
         width: 40px;
         height: 40px;
         transition: background-color 0.3s ease;
      }

      /* .action-btn img {
         width: 20px;
         height: 20px;
      } */

      .action-btn:hover {
         background-color: #e0e0e0;
      }

      .container {
         width: 90%;
         max-width: 1200px;
         margin: 20px auto;
         text-align: center;
      }

      h1 {
         font-size: 36px;
         margin-bottom: 20px;
      }

      .search-bar {
         margin-bottom: 40px;
      }

      .search-bar input {
         width: 60%;
         padding: 10px;
         font-size: 16px;
         border: 1px solid #ddd;
         border-radius: 25px;
         outline: none;
      }

      .search-bar button {
         padding: 10px 20px;
         font-size: 16px;
         background-color: #333;
         color: white;
         border: none;
         cursor: pointer;
         margin-left: -50px;
         border-radius: 25px;
      }

      .categories {
         margin-top: 20px;
      }

      .category-list {
         display: flex;
         justify-content: space-around;
         flex-wrap: wrap;
         gap: 20px;
      }

      .category-item {
         display: flex;
         flex-direction: column;
         align-items: center;
         padding: 20px;
         background-color: #fff;
         border: 1px solid #ddd;
         border-radius: 10px;
         width: 120px;
         transition: transform 0.3s ease;
         box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);
      }

      .category-item:hover {
         transform: scale(1.05);
         box-shadow: 0px 6px 8px rgba(0, 0, 0, 0.15);
      }

      .category-icon {
         width: 50px;
         height: 50px;
         margin-bottom: 10px;
      }

      .category-item span {
         font-size: 16px;
         color: #333;
         font-weight: 500;
      }
   </style>
</head>

<body>
   <!-- header  -->
   <header class="user-header">
      <div class="user-info">
         <!-- <img src="user-icon.png" alt="User Icon" class="user-icon"> -->
         <i class="bi bi-person-circle" style="font-size: 40px; margin-left:10px; margin-right:20px;"></i>
         <div class="user-text">
            <span class="user-name">User</span>
            <span class="user-role">Customer</span>
         </div>
      </div>
      <div class="user-actions">
         <button class="action-btn">
            <!-- <img src="bell-icon.png" alt="Notification Icon"> -->
            <a href="./notifikasi.php"><i class="bi bi-bell"></i></a>
         </button>
         <button class="action-btn">
            <!-- <img src="cart-icon.png" alt="Cart Icon"> -->
            <a href="./keranjang.php"><i class="bi bi-cart"></i></a>
         </button>
      </div>
   </header>

   <div class="container">
      <h1 class="text-3xl font-bold mb-4">CURE & CARE</h1>

      <!-- In your dashboard.php -->
      <div class="search-bar">
         <form action="search.php" method="GET">
            <input type="text" name="search" placeholder="Search by product name" id="searchInput" required>
            <button type="submit">Search</button>
         </form>
      </div>


      <!-- Categories Section -->
      <div class="mb-6">
         <h2 class="text-2xl font-bold mb-4" style="margin-left: auto; margin-right:1120px;">
            Categories
         </h2>
         <div class="flex space-x-4">
            <div class="bg-white p-4 rounded-lg shadow-md flex items-center space-x-2">
               <i class="fas fa-syringe text-pink-500">
               </i>
               <span>
                  Diabetes
               </span>
            </div>
            <div class="bg-white p-4 rounded-lg shadow-md flex items-center space-x-2">
               <i class="fas fa-dumbbell text-green-500">
               </i>
               <span>
                  Fitness
               </span>
            </div>
            <div class="bg-white p-4 rounded-lg shadow-md flex items-center space-x-2">
               <i class="fas fa-heartbeat text-gray-500">
               </i>
               <span>
                  Kolestrol
               </span>
            </div>
            <div class="bg-white p-4 rounded-lg shadow-md flex items-center space-x-2">
               <i class="fas fa-pills text-blue-500">
               </i>
               <span>
                  Antibiotik
               </span>
            </div>
            <div class="bg-white p-4 rounded-lg shadow-md flex items-center space-x-2">
               <i class="fas fa-brain text-brown-500">
               </i>
               <span>
                  Psikiatri
               </span>
            </div>
         </div>
      </div>
      <div>
         <h2 class="text-2xl font-bold mb-4" style="margin-left: auto; margin-right:1060px;">
            Latest Products
         </h2>
         <div class="flex space-x-5 overflow-x-auto">
            <div class="bg-white p-4 rounded-lg shadow-md text-center min-w-[150px]">
               <img alt="Image of Diabetone product" class="mx-auto mb-2" height="100" src="https://storage.googleapis.com/a1aa/image/HNwdFLecenmkW0kUtfbXHFkIyvWFmQgjzVv5Ga0faCM3ZoqOB.jpg" width="100" />
               <div class="product-name">Diabetone</div>
               <div class="text-gray-500">
                  Rp. 54.000
               </div>
            </div>
            <div class="bg-white p-4 rounded-lg shadow-md text-center min-w-[150px]">
               <img alt="Image of Stator 10mg Tablet product" class="mx-auto mb-2" height="100" src="https://storage.googleapis.com/a1aa/image/Ufh65kUNXejfwJEWb4N3rtfZpjerP57KzDr6H3ySPPMG0QVdC.jpg" width="100" />
               <div class="product-name">Stator 10mg Tablet</div>
               <div class="text-gray-500">
                  Rp. 21.780
               </div>
            </div>
            <div class="bg-white p-4 rounded-lg shadow-md text-center min-w-[150px]">
               <img alt="Image of Azithromycin product" class="mx-auto mb-2" height="100" src="https://storage.googleapis.com/a1aa/image/0ZIPY6WjR4bLM1Dm09vbrMwMSg9Fx9iFob6R6ntmTZgmhq6E.jpg" width="100" />
               <div class="product-name">Azithromycin</div>
               <div class="text-gray-500">
                  Rp. 7.325
               </div>
            </div>
            <div class="bg-white p-4 rounded-lg shadow-md text-center min-w-[150px]">
               <img alt="Image of Bralin 1000mg product" class="mx-auto mb-2" height="100" src="https://storage.googleapis.com/a1aa/image/2izKhHOSN2aqLBjfF2CRpheP7WdMfotnmddYNTyF8292MUVnA.jpg" width="100" />
               <div>
                  Bralin 1000mg
               </div>
               <div class="text-gray-500">
                  Rp. 23.906
               </div>
            </div>
            <div class="bg-white p-4 rounded-lg shadow-md text-center min-w-[150px]">
               <img alt="Image of Isolate product" class="mx-auto mb-2" height="100" src="https://storage.googleapis.com/a1aa/image/w57rqblMdQJPA5LNrM9EJyB063oszzOyfChhgU83WQkMDV1JA.jpg" width="100" />
               <div>
                  Isolate
               </div>
               <div class="text-gray-500">
                  Rp. 525.000
               </div>
            </div>
            <div class="bg-white p-4 rounded-lg shadow-md text-center min-w-[150px]">
               <img alt="Image of Listerine product" class="mx-auto mb-2" height="100" src="https://storage.googleapis.com/a1aa/image/fiW13LEzTAzKDqMitfUGx9iVAxo4DYwWOOAejyvNoRDfZoqOB.jpg" width="100" />
               <div>
                  Listerine
               </div>
               <div class="text-gray-500">
                  Rp. 50.000
               </div>
            </div>
            <div class="bg-white p-4 rounded-lg shadow-md text-center min-w-[150px]">
               <img alt="Image of Product 7" class="mx-auto mb-2" height="100" src="https://storage.googleapis.com/a1aa/image/0BifvI9stuU1XaPcisoZAKmz7x0lFFBb9xm3JO937K9mIV1JA.jpg" width="100" />
               <div>
                  Product 7
               </div>
               <div class="text-gray-500">
                  Rp. 30.000
               </div>
            </div>
            <div class="bg-white p-4 rounded-lg shadow-md text-center min-w-[150px]">
               <img alt="Image of Product 8" class="mx-auto mb-2" height="100" src="https://storage.googleapis.com/a1aa/image/NZl3aFeYwV25N6jewBnofpbgdCrBVYpPrjkPRywc9K0SiUVnA.jpg" width="100" />
               <div>
                  Product 8
               </div>
               <div class="text-gray-500">
                  Rp. 40.000
               </div>
            </div>
            <div class="bg-white p-4 rounded-lg shadow-md text-center min-w-[150px]">
               <img alt="Image of Product 9" class="mx-auto mb-2" height="100" src="https://storage.googleapis.com/a1aa/image/0ydgkQXfrGQdGywf6iPkZVV77iCjXGBOcqZ6oe148zgNiUVnA.jpg" width="100" />
               <div>
                  Product 9
               </div>
               <div class="text-gray-500">
                  Rp. 60.000
               </div>
            </div>
            <div class="bg-white p-4 rounded-lg shadow-md text-center min-w-[150px]">
               <img alt="Image of Product 10" class="mx-auto mb-2" height="100" src="https://storage.googleapis.com/a1aa/image/LX0NUwM9NuavA5f66URK1jpkJWFmcJB4lyTii25H96eIRqqTA.jpg" width="100" />
               <div>
                  Product 10
               </div>
               <div class="text-gray-500">
                  Rp. 70.000
               </div>
            </div>
            <div class="bg-white p-4 rounded-lg shadow-md text-center min-w-[150px]">
               <img alt="Image of Product 11" class="mx-auto mb-2" height="100" src="https://storage.googleapis.com/a1aa/image/aTw8hvYR3G6oFJaFZXP5Ui3oAxZx18FAue6NJAVnxkTlIV1JA.jpg" width="100" />
               <div>
                  Product 11
               </div>
               <div class="text-gray-500">
                  Rp. 80.000
               </div>
            </div>
            <div class="bg-white p-4 rounded-lg shadow-md text-center min-w-[150px]">
               <img alt="Image of Product 12" class="mx-auto mb-2" height="100" src="https://storage.googleapis.com/a1aa/image/WAmRV2YU4Tr7JJeEbmDsnuwPuLFiDrH6tYd75JXXDSTmIV1JA.jpg" width="100" />
               <div>
                  Product 12
               </div>
               <div class="text-gray-500">
                  Rp. 90.000
               </div>
            </div>
         </div>
      </div>

      <!-- Bootstrap 5 JS and Popper.js -->
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
      <script>
         document.querySelectorAll('.category-item').forEach(item => {
            item.addEventListener('click', function() {
               alert(`Category: ${this.querySelector('span').textContent}`);
            });
         });
      </script>
</body>

</html>