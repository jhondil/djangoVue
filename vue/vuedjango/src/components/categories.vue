<template>
  <div>
    <h5>Categorias</h5>
    <div v-for="c in categories" v-bind:key="c.id">
      
         <b-list-group-item >
        <router-link :to="'/category/' + c.id + '/elements'">
          {{c.title}}
        </router-link>
        </b-list-group-item>
      
    </div>
  </div>
</template>

<script>
export default {
  created() {
    this.findAll();
  },
  data() {
    return {
      categories: [],
    };
  },
  methods: {
    findAll: function () {
      fetch("http://127.0.0.1:8000/api/category/?format=json")
        .then((res) => res.json())
        .then((res) => (this.categories = res));
    },
  },
};
</script>