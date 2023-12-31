<!-- src/components/ListMotor.vue -->

<template>
  <div>
    <Header /> <!-- Include the Header component -->

    <h1>List of Motorcycles</h1>
    <ul>
      <li v-for="motor in ListMotor" :key="motor.id">
        <img :src="require(`@/assets/${motor.image}`)" alt="Motorcycle Image">
        {{ motor.name }} - {{ motor.price }}
      </li>
    </ul>

    <Footer /> <!-- Include the Footer component -->
  </div>
</template>

<script>
import Header from '@/components/headfot/Header.vue'; // Adjust the path based on your project structure
import Footer from '@/components/headfot/Footer.vue'; // Adjust the path based on your project structure



export default {
  components: {
    Header,
    Footer,
  },
  data() {
    return {
      ListMotor: [],
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
        console.error('Error fetching ListMotor:', error);
      }
    },
  },
};
</script>
