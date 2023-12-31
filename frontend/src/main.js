import { createApp } from 'vue';
import router from './router'; 
import App from './App.vue';
import axios from 'axios';
import './css/style.css';
import './css/responsive.css';
import 'bootstrap/dist/css/bootstrap.css';
import 'bootstrap-vue-3/dist/bootstrap-vue-3.css'; // Updated import
import { BootstrapVue } from 'bootstrap-vue-3'; // Updated import

axios.defaults.baseURL = 'http://127.0.0.1:8000/';


const app = createApp(App); // Create the app instance first
app.use(BootstrapVue); // Use BootstrapVue

app.config.globalProperties.$axios = axios; // Then set the global properties

app.use(router);
app.mount('#app'); // Make sure the id matches the id of the root element in your index.html