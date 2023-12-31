// src/router/index.js
import { createRouter, createWebHistory } from 'vue-router';

// Import your 8 Navbar components
import Register from '../components/user/Daftar.vue';
import Login from '../components/user/Login.vue';
import Home from '../components/nav/Home.vue';
import Product from '../components/nav/Product.vue';
import Promo from '../components/nav/Promo.vue';
import Simulasi from '../components/nav/Simulasi.vue';
import Hasil from '../components/nav/HasilSimulasi.vue';
import Contact from '../components/nav/Contact.vue';
import News1 from '../components/nav/News.vue'
import News2 from '../components/nav/News2.vue'
import News3 from '../components/nav/News3.vue'
import Shop from '../components/nav/Shop.vue';
import DashboardAdmin from '../components/isiadmin/DashboardAdmin.vue'; 
import Create from "../components/isiadmin/Create.vue"
import Update from "../components/isiadmin/Update.vue" 
import Detail from '../components/nav/Detail.vue';
import DetailAdmin from '../components/isiadmin/DetailAdmin.vue';


// import Navbar4 from '../components/nav/Navbar4.vue';
// import Navbar5 from '../components/nav/Navbar5.vue';
// import Navbar6 from '../components/nav/Navbar6.vue';


const routes = [
  {
    path: '/',
    name: 'userDashboard',
    component: Home
  },
  { path: '/create',
   name: 'create',
    component: Create },
  { path: '/update/:id',
   name: 'update',
    component: Update },
  { path: '/admin',
   name: 'adminDashboard', 
   component: DashboardAdmin },
  {
    path: '/daftar',
    component: Register
  },
  {
    path: '/login',
    component: Login
  },
  {
    path: '/product',
    component: Product
  },
  // // Repeat the pattern for other routes
  {
    path: '/promo',
    component: Promo
  },
  {
    path: '/simulasi',
    component: Simulasi
  },
  {
    path: '/news1',
    component: News1
  },
  {
    path: '/news2',
    component: News2
  },
  {
    path: '/news3',
    component: News3
  },
  {
    path: '/hasil-simulasi',
    component: Hasil
  },
  {
    path: '/contact',
    component: Contact
  },
  {
    path: '/shop',
    component: Shop
  },
  {
    path: '/motor/:id',
    name: 'detail',
    component: Detail
  },
  {
    path: '/motor/:id',
    name: 'detailadmin',
    component: DetailAdmin
  },
  
];

const router = createRouter({
  history: createWebHistory(),
  routes,
});

export default router;
