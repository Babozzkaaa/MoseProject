<template>
    <div>
      <section class="service_section layout_padding">
        <div class="container">
          <h2 class="text-center mb-4">Add Product</h2>
          <form @submit.prevent="submitForm">
            
            <div class="mb-3">
              <label for="name" class="form-label">Nama Produk:</label>
              <input v-model="motorData.name" type="text" class="form-control" id="name" required />
            </div>
  
        <div class="mb-3">
          <label for="description" class="form-label">Description:</label>
          <textarea v-model="motorData.description" class="form-control" id="description" required></textarea>
        </div>
  
        <div class="mb-3">
          <label for="tahun_produksi" class="form-label">Tahun Produksi:</label>
          <input v-model="motorData.tahun_produksi" type="number" class="form-control" id="tahun_produksi" required />
        </div>

        <div class="mb-3">
          <label for="price" class="form-label">Price:</label>
          <input v-model="motorData.price" type="number" class="form-control" id="price" required />
        </div>

        <div class="mb-3">
          <label for="CC_Motor" class="form-label">CC_Motor:</label>
          <input v-model="motorData.CC_Motor" type="text" class="form-control" id="CC_Motor" required />
        </div>

        <div class="mb-3">
          <label for="Torsi" class="form-label">Torsi:</label>
          <input v-model="motorData.Torsi" type="text" class="form-control" id="Torsi" required />
        </div>

        <div class="mb-3">
          <label for="Tipe_Mesin" class="form-label">Tipe Mesin:</label>
          <input v-model="motorData.Tipe_Mesin" type="text" class="form-control" id="Tipe_Mesin" required />
        </div>

        <div class="mb-3">
          <label for="Transmisi" class="form-label">Transmisi:</label>
          <input v-model="motorData.Transmisi" type="text" class="form-control" id="Transmisi" required />
        </div>
        
        <div class="mb-3">
          <label for="Kapasitas_Tangki" class="form-label">Kapasitas Tangki:</label>
          <input v-model="motorData.Kapasitas_Tangki" type="text" class="form-control" id="Kapasitas_Tangki" required />
        </div>

        <div class="mb-3">
          <label for="Rasio_Kompresi" class="form-label">Rasio kompresi:</label>
          <input v-model="motorData.Rasio_Kompresi" type="text" class="form-control" id="Rasio_Kompresi" required />
        </div>
  
        <div class="mb-3">
          <label for="image" class="form-label">Image:</label>
          <input type="file" ref="fileInput" @change="handleFileUpload" class="form-control" accept="image/*" required />
        </div>  

        <button type="submit" class="btn btn-success">Add Motor</button>
          </form>
        </div>
      </section>
    </div>
  </template>
  
  <script>
  import axios from 'axios';
  
  export default {
    data() {
      return {
        motorData: {
          name: '',
          description: '',
          price: 0,
          tahun_produksi: 0,
          CC_Motor: '',
          Torsi: '',
          Tipe_Mesin: '',
          Transmisi: '',
          Kapasitas_Tangki: '',
          Rasio_Kompresi: '',
          image: null,
        },
      };
    },
    methods: {
      handleFileUpload() {
        const file = this.$refs.fileInput.files[0];
        this.motorData.image = file;
      },
      async submitForm() {
        try {
          const formData = new FormData();
          formData.append('name', this.motorData.name);
          formData.append('description', this.motorData.description);
          formData.append('price', this.motorData.price);
          formData.append('tahun_produksi', this.motorData.tahun_produksi);
          formData.append('CC_Motor', this.motorData.CC_Motor);
          formData.append('Torsi', this.motorData.Torsi);
          formData.append('Tipe_Mesin', this.motorData.Tipe_Mesin);
          formData.append('Transmisi', this.motorData.Transmisi);
          formData.append('Kapasitas_Tangki', this.motorData.Kapasitas_Tangki);
          formData.append('Rasio_Kompresi', this.motorData.Rasio_Kompresi);
          formData.append('image', this.motorData.image);
  
          // Menggunakan URL backend yang sesuai
          await axios.post('/api/motor', formData, {
            headers: {
              'Content-Type': 'multipart/form-data',
            },
          });
  
          console.log('Motor added successfully!');
        } catch (error) {
          console.error('Error adding motor:', error);
          alert('Failed to add motor. Please check your inputs and try again.');
        }
      },
    },
  };
  </script>
  
  <style scoped>
  /* Your custom styles go here */
  </style>
  