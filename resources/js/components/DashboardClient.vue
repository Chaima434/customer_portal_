<template lang="html">
  <navbar/>
  <div class="container">
     <div>Welcome {{ user.name }}  {{ user.lastName }}</div>
  </div>
  
</template>
<script>
import Navbar from './Navbar.vue';
import { mapGetters } from "vuex";
export default {
    computed: {
	    ...mapGetters({ user: "getClient"}),
	},
    components: { Navbar },
}
  
</script>
<style lang="">

</style>
