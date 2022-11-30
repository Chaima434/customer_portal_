import { createRouter, createWebHistory } from "vue-router";
import store from "../store/store";
import Welcome from "../components/Welcome";
import Formulaire from "../components/Formulaire";
import Sign_up from "../components/Sign_up";
import Sign_in from "../components/Sign_in";
import DashboardClient from "../components/DashboardClient";
import ProfilClient from "../components/ProfilClient";
import ClientApplication from "../components/ClientApplication";
import ResetPassword from "../components/ResetPassword";
import ForgotPassword from "../components/ForgotPassword";
import CustomApp from "../components/CustomApp";
import ApplicationDetails from "../components/ApplicationDetails";
import GetDetailsForm2 from "../components/GetDetailsForm2";
// import './css/tailwind.css'
/*import Feature from "../components/Feature";
import Pricing from "../components/Pricing";
import Hero from "../components/Hero";
import Layout from "../components/Layout/Layout";
import SeoHead from "../components/SeoHead";*/



const routes = [
  {
    path: '/mcom/:id?',
    name: 'Welcome',
    component: Welcome,
    //meta : {guest: true}
  },
  {
    path: '/mcom/form/:idClient?/:idApp?',
    name: 'Formulaire',
    component: Formulaire,
    //meta : {requireAuth: true}
  },
  {
    path: '/mcom/sign-up',
    name: 'sign-up',
    component: Sign_up,
    meta : {guest: true}
  },
  {
    path: '/mcom/sign-in',
    name: 'sign-in',
    component: Sign_in,
    meta : {guest: true}
  },
  {
    path: '/mcom/dashboard-client',
    name: 'DashboardClient',
    component: DashboardClient,
    meta : {requireAuth: true}
  },
  {
    path: '/mcom/profil',
    name: 'profil',
    component: ProfilClient,
    meta : {requireAuth: true}
  },
  {
    path: '/mcom/mes-application',
    name: 'mes-application',
    component: ClientApplication,
    meta : {requireAuth: true}
  },
  {
    path: '/mcom/reset-password',
    name: 'resetPassword',
    component: ResetPassword,
    meta : {guest: true}
  },
  {
    path: '/mcom/forgot-password',
    name: 'forgotPassword',
    component: ForgotPassword,
    meta : {guest: true},   
  },
  {
    path: '/mcom/completer/:idApp',
    name: 'completerApp',
    component: CustomApp,
    meta : {requireAuth: true},   
  },
  {
    path: '/mcom/application/details/:idApp',
    name: 'applicationDetails',
    component: ApplicationDetails,
    meta : {requireAuth: true},   
  },

  {
    path: '/mcom/GetDetailsForm2/:idApp',
    name: 'GetDetailsForm2',
    component: GetDetailsForm2,
    meta : {requireAuth: true},   
  }
  
];


const router = createRouter({
  history: createWebHistory(),
  routes,
});
//const idClient = store.getters.getClient.id;
router.beforeEach((to, from, next) => {
  document.title = to.name;
  if (to.matched.some((record) => record.meta.requireAuth)) {    
    if (store.getters.isLoggedIn) {
      next();
      return;
    }
    next("/mcom/sign-in");
  } else {
    next();
  }
  
});

router.beforeEach((to, from, next) => {
  document.title = to.name;
  if (to.matched.some((record) => record.meta.guest)) {
    if (store.getters.isLoggedIn) {
      next("/mcom/dashboard-client");
      return;
    }
    next();
  } else {
    next();
  }
});

export default router;
