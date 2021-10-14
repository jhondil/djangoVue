<template>
  <Header />
  <div  class="container">
  
    <div class="row">
      <div class="col-3">
      <Category />
      <Types />
      </div>
      <div class="col-8">
        <router-view></router-view>
      </div>
    </div>

   
    


  </div>
</template>




<script>
// import HelloWorld from './components/HelloWorld.vue'
// import List from './components/List'
// import Details from './components/Details'
import Header from "./components/header";
import Category from "./components/categories";
import Types from "./components/types";

export default {
  name: "App",
  components: {
    // List,
    Header,
    Category,
    Types,
  },
};
</script>

