require('./bootstrap');
import 'bootstrap/dist/css/bootstrap.min.css';
import { createApp } from 'vue';
import './axios'
import router from './router';
import store from './store/store';
import Welcome from "./components/Welcome";
import Formulaire from "./components/Formulaire";
import Sign_up from "./components/Sign_up";
import Sign_in from "./components/Sign_in";
import DashboardClient from "./components/DashboardClient";
import ProfilClient from "./components/ProfilClient";
import ClientApplication from "./components/ClientApplication";
import ResetPassword from "./components/ResetPassword";
import ForgotPassword from "./components/ForgotPassword";
import CustomApp from "./components/CustomApp";
import ApplicationDetails from "./components/ApplicationDetails";
import GetDetailsForm2 from "./components/GetDetailsForm2";
import 'bootstrap/dist/js/bootstrap.min.js';
// import './css/tailwind.css'
createApp({
  components: {
    Welcome,
    Formulaire,
    Sign_up,
    Sign_in,
    DashboardClient,
    ProfilClient,
    ClientApplication,
    ResetPassword,
    ForgotPassword,
    CustomApp,
    ApplicationDetails,
    GetDetailsForm2
  }
})
.use(router)
.use(store)
.mount('#app');

