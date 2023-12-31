<!-- Simulasi.vue -->

<template>
    
    <Header />
    <div class="container">
      <h2 class="alert alert-primary text-center mt-4">SIMULASI CICILAN MOSE </h2>
  
      <div class="form-wrapper">
        <form @submit.prevent="submitForm">
  
          <div class="form-group">
            <label for="Jeniskendaraan">Jenis Kendaraan </label>
            <input v-model="jeniskendaraan" type="text" class="form-control" required placeholder="Silahkan Masukkan Jenis Kendaraan" id="Jeniskendaraan">
          </div>
          <div class="form-group">
            <label for="Hargakendaraan">Harga Kendaraan </label>
            <input v-model="harga" type="text" class="form-control" required placeholder="Silahkan Masukkan Harga Kendaraan" id="Harga">
          </div>
          <div class="form-group">
            <label for="Namapembeli">Nama Pembeli</label>
            <input v-model="pembeli" type="text" class="form-control" required placeholder="Silahkan Masukkan Nama Anda" id="Nama">
          </div>
          <div class="form-group">
            <label for="Namapembeli">Angsuran selama (1-15th)</label>
            <input v-model="lamangsuran" type="number" min="1" max="15" class="form-control" required placeholder="Silahkan Masukkan Lama Angsuran Anda" id="Angsuran">
          </div>
  
          <div class="form-group">
            <label for="Bunga">Persentase bunga (5%-10%) </label>
            <input v-model="bunga" type="number" min="5" max="10" class="form-control" required placeholder="Silahkan Masukkan Persentase bunga" id="Bunga">
          </div>
  
          <div class="form-group">
            <label for="Bunga">Administrasi </label>
            <input v-model="administrasi" type="number" min="100000" class="form-control" required placeholder="Silahkan Masukkan Administrasi" id="administrasi">
          </div>
  
          <div class="form-group">
            <label for="Bunga">Uang muka(30-100%) </label>
            <input v-model="dp" type="number" min="30" max="100" class="form-control" required placeholder="Silahkan Masukkan Administrasi" id="administrasi">
          </div>
          <div class="form-group">
            <label for="dropdown2">Perhitungan Margin</label>
            <select v-model="perhitungan" class="form-control">
              <option value="no" disabled>Perhitungan Margin</option>
              <option value="flat">Flat</option>
            </select>
          </div>
          <div>
            <button type="submit" class="button">Input</button>
          </div>
        </form>
        
      </div>
    </div>
    <Footer />
  </template>
  
  <script>
  import Header from '@/components/headfot/Header.vue'; // adjust the path based on your project structure
  import Footer from '@/components/headfot/Footer.vue';

  export default {
    data() {
      return {
        jeniskendaraan: '',
        harga: '',
        pembeli: '',
        lamangsuran: '',
        bunga: '',
        administrasi: '',
        dp: '',
        perhitungan: 'no',
      };
    },
    components: {
      Header,
      Footer,
    },
    methods: {
      submitForm() {
        // Handle form submission logic here
        console.log('Form submitted:', this.$data);
        this.$router.push('/hasil-simulasi');
      },
    },
  };
  </script>
  
  <style scoped>
  /* Add your styling for the component if needed */
  </style>
  