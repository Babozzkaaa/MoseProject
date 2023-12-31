<template>
    <Header />
    <div class="container">
      <h2 class="alert alert-primary text-center mt-4">Formulir Pembelian MoSe</h2>
      <div class="form-wrapper">
        <form @submit.prevent="submitForm">
        </form>
            <div class="form-wrapper">
        <form action="http://localhost:8000/api/midtrans" method="post">
        <div class="form-group">
        <h3 class="headone">Pilih Kendaraan</h3>
        <div class="row">
            <div class="col">
                <label for="dropdown1">Kategori Kendaraan*</label>
                    <select v-model="selectedCategory" @change="updateDropdown2" class="form-control">
                    <option value="1">Pilih Kategori Kendaraan*</option>
                    <option value="2">Sepeda Motor</option>
                    </select>
                </div>
                <div class="col">
                    <label for="dropdown2">Tahun Kendaraan*</label>
                    <select v-model="selectedYear" @change="updateDropdown3" class="form-control" :disabled="isYearDisabled">
                    <option value="1">Pilih Tahun*</option>
                    <option value="2023">2023</option>
                    <option value="2022">2022</option>
                    <option value="2021">2021</option>
                    <option value="2020">2020</option>
                    </select>
                </div>
                <div class="col">
                <label for="dropdown3">Model Kendaraan*</label>
                <select name="motor2" id="dropdown3" class="form-control" :disabled="isModelDisabled">
                    <option v-for="model in models" :key="model.id" :value="model.name" class="dropdown3">
                    {{ model.name }}
                    </option>
                </select>
                </div>
            </div>
        </div>

            <div class="form-group">
                <label for="warna">Warna Motor:</label> <br/>
                <div class="form-check-inline">
                    <input type="radio" name="warna" id="Warna2" value="SE" class="form-check-input" checked>
                    <label for="">Special Edition</label>
                </div>
                <div class="form-check-inline">
                    <input type="radio" name="warna" id="Warna2" value="Hitam" class="form-check-input">
                    <label for="">Hitam</label>
                </div>
                <div class="form-check-inline">
                    <input type="radio" name="warna" id="Warna2" value="Merah" class="form-check-input">
                    <label for="">Merah</label>
                </div>
            </div>

            <h3 class="headtwo">Masukkan Informasi Kontak Anda</h3>
            <div class="form-group">
                <label for="name">Nama Lengkap* </label>
                <input type="text" name="name" class="form-control" required placeholder="Silahkan Masukkan Nama Lengkap Anda" id="name">
            </div>
            <div class="form-group">
                <label for="Email">Alamat Email* </label>
                <input type="email" name="email" class="form-control" required placeholder="Silahkan Masukkan Alamat Email Anda" id="Email">
            </div>
            <div class="form-group">
                <label for="Kota">Kota*</label>
                <input type="text" name="kota" class="form-control" required placeholder="Silahkan Masukkan Kota Tinggal Anda" id="Kota">
            </div>
            <div class="form-group">
                <label for="phone">Nomor Telepon*</label>
                <input type="number" name="phone" class="form-control" required placeholder="Silahkan Masukkan Nomor yang Aktif" id="phone">
            </div>
            <div class="form-group">
                <label for="">Pilih Dealer </label>
                <select class="form-control" name="dealer" id="">
                    <option value="">Pilih Kota</option>
                    <option value="SURAKARTA">1. Surakarta</option>
                    <option value="KARANGANYAR">2. Karanganyar</option>
                    <option value="SEMARANG">3. Semarang</option>
                    <option value="YOGYAKARTA">4. Yogyakarta</option>
                </select>
            </div>
            <div class="form-group">
                <label for="address">Alamat Lengkap</label>
                <textarea name="address" class="form-control" id="address" cols="10" rows="6"></textarea>
            </div>
            <div class="form-group">
                <select aria-required="true" class="form-control" id="TimeframeToPurchase" name="jangka" style="-webkit-appearance: none; padding-left: 20px !important;">
                    <option value="">JANGKA WAKTU PEMBELIAN</option>
                    <option value="0-3 bulan">0-3 bulan</option>
                    <option value="4-6 bulan">4-6 bulan</option>
                    <option value="7-9 bulan">7-9 bulan</option>
                    <option value="10+ bulan">10+ bulan</option>
                    <option value="Tidak yakin">Tidak yakin</option>
                    <option value="Tidak Sekarang">Tidak Sekarang</option>
                </select>
            </div>
            <button type="submit" class="btn btn-primary" style="margin-bottom:50px;">Kirim</button>
        </form>
    </div>
</div>          
      </div>
      <Footer />
  </template>
  
  <script>
  import axios from 'axios';
    import Header from '@/components/headfot/Header.vue'; // Adjust the path based on your project structure
    import Footer from '@/components/headfot/Footer.vue'; // Adjust the path based on your project structure
    import midtransClient from 'midtrans-client';
  
  export default {
    data() {
      return {
        form: {
          // ... (other form fields)
          motor2: '',
        },
        produk: [],
        models: [],
        selectedCategory: '1',
        selectedYear: '1',
        isYearDisabled: true,
        isModelDisabled: true,
      };
    },
    created() {
      this.fetchProduk();
    },
    watch: {
      selectedCategory() {
        this.updateDropdown2();
      },
      selectedYear() {
        this.updateDropdown3();
      },
    },
    components: {
    Header,
    Footer
  },


methods: {
    async fetchProduk() {
      try {
        if (this.selectedYear !== '1') {
          const response = await axios.get(`/api/motor?tahun_produksi=${this.selectedYear}`);
          // Assign the models data to the appropriate property
          this.models = response.data.motor;
        }
      } catch (error) {
        console.error('There was a problem with the fetch operation: ', error);
      }
    },

    updateDropdown2() {
      if (this.selectedCategory !== '1') {
        this.isYearDisabled = false;
      } else {
        this.isYearDisabled = true;
        this.isModelDisabled = true;
      }
    },
    updateDropdown3() {
      if (this.selectedYear !== '1') {
        this.isModelDisabled = false;
        // Fetch models when the year changess
        this.fetchProduk();
      } else {
        this.isModelDisabled = true;
      }
    },
    methods: {
  // ...
  async submitForm() {
  try {
    // Fetch the price of the selected motor from your database
    const motorResponse = await axios.get(`/api/motor/${this.form.motor2}`);
    const motorPrice = motorResponse.data.price; // Replace 'price' with the actual property name in your data

    // Call Midtrans API to create a transaction
    const response = await axios.post('/api/midtrans', {
      order_id: 'test-transaction-' + Date.now(),
      gross_amount: motorPrice, // Use the fetched motor price
      motor_id: this.form.motor2,
      // ... (other form fields)
    });

    // Open the Midtrans Payment Gateway
    const { token } = response.data;
    const snap = new midtransClient.Snap({
      isProduction: false,
      serverKey: 'serverKey', // Replace with your actual server key
      clientKey: 'clientKey', // Replace with your actual client key
    });

    snap.pay(token);
  } catch (error) {
    console.error('Error submitting form:', error);
  }
},
  },
},
  };
  </script>
  
  <style>
  /* Add your custom styles here */
  </style>
  
