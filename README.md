# Laravel-8-Vue-Js-3-CRUD-App

LANGKAH-LANGKAH MEMBUAT BACKEND DENGAN LARAVEL REST API

### Membuat Project Laravel
composer create-project laravel/laravel:^8.0 backend-news
<br>
cd backend-news

### Konfigurasi Koneksi Database di Laravel
B_DATABASE=sesuaikan nama database
<br>
DB_USERNAME=root
<br>
DB_PASSWORD=

### Membuat Model dan Migration
php artisan make:model User -m # ini tidak perlu dijalankan karena sudah tersedia pada laravel
<br>
php artisan make:model Post -m
<br>
php artisan migrate # menjalankan migration database

### Installasi JWT (Json Web Token),  Publish Konfigurasi File, Generate Secreet Key
composer require tymon/jwt-auth:1.0.2
<br>
php artisan vendor:publish -- provider="Tymon\JWTAuth\Providers\LaravelServiceProvider"
<br>
php artisan jwt:secret

###  Konfigurasi Guard API untuk Admin
Secara default untuk Guard api di Laravel menggunakan driver token, maka perlu melakukan perubahan terlebih dahulu ke dalam JWT atau Json Web Token.
Edit pada file config/auth.php

### Konfigurasi Model User dengan JWT
Edit pada bagian app/Models/User.php

### Membuat Resource User, dan Post
php artisan make:resource UserResource
<br>
php artisan make:resource PostResource

### Membuat Controller API login, User, dan Post
php artisan make:controller Api\Admin\LoginController
<br>
php artisan make:controller Api\Admin\UserController
<br>
php artisan make:controller Api\Admin\PostController

### Menambahkan Route
Edit pada bagian routes/api.php

### Membuat User Seeder dan Factory
php artisan make:seeder UserSeeder
<br>
Edit pada bagian database/seeders/UserSeeder. Tambahkan factory sebanyak 10 data dan juga DB insert sebanyak 3 data. Jadi total keseluruhan data user yang dimiliki adalah 13 user.
<br>
composer dump-autoload
<br>
php artisan db:seed --class=UserSeeder

### Jalankan Laravel dan Testing REST Api Mengunakan Postman
php artisan serve

<br>
<br>

LANGKAH-LANGKAH MEMBUAT FRONTEND DENGAN VUE JS 3 DAN VUEX

### Installasi Vue CLI
npm install -g @vue/cli
<br>
npm update -g @vue/cli

### Membuat Project Vue Js 3
vue create frontend-news
<br>
Pilih Vue Js dengan versi 3 atau Vue 3
<br>
cd frontend-news
<br>
Ketika sudah membuat project vue js otomatis akan tersedia node_modules didalam folder project vue js yang telah dibuat.

### Installasi Vue Router, Vuex, Axios, Bootstrap, Jquery, Popper, Pagination Pluggin
npm install vue-router@next
<br>
npm install vuex@next --save
<br>
npm i axios
<br>
npm install bootstrap popper.js jquery
<br>
npm install @hennge/vue3-pagination

### Jalankan Vue Js 
npm run serve

![Login](https://github.com/AnnisaRizki30/BE-Laravel-8-CRUD-App/blob/master/Login.PNG?raw=true)
![User Data](https://github.com/AnnisaRizki30/BE-Laravel-8-CRUD-App/blob/master/Data%20User.PNG?raw=true)
![Post Data](https://github.com/AnnisaRizki30/BE-Laravel-8-CRUD-App/blob/master/Data%20Post.PNG?raw=true)
![Create Post](https://github.com/AnnisaRizki30/BE-Laravel-8-CRUD-App/blob/master/Create%20Post.PNG?raw=true)
![Edit Post](https://github.com/AnnisaRizki30/BE-Laravel-8-CRUD-App/blob/master/Edit%20Post.PNG?raw=true)
![Search Post](https://github.com/AnnisaRizki30/BE-Laravel-8-CRUD-App/blob/master/Search%20Post.PNG?raw=true)
