<template lang="">
  <navbar />
  <div class="container">
    <table class="table table-hover table-bordered mt-5">
      <thead>
        <tr class="text-center">
          <th scope="col">Question</th>
          <th scope="col">Votre réponse</th>
        </tr>
      </thead>
      <tbody>
        <tr v-for="(item, index) in app">
          <td>{{ index }}</td>
          <template v-if="typeof(item) == 'object'">
            <td>
              <span v-for="option in item">{{ option }}, </span>
            </td>
          </template>
          <template v-else>
            <td>{{ item }}</td>
          </template>
          
        </tr>
      </tbody>
    </table>
  </div>
</template>
<script>
  import Navbar from "./Navbar";
export default {
  components: { Navbar },
  data() {
    return {
      idApp: this.$route.params.idApp,
      app: {}
    }
  },
  created() {
    this.getThisApp()
  },
  methods: {
    getThisApp(){
      axios.get('api/get/oneApplication/'+this.idApp+'/display')
      .then((response) => {
        this.app = response.data
      }).catch((error) =>{
        console.log(error)
      })
    }
  },
}
</script>
<style lang="">
  
</style>