<template>
   <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
      <div class="container-fluid">
         <router-link class="navbar-brand" :to="{ name: 'Welcome'}">Accueil</router-link>
         <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
         </button>
         <div class="collapse navbar-collapse" id="navbarSupportedContent" v-if="isLoggedIn">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
               <li class="nav-item">
                  <router-link class="nav-link" :to="{ name: 'DashboardClient'}">Dashboard</router-link>
               </li>

               <li class="nav-item dropdown">
                  <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                     data-bs-toggle="dropdown" aria-expanded="false">
                     {{ user.name }}
                  </a>
                  <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                     <li>
                        <router-link :to="{ name: 'Formulaire'}" class="dropdown-item">
                           Nouvelle Application
                        </router-link>
                     </li>
                     <li>
                        <router-link :to="{ name: 'profil'}" class="dropdown-item">
                           Profile
                        </router-link>
                     </li>
                     <li>
                        <router-link :to="{ name: 'mes-application'}" class="dropdown-item">
                           Mes Applications
                        </router-link>
                     </li>
                     <li>
                        <hr class="dropdown-divider">
                     </li>
                     <li>
                        <span class="dropdown-item btn" @click="logout()">Déconnexion</span>
                     </li>
                  </ul>
               </li>
            </ul>
         </div>
         <div class="collapse navbar-collapse" id="navbarSupportedContent" v-else>
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
               <li class="nav-item">
                  <router-link :to="{ name: 'Formulaire'}" class="nav-link">Nouvelle Application</router-link>
               </li>
               <li class="nav-item">
                  <router-link :to="{ name: 'sign-in'}" class="nav-link">Login</router-link>
               </li>
               <li class="nav-item">
                  <router-link :to="{ name: 'sign-up'}" class="nav-link">Register</router-link>
               </li>
            </ul>
         </div>
      </div>
   </nav>

</template>

<script>
import { mapGetters } from "vuex";
export default {
   data() {
      return {
         client: ''
      }
   },
   computed: {
      isLoggedIn: function () {
         return this.$store.getters.isLoggedIn
      },
      ...mapGetters({ user: "getClient" }),
   },
   created() {
      if (this.isLoggedIn) {
         this.$store.dispatch('getClient');
      }
   },
   methods: {
      async logout() {
         await this.$store.dispatch('logout')
         this.$router.push({ name: 'sign-in'})
      }
   },
}
</script>