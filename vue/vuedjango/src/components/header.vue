<template>
  <nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container-fluid">
      <a class="navbar-brand" href="#">Navbar</a>
      <button
        class="navbar-toggler"
        type="button"
        data-bs-toggle="collapse"
        data-bs-target="#navbarSupportedContent"
        aria-controls="navbarSupportedContent"
        aria-expanded="false"
        aria-label="Toggle navigation"
      >
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="#">Home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Link</a>
          </li>

          <li class="nav-item dropdown">
            <a
              class="nav-link dropdown-toggle"
              href="#"
              id="navbarDropdown"
              role="button"
              data-bs-toggle="dropdown"
              aria-expanded="true"
            >
              Tipos
            </a>

            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
              <li v-for="t in types" v-bind:key="t.id">
                <router-link :to="'/type/' + t.id + '/elements'">
                <a class="dropdown-item" >
                  {{ t.title }}
                </a>
                 </router-link>
              </li>
            </ul>
          </li>

          <li class="nav-item dropdown">
            <a
              class="nav-link dropdown-toggle"
              href="#"
              id="navbarDropdownn"
              role="button"
              data-bs-toggle="dropdown"
              aria-expanded="true"
            >
              Categorias
            </a>

            <ul class="dropdown-menu" aria-labelledby="navbarDropdownn">
              <li v-for="c in categories" v-bind:key="c.id">
                 <router-link :to="'/category/' + c.id + '/elements'">
                <a class="dropdown-item">
                 
                    {{ c.title }}
                
                </a>
                  </router-link>
              </li>
            </ul>
          </li>
        </ul>
      </div>
    </div>
  </nav>
  <div>
    <!-- <h1>menu</h1>
    <div>
      <router-link to="/">List</router-link> <br />
      <router-link to="/details">Details</router-link>
    </div>

    <router-view /> -->
  </div>
</template>


<script>
export default {
  created() {
    this.findAllType();
    this.findAllCategory();
  },
  data() {
    return {
      types: [],
      categories: [],
    };
  },
  methods: {
    findAllType: function () {
      fetch("http://127.0.0.1:8000/api/type/?format=json")
        .then((res) => res.json())
        .then((res) => (this.types = res));
    },
    findAllCategory: function () {
      fetch("http://127.0.0.1:8000/api/category/?format=json")
        .then((res) => res.json())
        .then((res) => (this.categories = res));
    },
  },
};
</script>