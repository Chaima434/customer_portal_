<template lang="HTML">
  <div id="main-wrapper" class="oxyy-login-register">
    <div class="hero-wrap min-vh-100">
      <div class="hero-mask opacity-4 bg-secondary"></div>
      <div class="hero-content d-flex min-vh-100">
        <div class="container my-auto">
          <div class="row">
            <div class="col-md-9 col-lg-7 col-xl-5 mx-auto">
              <div class="hero-wrap rounded shadow-lg p-4 py-sm-5 px-sm-5 my-4">
                <div class="hero-mask opacity-9 bg-dark"></div>
                <div class="hero-content">
                  <div class="logo mb-4">
                    <a
                      class="d-flex justify-content-center"
                      href="index.html"
                      title="Oxyy"
                      ><img
                        src="/logo2_Mcom.png"
                        alt="Oxyy"
                        width="50"
                        height="50"
                    /></a>
                  </div>
                  <div v-if="affiche" class="alert alert-danger alert-dismissible fade show" role="alert">
                    <strong>error !</strong>
                    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                  </div>
                  <form @submit.prevent="resetPassword" class="form-dark" autocomplete="off">
                    <div class="mb-3 icon-group">
                      <label class="link-light mb-2">votre email</label>
                      <input
                        type="email"
                        class="form-control"
                        v-model="state.email"
                        autocomplete="off"
                      />
                      <span v-if="v$.email.$error" class="text-danger">
                        {{ v$.email.$errors[0].$message }}
                      </span>
                    </div>
                    <div class="mb-3 icon-group">
                      <label class="link-light mb-2">code</label>
                      <input
                        type="text"
                        class="form-control"
                        v-model="state.token"
                        autocomplete="off"
                      />
                      <span v-if="v$.token.$error" class="text-danger">
                        {{ v$.token.$errors[0].$message }}
                      </span>
                    </div>
                    <div class="mb-3 icon-group">
                      <label class="link-light mb-2">nouvelle mot de passe</label>
                      <input
                        type="password"
                        class="form-control"
                        v-model="state.password"
                        autocomplete="off"
                      />
                      <span v-if="v$.password.$error" class="text-danger">
                        {{ v$.password.$errors[0].$message }}
                      </span>
                    </div>
                    <div class="mb-3 icon-group">
                      <label class="link-light mb-2">confirme mot de passe</label>
                      <input
                      type="password"
                        class="form-control"
                        v-model="state.confirm"
                        autocomplete="off"
                      />
                      <span v-if="v$.confirm.$error" class="text-danger">
                        {{ v$.confirm.$errors[0].$message }}
                      </span>
                    </div>
                    <div class="d-grid my-4">
                      <button class="btn btn-primary shadow-none" type="submit">
                        Envoyer un code
                      </button>
                    </div>
                  </form>
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
import useValidate from '@vuelidate/core'
import { reactive, computed } from 'vue'
import { required, numeric, minLength, sameAs, email } from '@vuelidate/validators'
export default {
  data() {
    return {
      affiche: false,
    }
  },
  setup() {
    const state = reactive({
      email: "",
      token: "",
      password: "",
      confirm: "",
    })

    const rules = computed(() => {
      return {
        email: { required, email },
        token: { required, numeric },
        password: { required, minLength: minLength(8) },
        confirm: { required, sameAs: sameAs(state.password) },
      }
    })

    const v$ = useValidate(rules, state)
    return {
      state,
      v$,
    }
  },
  methods: {
    resetPassword(){
      this.v$.$validate();
      if (!this.v$.$error) {
        let url = '/api/client/password/reset'
        let fd = new FormData();
        fd.append('email', this.state.email);
        fd.append('token', this.state.token);
        fd.append('password', this.state.password);
        axios.post(url, fd).then(response => {
          if (response.data == 'success') {
            this.$router.push({ name: 'sign-in'})
          }else{
            this.affiche = true;
            setTimeout(() => {
               this.affiche = false
            }, 5000);
          }          
        }).catch(error => {
          console.log(error);
          this.affiche = true;
            setTimeout(() => {
               this.affiche = false
            }, 5000);
        });
      }
    }
  },
}
</script>
<style lang="">
  
</style>