<template>
  <div>
      <div class="box" v-for="e in elements" v-bind:key="e.id">
        {{e.title}}

      </div>

  </div>
</template>

<script>
export default {
  created(){
      this.findAll()
    },
  data(){  
   
    return {
      elements:[]
    };
    },
    methods: {
      findAll: function(){
        fetch('http://127.0.0.1:8000/api/element/?format=json').
        then(res  => res.json()).
        then(res => this.elements = res)
      }
    },
  
}
</script>