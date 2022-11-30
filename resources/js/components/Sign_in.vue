<template lang="HTML">
  <div id="main-wrapper" class="oxyy-login-register">
    <div class="hero-wrap min-vh-100">
      <div class="hero-mask opacity-4 bg-secondary"></div>
      <!-- <div class="hero-bg hero-bg-scroll" style="background-image: url('./images/login-bg-5.jpg')"></div> -->
      <div class="hero-content d-flex min-vh-100">
        <div class="container my-auto">
          <div class="row">
            <div class="col-md-9 col-lg-7 col-xl-5 mx-auto">
              <div class="hero-wrap rounded shadow-lg p-4 py-sm-5 px-sm-5 my-4">
                <div class="hero-mask opacity-9 bg-dark"></div>
                <div class="hero-content">
                  <div class="logo mb-4">
                    <a class="d-flex justify-content-center" href="" title="MCOM">
                      <img src="/logo2_Mcom.png" alt="MCOM" width="50" height="50" />
                    </a>
                  </div>
                  <div v-if="affiche" class="alert alert-danger alert-dismissible fade show" role="alert">
                    <strong>error !</strong>
                    <!-- <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button> -->
                  </div>
                  <form id="loginForm" class="form-dark" @submit.prevent="signIn()" autocomplete="off">
                    <div class="mb-3 icon-group">
                      <input type="email" class="form-control" id="emailAddress" placeholder="Email Address"
                        v-model="state.email" />
                      <span class="icon-inside"><i class="fas fa-envelope"></i></span>
                      <span v-if="v$.email.$error" class="text-danger">
                        {{ v$.email.$errors[0].$message }}
                      </span>
                    </div>
                    <div class="mb-3 icon-group">
                      <input type="password" autocomplete="new-password" class="form-control" id="loginPassword"
                        placeholder="Password" v-model="state.password" />
                      <span class="icon-inside"><i class="fas fa-lock"></i></span>
                      <span v-if="v$.password.$error" class="text-danger">
                        {{ v$.password.$errors[0].$message }}
                      </span>
                    </div>
                    <div class="d-grid my-4">
                      <button class="btn btn-primary shadow-none" type="submit">
                        Sign In
                      </button>
                    </div>
                    <div class="row mt-4">
                      <!-- <div class="col">
                        <div class="form-check">
                          <input id="remember-me" name="remember" class="form-check-input" type="checkbox" />
                          <label class="form-check-label text-light text-2" for="remember-me">Remember Me</label>
                        </div>
                      </div> -->
                      <div class="col text-end">
                        <router-link class="text-2 link-light" :to="{ name: 'forgotPassword'}" >Mot de passe oublié ?</router-link>
                      </div>
                    </div>
                  </form>
                  <!-- <div class="d-flex align-items-center mt-2 mb-3">
                    <hr class="flex-grow-1 bg-light" />
                    <span class="mx-2 text-muted text-2">Or Login with</span>
                    <hr class="flex-grow-1 bg-light" />
                  </div>
                  <div class="d-flex flex-column align-items-center mb-3">
                    <ul class="social-icons social-icons-rounded">
                      <li class="social-icons-facebook">
                        <a href="#" data-bs-toggle="tooltip" data-bs-original-title="Log In with Facebook"><i
                            class="fab fa-facebook-f"></i></a>
                      </li>
                      <li class="social-icons-twitter">
                        <a href="#" data-bs-toggle="tooltip" data-bs-original-title="Log In with Twitter"><i
                            class="fab fa-twitter"></i></a>
                      </li>
                      <li class="social-icons-google">
                        <a href="#" data-bs-toggle="tooltip" data-bs-original-title="Log In with Google"><i
                            class="fab fa-google"></i></a>
                      </li>
                      <li class="social-icons-linkedin">
                        <a href="#" data-bs-toggle="tooltip" data-bs-original-title="Log In with Linkedin"><i
                            class="fab fa-linkedin-in"></i></a>
                      </li>
                    </ul>
                  </div> -->
                  <br>
                  <hr class="text-warning">
                  <br>
                  <p class="text-2 text-muted text-center mb-0">
                    <router-link :to="{ name: 'sign-up'}" class="text-3 link-light">S'inscrire maintenant</router-link>
                  </p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>
<script>
import { mapActions } from 'vuex'
import useValidate from '@vuelidate/core'
import { required, email, minLength } from '@vuelidate/validators'
import { reactive, computed } from 'vue'
export default {
  data() {
    return {
      affiche: false,
      // ClientChoices : null
    }
  },
  setup() {
    const state = reactive({
      email: "",
      password: "",
    })

    const rules = computed(() => {
      return {
        email: { required, email },
        password: { required, minLength: minLength(8) },
      }
    })

    const v$ = useValidate(rules, state)
    return {
      state,
      v$,
    }
  },
  methods: {
    ...mapActions(["login"]),
    signIn() {
      this.affiche = false;
      this.v$.$validate();
      if (!this.v$.$error) {
        let fd = new FormData();
        fd.append('email', this.state.email);
        fd.append('password', this.state.password);
        if (sessionStorage.getItem("ClientCoices")) {
          fd.append('ClientCoices', sessionStorage.getItem("ClientCoices"));
          fd.append('price', sessionStorage.getItem("price"));
          //sessionStorage.removeItem("ClientCoices");
        }
        this.$store.dispatch('login', fd)
          .then(() => this.$router.push({ name: 'DashboardClient'}))
          .catch(error => {
            this.affiche = true;
            setTimeout(() => {
              this.affiche = false;
            }, 1500);
          })
      }
    },
  }
}
</script>
<style lang="css">
.oxyy-login-register .hero-wrap {
  position: relative;
  overflow: hidden;
}

.oxyy-login-register .hero-wrap .hero-mask {
  z-index: 1;
}

.oxyy-login-register .hero-wrap .hero-mask {
  position: absolute;
  top: 0;
  left: 0;
  height: 100%;
  width: 100%;
}

.oxyy-login-register .bg-dark {
  background-color: #111418 !important;
}

.oxyy-login-register .opacity-9 {
  opacity: 0.9;
}

.oxyy-login-register .hero-wrap .hero-content {
  position: relative;
  z-index: 2;
}

form {
  padding: 0;
  margin: 0;
  display: inline;
}

.oxyy-login-register .icon-group {
  position: relative;
}

.oxyy-login-register .form-dark .form-control {
  border-color: #232a31;
  background: #232a31;
  color: #fff;
}

.oxyy-login-register .icon-group .form-control {
  padding-left: 44px;
}

.oxyy-login-register .form-control:not(.form-control-sm) {
  padding: 0.81rem 0.96rem;
  height: inherit;
}

.oxyy-login-register .form-control {
  border-color: #dae1e3;
  font-size: 16px;
  color: #656565;
}

.oxyy-login-register .form-dark .icon-group .icon-inside {
  color: #777b7f;
}

.oxyy-login-register .icon-group .icon-inside {
  position: absolute;
  width: 50px;
  height: 54px;
  left: 0;
  top: 0;
  pointer-events: none;
  font-size: 18px;
  font-size: 1.125rem;
  color: #c4c3c3;
  z-index: 3;
  display: flex;
  -ms-flex-align: center !important;
  align-items: center !important;
  -ms-flex-pack: center !important;
  justify-content: center !important;
}

.oxyy-login-register .btn-primary {
  background-color: #dc3545;
  border-color: #dc3545;
}

.oxyy-login-register .text-2 {
  font-size: 14px !important;
  font-size: 0.875rem !important;
}

p {
  line-height: 1.8;
}
</style>