<template>
  <img alt="Vue logo" src="./assets/logo.png">
  <List> </List>
</template>

<script>
// import HelloWorld from './components/HelloWorld.vue'
import List from './components/list'

export default {
  name: 'App',
  components: {
    List
  }
}
</script>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: red;
  margin-top: 60px;
}
</style>
