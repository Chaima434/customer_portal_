<template lang="">
  <navbar />
  <div class="container">
    <div class="d-flex justify-content-center content">
    <div class="col-lg-6 custom-form">
      <form @submit.prevent="saveData()">
          <div class="mb-3">
            <label class="form-label">nom de l'application {{AppName.nom}}</label>
            <input
              type="text"
              class="form-control"
              v-model="AppName['nom']" 
              required
            />
            
          </div>
          <div class="mb-3">
            <label for="exampleFormControlInput1" class="form-label"
              >Font</label
            >
            <input
              type="text"
              class="form-control"
              v-model="AppName['font']"
              required
            />
          </div>
          <div class="mb-3">
            <label for="exampleColorInput" class="form-label"
              >Color 1</label
            >
            <input
              type="color"
              class="form-control form-control-color"
              title="Choisissez votre couleur"
              v-model="AppName['color1']"
              required
            />
          </div>
          <div class="mb-3">
            <label for="exampleColorInput" class="form-label"
              >Color 2</label
            >
            <input
              type="color"
              class="form-control form-control-color"
              title="Choisissez votre couleur"
              v-model="AppName['color2']"
              required
            />
          </div>
          <div class="mb-3">
            <label for="exampleColorInput" class="form-label"
              >Color 3</label
            >
            <input
              type="color"
              class="form-control form-control-color"
              title="Choisissez votre couleur"
              v-model="AppName['color3']"
              required
            />
          </div>
          <div class="mb-3">
            <label for="formFile" class="form-label">logo</label>
            <input
              class="form-control"
              type="file"
              :id="'logoInput'+idApp"
              @change="onSelectFile($event, 'logoFile'+idApp,'logoInput'+idApp, 'logo')"
              required
            />
            <span 
            :id="'logoFile'+idApp" 
            class="text-danger">
            </span>
          </div>
          <div class="mb-3">
            <label for="formFile" class="form-label">icon</label>
            <input 
            class="form-control" 
            type="file"
            :id="'iconInput'+idApp"
            @change="onSelectFile($event, 'iconFile'+idApp,'iconInput'+idApp,'icon')" 
            required >
            <span :id="'iconFile'+idApp" class="text-danger"></span>
          </div>
        <div class="d-flex justify-content-center">
          <button type="submit" class="submit" >
            {{ SubmitBt }}
          </button>
        </div>
      </form>
    </div>
    </div>
  </div>
</template>
<script>
  import Navbar from "./Navbar";
  import axios from 'axios';
  import { mapGetters } from "vuex";
  //window._asset = '{{ asset('') }}';

  export default {
    components: { Navbar },
    data() {
      return {
        
        idApp: this.$route.params.idApp,
        AppName: {
          color1: '#000000',
          color2: '#000000',
          color3: '#000000',
        },
        ClientCoices2:{},
        SubmitBt: 'Enregistrer'
      };
    },
    computed: {
    ...mapGetters({
      client: "getClient",
      isLoggedIn: "isLoggedIn"
    }),
    },
    methods: {
      updateApp() {
      let fd = new FormData();
      let url = "api/complet/applicaton/"+this.idApp;
          fd.append("nom", this.AppName.nom);
          fd.append("font", this.AppName.font);
          fd.append("logo", this.AppName.logo);
          fd.append("icon", this.AppName.icon);
          fd.append("color1", this.AppName.color1);
          fd.append("color2", this.AppName.color2);
          fd.append("color3", this.AppName.color3);
          
        axios.post(url, fd,{
          headers: { "Content-Type": "multipart/form-data" }
        }).then(response => {
          console.log(response.data);
          this.AppName = 
          {
          color1: '#000000',
          color2: '#000000',
          color3: '#000000',
          }
          
          // document.getElementById('logoInput'+this.idApp).value= null
          // document.getElementById('iconInput'+this.idApp).value= null
        }).catch(error => {
          console.log(error);
        });
    },

    onSelectFile(e, titre , idInput,type) {        
      let file = e.target.files;
      let error = document.getElementById(titre);
      let typeFiles = ["image/png", "image/jpeg", "image/jpg", "image/gif"];
      let inputFile = document.getElementById(idInput);
      if (file.length == 1) {
        error.innerText = "";
        if (!typeFiles.includes(file[0].type)) {
          error.innerText = "select image stp";
          inputFile.value = "";
          
        }
        else if (file[0].size > 5000000) {
          error.innerText = "Please choose a photo less than 5 MB";
          inputFile.value = "";
        }
        else 
        {
          if (type == 'logo') {
            this.AppName.logo = e.target.files[0];
          }
          else
          {
            if (type == 'icon')
            {
               this.AppName.icon = e.target.files[0];
            }
           
          }
        }
      }
    },
    
    saveData() {
      let fd2 = new FormData();
      this.updateApp()
      console.log(JSON.stringify(this.AppName));
      fd2.append("ClientCoices2", JSON.stringify(this.AppName))
      sessionStorage.setItem("ClientCoices2", JSON.stringify(this.AppName))
      this.$router.push({ name: 'DashboardClient'})
    },
    
    updated() {
      this.updateApp();
      console.log(this.AppName)
    },
  }
  };
</script>

<style lang="scss">
  .content{
  
    .custom-form{
      box-shadow: 15px 15px 30px #221d19, -15px -15px 30px #221d19;
      padding: 1rem;
      border-radius: 15px;
      border: 5px solid #f06b0d;
    }

    .submit{
        position: relative;
        right: inherit;
      }
      
  }
</style>