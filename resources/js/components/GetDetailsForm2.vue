<template lang="">
    <navbar />
    <div class="container">
      <table class="table table-hover table-bordered mt-5">
        <thead>
          <tr class="text-center">
            <th scope="col"><em>Question</em></th>
            <th scope="col"><em> Votre réponse</em></th>
          </tr>
        </thead>
        <tbody>
          <tr v-for="item in app">
            <td v-for="(option ,op) in item">
              <span >{{ op }} </span>
            </td>

            <td v-for="(option ,op) in item">
              <template v-if="(op)=='logo'">
                <img :src="'/storage/ImageUploaded/'+option">
              </template>
              
              <template v-if="(op)=='icon'">
                <img :src="'/storage/ImageUploaded/'+option">
              </template>
          
              <template v-else>
             <span>{{ option }} </span>
              </template>
            </td>
          </tr>        
        </tbody>
      </table>
    </div>
  </template>
  <script>
     import Navbar from "./Navbar";
     import axios from 'axios';
    
  export default {
    components: { Navbar },
    data() {
      return {
        idApp: this.$route.params.idApp,
        app: {}
      }
    },
    created() {
      this.GetDetailForm2()
    },
    methods: {
     //getThisApp
     GetDetailForm2(){
        axios.get('api/GetDetailform2/' +this.idApp)
        .then((response) => {
          this.app = response.data
        }).catch((error) =>{
          console.log(error)
        })
      }
    },
  }
  </script>
  <style lang="scss">
  
  img {
 
  border-radius: 4px solid #f06b0d;
  padding: 5px;
  width: 150px;
  display: block;
  
}
  </style>