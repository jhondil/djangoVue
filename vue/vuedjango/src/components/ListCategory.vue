<template>
  <div >
   <ListDefault :elementsList="elements" />
  </div>
</template>


<script>

import ListDefault from '../partials/_ListDefault.vue';

export default { 
  components: {
    ListDefault
  },
  created() {
    this.findAll();
  },
  data() {
    return {
      elements: [],
    };
  },
  methods: {
    findAll: function () {
      fetch('http://127.0.0.1:8000/api/category/'+this.$route.params.id+'/elements/?format=json')
        .then((res) => res.json())
        .then((res) => (this.elements = res));
    },
  },
  watch:{
    "$route.params.id":
    function () {
      this.findAll();
    }
  }
};
</script>