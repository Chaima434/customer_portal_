
<template lang="html">
  <Navbar />
  <div class="container12">
    <article>
      <header>
        <div class="progress12">
          <!-- Questionnnnnnnnnnnnnnnnnnnnnnnnnnnn ????? :key = step-->
          <div class="progress-step12" :class="{ 'active': index === activeStep }" v-for="(step, index) in maxStep"
            :key="'step' + index" >
            {{ index + 1 }}
          </div>
        </div>
     </header>
     <!-- annnimation de mon formulaire -->
      <section :class="animation">
        <div class="input-fields row">
          <form @submit.prevent="saveData()">
            <div v-for="item in questions">
              <!--item.step -->
              <template v-if="item.step == activeStep + 1 && item.enabled == 1">
                <!-- Le client vas accedee le formulaire et va remplir les champs a partire d'appel-->
                <div v-if="item.type == 'select'" class="mb-3 col-lg-12 col-sm-12">
                  <legend>{{ item.question }}</legend>
                  <select :id="item.type + item.id" v-model="ClientCoices[item.id]" class="form-select" aria-label="Default select example" :disabled="disabled[item.id]">
                    <option selected value="0">Open this select menu</option>
                    <option v-for="k in item.options" :value="k.id">{{ k.option }}</option>
                  </select>
                  <span :id="'error' + item.id" class="text-danger"></span>
                </div>
                <div v-if="item.type == 'radio'" class="mb-3 col-lg-12 col-sm-12">
                  <legend>{{ item.question }}</legend>
                  <div class="form-check form-check-inline" v-for="k in item.options">
                    <input class="form-check-input" type="radio" v-model="ClientCoices[item.id]"
                      :id="item.type + k.id" :value="k.id" 
                      @change="relation(item.id, k.option)">
                    <label class="form-check-label" :for="item.type + k.id">
                      {{ k.option }}
                    </label>
                  </div>
                  
                </div>
                <div v-if="item.type == 'checkbox'" class="mb-3 col-lg-12 col-sm-12">
                  <legend>{{ item.question }}</legend>
                    <div class="form-check form-check-inline" v-for="h in item.options">
                      <input class="form-check-input" type="checkbox" :value="h.id" :id="'flexCheckDefault' + h.id"
                        v-model="ClientCoices[item.id]" :disabled="disabled[item.id]">
                      <label class="form-check-label" :for="'flexCheckDefault' + h.id">
                        {{ h.option }}
                      </label>
                    </div>
                </div>
              
              </template>
            </div>
            <div class="price" v-if="dispalyPrice || save">
              <h2 v-if="activeStep === maxStep && dispalyPrice">le prix est : {{ price}} TND</h2>
              <h2 v-if="save && activeStep == maxStep" class="text-center">merci</h2>
            </div>
            <div class="actions">
              <button type="submit" class="submit" v-if="activeStep === maxStep && dispalyPrice">
                {{ nameBtn }}
              </button>
            </div>
          </form>
          </div>                   
          <div class="actions">
            <div class="btn-arriere" >
              <button v-if="activeStep > 0" @click="stepBack()">
                arriere
              </button>
            </div>
            <div class="btn-sivant" v-if="activeStep + 1 < maxStep">
              <button @click="checkChoose()">
                Suivant
              </button>
            </div>
            <div class="btn-sivant" v-else-if="activeStep + 1 === maxStep && !dispalyPrice">
              <button @click="calcPrice">
              Calcule le prix
              </button>
            </div>
          </div>
      </section>
    </article>
  </div>
</template>
<script>
import Navbar from './Navbar';
import axios from 'axios';
import { mapGetters } from "vuex";

export default {
  data() {
    return {
      activeStep: 0,
      animation: "animate-in",
      questions: {},
      price: 0,
      dispalyPrice: false,
      maxStep: undefined,
      previewImg: "image-placeholder.svg",
      ClientCoices: {},
      change: false,
      disabled: [],
      save: false,
      nameBtn: 'Enregistrer'
    };
  },
  computed: {
    ...mapGetters({
      client: "getClient",
      isLoggedIn: "isLoggedIn"
    }),
  },
  // beforeCreate(){
  //   if (this.$route.params.idApp && this.$route.params.idClient) {
  //     if (this.$route.params.idClient != this.$store.getters.getClient.id) {
  //       this.$router.push({ name: 'DashboardClient'})
  //     }
  //   }
  // },
  created(){
    this.getQuestions();
  },
  methods: {
    async getQuestions() {
      let url = "/api/data";
      await axios.get(url).then(response => {
        this.questions = response.data.data;
        this.maxStep = response.data.maxStep;
      }).catch(error => {
        console.log(error);
      });
    },
    //function relation (id,operation)
    relation(id, operation) {
      let type = "", 
      idInput = "", 
      x = 0, 
      test = false, 
      question = "", 
      options = [];
      while (x in this.questions && test == false) {
        if (this.questions[x].parent == id) {
          type = this.questions[x].type;
          question = this.questions[x].id;
          idInput = this.questions[x].id;
          options = this.questions[x].options;
          test = true;
        }
        x++;
      }
      console.log(question)
      //controle sur la partie parent de la formulaire 
      if (type == "number") {
        if (operation == "Oui") {
          this.disabled[idInput] = false;
          this.ClientCoices[question] = 2;
        }
        else if (operation == "Non") {
          this.disabled[idInput] = true;
          this.ClientCoices[question] = 1;
        }
      }
      else if (type == "checkbox") {
        if (operation == "Oui") {
          this.disabled[idInput] = false;
        }
        else if (operation == "Non") {
          this.disabled[idInput] = true;
            this.ClientCoices[question] = []
        }
      }
      else if (type == "select") {
        if (operation == "Oui") {
          this.disabled[idInput] = false;
        }
        else if (operation == "Non") {
          this.disabled[idInput] = true;
          this.ClientCoices[question] = 0;
        }
      }
    },
    //fonction saveData()
    saveData() {
      this.dispalyPrice = false ;
      //instanciation 
      let fd = new FormData();
      /*The append() method will insert DOMString objects as Text nodes. 
      Note that a DOMString is a UTF-16 string that maps directly to a string. 
      The append() method has no return value. 
      It means that the append() method implicitly returns undefined .*/
      fd.append("ClientCoices", JSON.stringify(this.ClientCoices))
      if (this.isLoggedIn) {
        let url = "api/insert";
        if (this.$route.params.idApp && this.$route.params.idClient) {
          url = "api/application/update/"+this.$route.params.idApp;
        }       
        if (this.client.id) {
          fd.append("client_id", this.client.id);
        }
        fd.append("price", this.price);
        axios.post(url, fd).then(response => {
          if (response.status == 200) {
            this.save = true;
          }
          setTimeout(() => {
            this.$router.push({ name: 'mes-application'})
          }, 1000);
          console.log(response.data);
        }).catch(error => {
          console.log(error);
        });
      } else {
        sessionStorage.setItem("ClientCoices", JSON.stringify(this.ClientCoices))
        sessionStorage.setItem("price", JSON.stringify(this.price))
        this.$router.push({ name: 'sign-up'})
      }
    },
    request() {
      if( this.$route.params.idApp){
        this.nameBtn = "modifier"
        const idApp = this.$route.params.idApp

        //Questionnnn ????????????????????????????????????????

        axios.get('api/get/oneApplication/'+idApp+'/edit').then(response => {
          this.ClientCoices = response.data
          console.log(response.data)
        })
        .catch(error => 
        {

        });
      }
      else{      
       for (const [key, value] of Object.entries(this.questions)) {
        
          if (value.type == "select") {
              this.ClientCoices[value.id] = 0;
          }
          else if (value.type == "radio") {
              this.ClientCoices[value.id] = value.options[0].id;
          }else if (value.type == "checkbox") {
              this.ClientCoices[value.id] = [];
          }
      }
      }
    },
    nextStep() {
      this.animation = "animate-out";
      setTimeout(() => {
        this.animation = "animate-in";
        this.activeStep += 1;
      }, 550);
    },
    checkChoose() {
      let test = false;
      let testArray = [];
      let x = 0;
      while (x in this.questions) {
        if (this.questions[x].step == this.activeStep + 1) 
        {
          let ques = this.questions[x];
          if (ques.type == "select") {
            let select = document.getElementById(ques.type + ques.id);
            if (select.value == "0" && select.disabled == false) {
              let error = document.getElementById("error" + ques.id);
              error.innerHTML = "";
              error.innerHTML = "Choisissez une option s'il vous plait";
              this.animation = "animate-wrong";
              setTimeout(() => {
                this.animation = "";
              }, 400);
              test = false;
              testArray.push(test);
            }
            else {
              let error = document.getElementById("error" + ques.id);
              error.innerHTML = "";
              test = true;
            }
          }
          if (ques.type == "text") 
          {
            let text = document.getElementById(ques.type + ques.id);
            if (text.value == "") {
              let error = document.getElementById("error" + ques.id);
              error.innerHTML = "";
              error.innerHTML = "Plz fill in this field";
              this.animation = "animate-wrong";
              setTimeout(() => {
                this.animation = "";
          }, 400 );
              test = false;
              testArray.push(test);
            }
            else {
              let error = document.getElementById("error" + ques.id);
              error.innerHTML = "";
              test = true;
            }
          }
          
        }
        x++;
      }
      if (testArray.includes(false) == false) {
        this.nextStep();
        return true
      }else{
        return false
      }
    },

    calcPrice(){
      this.save = false
      if(this.checkChoose()){
        let fd = new FormData();
      for (const [key, value] of Object.entries(this.ClientCoices)) {
        fd.append(key, value);
      }
      axios.post('api/calc/price', fd).then(response => {
          this.price = response.data.price 
          this.dispalyPrice = true
          console.log(response.data)
        }).catch(error => {
          console.log(error);
        });
      }
      
    },

    stepBack(){
      if (this.dispalyPrice) {
        this.dispalyPrice = false
        this.activeStep--
      }else{
        this.activeStep--
      }
      
    }
    
  },

  updated() {
      if (this.change == false) {
          this.request();
          this.change = true;
      }
      //console.log(this.ClientCoices)

  },
  components: { Navbar }
}
/* ******************************** script css **********************************/
</script>
<style lang="scss" scoped>
@import url('https://fonts.googleapis.com/css2?family=Noto+Sans&display=swap');

@mixin flexbox {
  display: flex;
  justify-content: center;
  align-items: center;
}

.container12 {
  @include flexbox();
  width: 100%;
  min-height: 100vh;
  font-family: 'Noto Sans', sans-serif;
  background: radial-gradient(#DF5C2E, #A43227);
}

article {
  display: flex;
  margin: 10px;
  width: calc(100% - 20px);
  max-width: 1000px;
  min-height: 480px;
  perspective: 1000px;

  header {
    @include flexbox();
    width: 120px;
    height: 870px;
    background-color: #fff;
    border-right: 2px dotted #DF5C2E;
    box-shadow: 0 15px 30px rgba(0, 0, 0, .2),
      0 10px 00px rgba(0, 0, 0, .2)
  }

  .progress-step12 {
    @include flexbox();
    position: relative;
    width: 30px;
    height: 30px;
    border-radius: 50%;
    margin-bottom: 20px;
    color: #fff;
    background-color: #DF5C2E;
    font-weight: bold;

    &.active {
      background-color: #DF5C2E;

      ~.progress-step12 {
        color: #fff;
        background-color: #ccc;
      }

      ~.progress-step12::before {
        background-color: #ccc;
      }
    }

    &:before {
      content: '';
      position: absolute;
      top: -20px;
      width: 2px;
      height: 20px;
      background-color: #DF5C2E;
      z-index: 10;
    }

    &:first-child::before {
      display: none;
    }
  }

  section {
    @include flexbox();
    flex-direction: column;
    width: 100%;
    background-color: #fff;
    box-shadow: 0 15px 30px rgba(0, 0, 0, .2),
      0 10px 10px rgba(0, 0, 0, .2); 

    h2 {
      font-size: 1.6rem;
      color: #DF5C2E;
      margin: 0;
      padding: 20px;
    }

    .input-fields {
      width: 80%;
      height: 80%;

      .price{
        width: 100%;
        height: 100%;
        display: flex;
        justify-content: center;
        align-items: center;
      }
    }

    .actions {
      margin: 0;
      width: 70%;

      button {
        font-family: 'Noto Sans', sans-serif;
        outline: none;
        border: none;
        color: #fff;
        background-color: #DF5C2E;
        font-size: 1.35rem;
        padding: 5px 20px;
        margin: 20px 0 0 0;
        text-transform: uppercase;
        border-radius: 3px;
        cursor: pointer;
      }

      .btn-arriere {
        float: left;
      }

      .btn-sivant {
        float: right;
      }
      .submit{
        position: relative;
        left: 100%;
      }
    }
    .action{
      .register{
        float: right;
        margin-top: 7%;
      }
    }
  }
}



.animate-in {
  transform-origin: left;
  animation: in .6s ease-in-out;
}

.animate-out {
  animation: out .6s ease-in-out;
}

.animate-wrong {
  animation: wrong .4s ease-in-out;
}

@keyframes in {
  0% {
    opacity: 0;
    transform: rotateY(90deg);
  }

  100% {
    opacity: 1;
    transform: rotateY(0deg);
  }
}

@keyframes out {
  0% {
    transform: translateY(0px) rotate(0deg);
  }

  60% {
    transform: rotate(10deg);
  }

  100% {
    transform: translateY(1000px);
  }
}

@keyframes wrong {
  0% {
    transform: translateX(0);
  }

  20% {
    transform: translateX(40px);
  }

  40% {
    transform: translateX(20px);
  }

  60% {
    transform: translateX(40px);
  }

  80% {
    transform: translateX(20px);
  }

  100% {
    transform: translateX(0);
  }
}
</style>