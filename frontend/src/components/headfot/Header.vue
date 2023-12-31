
<template>
  <header class="header_section">
        <div class="container">
          <nav class="navbar navbar-expand-lg custom_nav-container pt-3">
            <router-link to="/" class="navbar-brand">
              <img src="../../assets/quad.png" alt="mose" />
            </router-link>
            <button
              class="navbar-toggler"
              type="button"
              data-toggle="collapse"
              data-target="#navbarSupportedContent"
              aria-controls="navbarSupportedContent"
              aria-expanded="false"
              aria-label="Toggle navigation"
            >
              <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
              <div
                class="d-flex ml-auto flex-column flex-lg-row align-items-center"
              >
                <ul class="navbar-nav">
                  <li class="nav-item active">
                    <router-link to="/" class="nav-item nav-link">Home</router-link>
                  </li>
                  <li class="nav-item">
                    <router-link to="/product" class="nav-item nav-link">Our Product</router-link>
                  </li>
                  <li
                    class="nav-item dropdown"
                    @mouseover="openDropdown"
                    @mouseout="closeDropdown"
                  >
                    <a
                      class="nav-link dropdown-toggle"
                      href="#"
                      id="serviceDropdown"
                      role="button"
                      aria-haspopup="true"
                      aria-expanded="false"
                    >
                      Service
                    </a>
                    <div
                      class="dropdown-menu"
                      aria-labelledby="serviceDropdown"
                    >
                    <router-link to="/promo" class="dropdown-item">Promo</router-link>
                    <router-link to="/simulasi" class="dropdown-item">Simulasi Kredit</router-link>
                    </div>
                  </li>
                  <li class="nav-item">
                    <router-link to="/contact" class="nav-item nav-link">Contact Us</router-link>
                  </li>
                </ul>
                <form class="form-inline my-2 my-lg-0 ml-0 ml-lg-4 mb-3 mb-lg-0">
          <div class="position-relative">
            <input
              class="form-control mr-sm-2"
              type="search"
              placeholder="Search"
              aria-label="Search"
              v-model="searchQuery"
              @input="searchMotor"
            />
            <div class="dropdown-menu search-results" v-show="searchQuery && motor.length > 0">
    <a v-for="item in motor" :key="item.id" :to="{ name: 'Detail', params: { id: item.id } }" class="dropdown-item" @click="selectMotor(item)">
        {{ item.name }}
    </a>
</div>


          </div>
        </form>
                <form
                  class="form-inline my-2 my-lg-0 ml-0 ml-lg-4 mb-3 mb-lg-0"
                ></form>
              </div>
              <div
                class="quote_btn-container ml-0 ml-lg-4 d-flex justify-content-center"
              >
              <router-link to="/shop" class="nav-item nav-link">Shop Now</router-link>
              </div>
            </div>
          </nav>
        </div>
      </header>
</template>

<script>
import axios from 'axios';

export default {
  data() {
    return {
      serviceDropdownVisible: false,
      searchQuery: '',
      motor: [],
      filterkendaraan: [],
    };
  },
  methods: {
    openDropdown() {
      var dropdown = document.querySelector(".dropdown-menu");
      dropdown.classList.add("show");
    },

    closeDropdown() {
      var dropdown = document.querySelector(".dropdown-menu");
      dropdown.classList.remove("show");
    },
    async searchMotor() {
    try {
        if (this.searchQuery) {
            const response = await axios.get(`/api/motor?search=${this.searchQuery}`);
            this.motor = response.data.motor;
        } else {
            this.motor = [];
        }
    } catch (error) {
        console.error('Error fetching motor data:', error);
        // Handle the error, e.g., show an error message to the user
    }
},
selectMotor(item) {
      // Implement the logic to select a motor here
      // For example, you might want to navigate to the detail page of the selected motor
      this.$router.push({ name: 'detail', params: { id: item.id } });
    }
  },
  
};
</script>

<style scoped>
@import '~bootstrap/dist/css/bootstrap.css';
.search-results {
   position: absolute;
   z-index: 1000;
   width: 100%;
   max-height: 200px;
   overflow-y: auto;
   margin-top: 5px;
   display: flex;
    flex-direction: column;
}
</style>
