<template lang="HTML">
  <Navbar />
  <h2 class="text-center">Mes application</h2>
  <div class="container">
    <router-link class="btn btn-info mb-3" :to="{name:'Formulaire'}"><h6>Nouvelle Application</h6></router-link>
    <div v-if="!mesApp.length" class="text-center">
      <img src="/waiting.gif" alt="waiting">
    </div>
    <!--table des application de client q'il à crée -->
    <table v-if="mesApp.length" class="table table-hover table-bordered">
      <thead>
        <tr>
          <th scope="col">ID</th>
          <th scope="col">Prix</th>
          <th scope="col">Action</th>
        </tr>
      </thead>
      <tbody>
        <tr v-for="item in mesApp">
          <td scope="row">{{ item.idApp }}</td>
          <td scope="row">{{ item.App.price }} TND</td>
          <td>
            <router-link class="btn btn-success me-2" :to="{name:'Formulaire', params: { idApp: item.idApp, idClient: client.id }}">Modifier</router-link>
            <router-link class="btn btn-info me-2" :to="{name:'completerApp', params: { idApp: item.idApp }}">completer</router-link>
            <router-link class="btn btn-secondary me-2" :to="{name:'applicationDetails', params: { idApp: item.idApp }}">Voir Details</router-link>
            <router-link class="btn btn-secondary me-2" :to="{name:'GetDetailsForm2', params: { idApp: item.idApp }}">Voir Details2</router-link>
          </td>
        </tr>
      </tbody>
    </table>
    <!-- fin table d'application de "Mes applications" -->
  </div>
</template>
<!---------------- script de le 2éme formulaire pour completer votre application ------------------------------->
<script>
  import { mapGetters } from "vuex";
  import Navbar from "./Navbar";
  export default {
    components: { Navbar },
    data() {
      return {
        creatApp: {
          color1: '#000000',
          color2: '#000000',
          color3: '#000000',
        },
      };
    },
    computed: {
      ...mapGetters({ client: "getClient" , mesApp : "getApps"}),
    },
    created() {
      this.$store.dispatch('getApps');
    },
    methods: {
      saveData(id) {
      let fd = new FormData();
      //URL de bouton "complete"
      let url = "api/complet/applicaton/"+id;
          fd.append("font", this.creatApp.font);
          fd.append("color1", this.creatApp.color1);
          fd.append("color2", this.creatApp.color2);
          fd.append("color3", this.creatApp.color3);
          fd.append("logo", this.creatApp.logo);
          fd.append("icon", this.creatApp.icon);
          
        axios.post(url, fd,{
          headers: { "Content-Type": "multipart/form-data" }
        }).then(response => {
          console.log(response.data);
        }).catch(error => {
          console.log(error);
        });
      this.creatApp = {
          color1: '#000000',
          color2: '#000000',
          color3: '#000000',
        }

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
        else {
          if (type == 'logo') {
            this.creatApp.logo = e.target.files[0];
          }else{
            this.creatApp.icon = e.target.files[0];
          }
          
          // let previewImg = document.getElementById("previewImg"+id);
          // this.previewImg = URL.createObjectURL(this.option[type+id]);
        }
      }
      },
    },
  };
</script>
<!--------------------------------- fin script-------------------------------------------------->
<style lang=""></style>
