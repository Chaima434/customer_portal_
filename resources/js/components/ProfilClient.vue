<template lang="">
  <Navbar />
  <div class="container">
    <div class="d-flex justify-content-center">
      <div class="card" style="width: 18rem">
        <div class="card-body text-center">
          <p class="card-text"><strong>Nom : </strong>{{ user.name }}</p>
          <p class="card-text"><strong>Prénom : </strong>{{ user.lastName }}</p>
          <p class="card-text"><strong>téléphone : </strong>{{ user.phoneNumber }}</p>
          <p class="card-text"><strong>email : </strong>{{ user.email }}</p>
          <button
            type="button"
            class="btn btn-primary mb-2"
            data-bs-toggle="modal"
            data-bs-target="#exampleModal"
          >
            change mes donnes
          </button>

          <button
            type="button"
            class="btn btn-info"
            data-bs-toggle="modal"
            data-bs-target="#changePassword"
          >
            change password
          </button>
        </div>
      </div>
    </div>

    <!-- Modal -->
    <div
      class="modal fade"
      id="exampleModal"
      tabindex="-1"
      aria-labelledby="exampleModalLabel"
      aria-hidden="true"
      style="display: none;"
    >
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
            <button
              type="button"
              class="btn-close"
              data-bs-dismiss="modal"
              aria-label="Close"
            ></button>
          </div>
          <div class="modal-body">
            <div class="mb-3">
              <label for="exampleFormControlInput1" class="form-label"
                >Nom</label
              >
              <input
                type="text"
                class="form-control"
                placeholder="Nom"
                v-model="user.name"
              />
            </div>
            <div class="mb-3">
              <label for="exampleFormControlInput1" class="form-label"
                >Prénom</label
              >
              <input
                type="text"
                class="form-control"
                placeholder="Prénom"
                v-model="user.lastName"
              />
            </div>
            <div class="mb-3">
              <label for="exampleFormControlInput1" class="form-label"
                >Email address</label
              >
              <input
                type="email"
                class="form-control"
                placeholder="name@example.com"
                v-model="user.email"
              />
            </div>
            <div class="mb-3">
              <label for="exampleFormControlInput1" class="form-label"
                >Numéro</label
              >
              <input
                type="text"
                class="form-control"
                placeholder="votre numéro"
                v-model="user.phoneNumber"
              />
            </div>
          </div>
          <div class="modal-footer">
            <button
              type="button"
              class="btn btn-secondary"
              data-bs-dismiss="modal"
            >
              Fermer
            </button>
            <button type="button" class="btn btn-primary" @click="updateClient">
             
              Enregistrer
            </button>
          </div>
        </div>
      </div>
    </div>

    <!-- Modal -->
    <div
      class="modal fade"
      id="changePassword"
      tabindex="-1"
      aria-labelledby="exampleModalLabel"
      aria-hidden="true"
      style="display: none;"
    >
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
            <button
              type="button"
              class="btn-close"
              data-bs-dismiss="modal"
              aria-label="Close"
            ></button>
          </div>
          <div class="modal-body">
            <div v-if="afficheAlert" :class="class" role="alert">
              <strong>{{ msg }}</strong>
              <button
                type="button"
                class="btn-close"
                data-bs-dismiss="alert"
                aria-label="Close"
              ></button>
            </div>
            <form @submit.prevent="changePassword">
              <div class="mb-3">
                <label for="exampleFormControlInput1" class="form-label"
                  >ancien mot de passe</label
                >
                <input
                  type="password"
                  class="form-control"
                  v-model="state.old"
                />
                <span v-if="v$.old.$error" class="text-danger">
                  {{v$.old.$errors[0].$message}}
                </span>
              </div>
              <div class="mb-3">
                <label for="exampleFormControlInput1" class="form-label"
                  >nouveau mot de passe</label
                >
                <input
                  type="password"
                  class="form-control"
                  v-model="state.password"
                />
                <span v-if="v$.password.$error" class="text-danger">
                  {{v$.password.$errors[0].$message}}
                </span>
              </div>
              <div class="mb-3">
                <label for="exampleFormControlInput1" class="form-label"
                  >confirmer mot de passe</label
                >
                <input
                  type="password"
                  class="form-control"
                  v-model="state.confirm"
                />
                <span v-if="v$.confirm.$error" class="text-danger">
                  {{v$.confirm.$errors[0].$message}}
                </span>
              </div>
              <div class="modal-footer">
                <button
                  type="button"
                  class="btn btn-secondary"
                  data-bs-dismiss="modal"
                >
                  Fermer
                </button>
                <button type="submit" class="btn btn-primary">
                  Enregistrer
                </button>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>
<script>
  import { mapGetters } from "vuex";
  import useValidate from "@vuelidate/core";
  import { required, minLength, sameAs } from "@vuelidate/validators";
  import { reactive, computed } from "vue";
  import Navbar from "./Navbar";
  export default {
    components: { Navbar },
    setup() {
      const state = reactive({
        old: "",
        password: "",
        confirm: "",
      });

      const rules = computed(() => {
        return {
          old: { required },
          password: { required, minLength: minLength(8) },
          confirm: { required, sameAs: sameAs(state.password) },
        };
      });

      const v$ = useValidate(rules, state);
      return {
        state,
        v$,
      };
    },
    data() {
      return {
        class: "",
        msg: "",
        afficheAlert: false,
      };
    },
    computed: {
      ...mapGetters({ user: "getClient" }),
    },
    methods: {
      async updateClient() {
        let fd = new FormData();
        fd.append("name", this.user.name);
        fd.append("lastName", this.user.lastName);
        fd.append("email", this.user.email);
        fd.append("phoneNumber", this.user.phoneNumber);
        let url = "/api/client/update/" + this.user.id;
        await axios
          .post(url, fd)
          .then((response) => {
            console.log(response.data.client);
          })
          .catch((error) => {
            console.log(error);
          });
      },

      async changePassword() {
        this.v$.$validate();
        if (!this.v$.$error) {
          let fd = new FormData();
          fd.append("oldPassword", this.state.old);
          fd.append("password", this.state.password);
          let url = "/api/client/password/update/" + this.user.id;
          await axios
            .post(url, fd)
            .then((response) => {
              console.log(response.data);
              this.class = response.data.class;
              this.msg = response.data.msg;
              this.afficheAlert = true;
              setTimeout(() => {
                this.afficheAlert = false;
              }, 5000);
              this.state.old = "";
              this.state.password = "";
              this.state.confirm = "";
            })
            .catch((error) => {
              console.log(error);
            });
        }
      },
    },
  };
</script>
<style lang=""></style>