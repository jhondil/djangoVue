<template>
  <div >
    <div >
      <b-card
        :title="element.title"       
        class="mb-2"
      >
        <b-card-text>
          {{ element.description }}
        </b-card-text>

      
      </b-card>
    </div>
  </div>
</template>


<script>
export default {
  created() {
    this.find();
  },
  data() {
    return {
      element: Object
    };
  },
  methods: {
    find: function () {
      fetch("http://127.0.0.1:8000/api/element/"+this.$route.params.id+"/?format=json")
        .then((res) => res.json())
        .then((res) => (this.element = res));
    },
  },
};
</script>