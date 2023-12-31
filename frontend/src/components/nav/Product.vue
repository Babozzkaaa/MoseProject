<template>
  <div>
    <Header />
    <section class="service_section layout_padding d-flex justify-content-center align-items-center">
      <div class="container align-content-center">
        <div class="card" :style="{ 'margin-bottom': '100px' }">
        <h1>Our Product</h1> <br> 
          <div class="card-deck">
            <div v-for="motor in ListMotor" :key="motor.id" class="col-md-3">
              <div class="card">
                <img
                  :src="getImageUrl(motor.image)"
                  class="img-thumbnail product-image"
                  alt="Product Image"
                  >
                <div class="card-body">
                  <h5 class="card-title">{{ motor.name }}</h5>
                  <p class="card-text">{{ motor.description }}</p>
                  <router-link to="/shop" class="btn btn-light" style="margin:30px;">Shop Now</router-link>
                  <router-link :to="{ name: 'detail', params: { id: motor.id } }" class="btn btn-light">Detail</router-link>
                                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <Footer />
  </div>
</template>
  
  <script>
  import Header from '@/components/headfot/Header.vue'; // adjust the path based on your project structure
  import Footer from '@/components/headfot/Footer.vue'; // adjust the path based on your project structure
  
  export default {
    components: {
      Header,
      Footer
    },
    data() {
      return {
        ListMotor: []
      };
    },
    mounted() {
      this.fetchMotorcycles();
    },
    methods: {
      async fetchMotorcycles() {
        try {
          // Simulated data fetching
          const response = await this.$axios.get('/api/motor');
          this.ListMotor = response.data.motor;
        } catch (error) {
          console.error('Error fetching productList:', error);
        }
      },
      getImageUrl(imagePath) {
  // Form the URL with the correct path
  return `http://localhost:8000/storage/${imagePath}`;
},
    }
  };
  </script>
  
  <style>
  /* Add your custom styles here */
  </style>
  