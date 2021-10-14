<template>
  <div>
    <div v-for="e in elementsList" v-bind:key="e.id">
      <router-link :to="'/details/' + e.id">
        <b-card :title="e.title" class="mb-2">
          <b-card-text>
            {{ e.description }}
          </b-card-text>
        </b-card>
      </router-link>
    </div>
  </div>
</template>


<script>
export default {

    props:[
        'elementsList'
    ],
  data() {
    return {
      elements: [],
    };
  },
  methods: {},
};
</script>