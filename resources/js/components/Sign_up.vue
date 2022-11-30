<template lang="">
<div class="wrapper">
  <section class="container-fluid bg-circle-login vh-100">
    <div class="row align-items-center">
      <div
        class="col-md-12 col-lg-6 d-lg-flex d-none overflow-hidden image-mcom"
      >
        <img src="/logo_Mcom.png" class="img-fluid sign-in-img" alt="images" />
      </div>
      <div class="col-md-12 col-lg-6 formulaire">
        <div class="d-flex justify-content-center mb-0">
          <div class="card-body mt-5">
            <a href="#">
              <img src="/logo_Mcom.png" alt="img5" width="50px" height="50px" />
            </a>
            <!-- <div v-if="affiche" class="alert alert-success d-flex align-items-center" role="alert">
              <svg class="bi flex-shrink-0 me-2" width="24" height="24" role="img" aria-label="Success:"><use xlink:href="#check-circle-fill"/></svg>
              <div>
                Success
              </div>
              <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
            </div> -->
            <!-- <div v-if="showError">
              <span v-if="errors">
                  <small v-for="error in errors" class="text-danger d-block">{{ error[0] }}</small>
              </span>
            </div> -->
            <h2 class="mb-2 text-center">S'inscrire</h2>
            <p class="text-center">Créez votre compte Mcom.</p>
            <form @submit.prevent="submitForm" autocomplete="off">
              <div class="row">
                <div class="col-lg-6 mb-3">
                  <div class="form-group">
                    <label for="full-name" class="form-label">Nom</label>
                    <input
                      type="text"
                      class="form-control form-control-sm"
                      id="full-name"
                      placeholder=" "
                      autocomplete="off"
                      v-model="state.name"
                    />
                  </div>
                  <span v-if="v$.name.$error" class="text-danger">
                    {{v$.name.$errors[0].$message}}
                  </span>
                </div>
                <div class="col-lg-6 mb-3">
                  <div class="form-group">
                    <label for="last-name" class="form-label">Prénom</label>
                    <input
                      type="text"
                      class="form-control form-control-sm"
                      id="last-name"
                      placeholder=" "
                      autocomplete="off"
                      v-model="state.lastName"
                    />
                  </div>
                  <span v-if="v$.lastName.$error" class="text-danger">
                    {{v$.lastName.$errors[0].$message}}
                  </span>
                </div>
                <div class="col-lg-6 mb-3">
                  <div class="form-group">
                    <label for="email" class="form-label">Email</label>
                    <input
                      type="email"
                      class="form-control form-control-sm"
                      id="email"
                      placeholder=" "
                      autocomplete="off"
                      v-model="state.email"
                    />
                  </div>
                  <span v-if="v$.email.$error" class="text-danger">
                    {{v$.email.$errors[0].$message}}
                  </span>
                </div>
                <div class="col-lg-6 mb-3">
                  <div class="form-group">
                    <label for="phone" class="form-label">Numéro de téléphone.</label>
                    <input
                      type="text"
                      class="form-control form-control-sm"
                      id="phone"
                      placeholder=" "
                      autocomplete="off"
                      v-model="state.phoneNumber"
                    />
                  </div>
                  <span v-if="v$.phoneNumber.$error" class="text-danger">
                    {{v$.phoneNumber.$errors[0].$message}}
                  </span>
                </div>
                <div class="col-lg-6 mb-3">
                  <div class="form-group">
                    <label for="password" class="form-label">Mot de passe</label>
                    <input
                      type="password"
                      class="form-control form-control-sm"
                      id="password"
                      placeholder=" "
                      autocomplete="new-password"
                      v-model="state.password"
                    />
                  </div>
                  <span v-if="v$.password.$error" class="text-danger">
                    {{v$.password.$errors[0].$message}}
                  </span>
                </div>
                <div class="col-lg-6 mb-3">
                  <div class="form-group">
                    <label for="confirm-password" class="form-label"
                      >Confirmez le mot de passe</label
                    >
                    <input
                      type="password"
                      class="form-control form-control-sm"
                      id="confirm-password"
                      placeholder=" "
                      autocomplete="new-password"
                      v-model="state.passwordConfirm"
                    />
                  </div>
                  <span v-if="v$.passwordConfirm.$error" class="text-danger">
                    {{v$.passwordConfirm.$errors[0].$message}}
                  </span>
                </div>
                
                <!-- <div class="col-lg-12 d-flex justify-content-center">
                  <div class="form-check mb-3 mt-3">
                    <input
                      type="checkbox"
                      class="form-check-input Input-checkbox"
                      id="customCheck1"
                      v-model="state.checkbox"
                    />
                    <label class="form-check-label" for="customCheck1"
                      >J'accepte les conditions d'utilisation</label
                    >
                  </div>
                  <span v-if="v$.checkbox.$error" class="text-danger">
                    {{v$.checkbox.$errors[0].$message}}
                  </span>
                </div> -->
              </div>
              <div class="d-flex justify-content-center">
                <button type="submit" class="btn btn-submit">S'inscrire</button>
              </div>
              <!-- <p class="text-center my-3">ou vous connecter avec d'autres comptes ?</p>
              <div class="d-flex justify-content-center">
                <ul class="list-group list-group-horizontal list-group-flush">
                  <li class="list-group-item border-0 pb-0">
                    <a href="#"
                      ><img
                        src="https://templates.iqonic.design/aprycot/html/dashboard/dist/assets/images/brands/gm.svg"
                        alt="gm"
                    /></a>
                  </li>
                  <li class="list-group-item border-0 pb-0">
                    <a href="#"
                      ><img
                        src="https://templates.iqonic.design/aprycot/html/dashboard/dist/assets/images/brands/fb.svg"
                        alt="fb"
                    /></a>
                  </li>
                  <li class="list-group-item border-0 pb-0">
                    <a href="#"
                      ><img
                        src="https://templates.iqonic.design/aprycot/html/dashboard/dist/assets/images/brands/im.svg"
                        alt="im"
                    /></a>
                  </li>
                  <li class="list-group-item border-0 pb-0">
                    <a href="#"
                      ><img
                        src="https://templates.iqonic.design/aprycot/html/dashboard/dist/assets/images/brands/li.svg"
                        alt="li"
                    /></a>
                  </li>
                </ul>
              </div> -->
              <p class="mt-3 text-center">
                Vous avez déjà un compte
                <router-link :to="{ name: 'sign-in'}" class="text-underline sign-in">S'identifier</router-link>
              </p>
            </form>
          </div>
        </div>
      </div>
      
    </div>
  </section>
</div>
</template>
<script>
import { mapActions,mapGetters } from 'vuex'
import useValidate from '@vuelidate/core'
import { required, email, minLength, sameAs, numeric } from '@vuelidate/validators'
import { reactive, computed } from 'vue'
export default {
  data(){
    return {
      affiche: false,
      //showError: false,
    }
  },
  setup(){
    const state = reactive({
      name: "",
      lastName: "",
      email: "",
      phoneNumber: "",
      password: "",
      passwordConfirm: "",
      checkbox: "",
    })

    const rules = computed(() => {
      return {
      name: { required },
      lastName: { required },
      email: { required, email },
      phoneNumber: { required, numeric },
      password: { required, minLength: minLength(8) },
      passwordConfirm: { required, sameAs: sameAs(state.password) },
    }
    })

    const v$ = useValidate(rules, state)
    return {
      state,
      v$,
    }
  },
  computed: {
	      ...mapGetters({ errors: "getError"}),
        ...mapActions(["Register"]),
	   },
  methods:{
    saveData() {
            let fd = new FormData();
                fd.append('name',this.state.name);
                fd.append('lastName',this.state.lastName);
                fd.append('email',this.state.email);
                fd.append('password',this.state.password);
                fd.append('phoneNumber',this.state.phoneNumber);
                if (sessionStorage.getItem("ClientCoices") && sessionStorage.getItem("price")) {
                  fd.append('ClientCoices',sessionStorage.getItem("ClientCoices"));
                  fd.append('price',sessionStorage.getItem("price"));
                  //sessionStorage.removeItem("ClientCoices");
                }
            this.$store.dispatch('Register', fd)
		         .then((response) => {
              if (response.status == 200) {
                  this.$router.push({ name: 'DashboardClient'})
                  //console.log(response.data)
                }              
             } )
		         .catch(err =>{
		            //this.showError = true;
                console.log(err)
		         })
    },
    async submitForm() {
      this.v$.$validate();
      if (!this.v$.$error) {
        this.saveData();
      }
    },
  }
}
</script>
<style lang="css">
  .formulaire{
    background: #ccc;
    height: 100vh;
    padding: 20px 50px;
    color: #002358;
    font-weight: 500;
  }
  .form-control {
    border-radius: 10px;
  }
  .form-control:focus {
    border-color: #ea530e;
    box-shadow: 0 0 10px 0px rgb(234 83 14);
  }
  .Input-checkbox:checked{
    background-color: #ea530e;
    border-color: #ea530e;
  }
  .error{
    color: #a13300;
  }
  .btn-submit{
    color: #fff;
    font-weight: 500;
    background: #ea530e;
    border-color: #ea530e;
  }
  .btn-submit:hover{
    color: #fff;
    font-weight: 500;
    background: #a13300;
    border-color: #a13300;
    cursor: pointer;
  }
  .list-group-item{
    background: #ccc;
  }
  .sign-in{
    color: #ea530e;
  }
  .image-mcom{
    justify-content: center;
    align-items: center;
  }

</style>