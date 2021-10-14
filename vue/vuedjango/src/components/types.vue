<template>
  <div>
    <h5>Tipos</h5>
    <b-list-group>
      <div v-for="t in types" v-bind:key="t.id">
          <b-list-group-item >
        <router-link :to="'/type/' + t.id+ '/elements'">
          {{t.title}}
        </router-link>
        </b-list-group-item>
      </div>
    </b-list-group>
  </div>
</template>

<script>
export default {
  created() {
    this.findAll();
  },
  data() {
    return {
      types: [],
    };
  },
  methods: {
    findAll: function () {
      fetch("http://127.0.0.1:8000/api/type/?format=json")
        .then((res) => res.json())
        .then((res) => (this.types = res));
    },
  },
};
</script>