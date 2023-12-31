
<template>
  <Header />
  <div class="hero_area">
    <section class="hero">
      <div class="container">
        <h1>Detail Produk {{ product.name }}</h1>
      </div>
    </section>
    <section class="content">
      <div class="container">
          <div v-if="loading">
        <table>
          <tr>
            <th>Nama Produk</th>
            <td>{{ product.name }}</td>
          </tr>
          <tr>
            <th>Deskripsi</th>
            <td>{{ product.description }}</td>
          </tr>
          <tr>
            <th>Tahun Produksi</th>
            <td>{{ product.tahun_produksi }}</td>
          </tr>
          <tr>
            <th>Harga Jual</th>
            <td>Rp{{ product.price }}</td>
          </tr>
          <tr>
            <th>CC Motor</th>
            <td>{{ product.CC_Motor }}</td>
          </tr>
          <tr>
            <th>Torsi</th>
            <td>{{ product.Torsi }}</td>
          </tr>
          <tr>
            <th>Tipe Mesin</th>
            <td>{{ product.Tipe_Mesin }}</td>
          </tr>
          <tr>
            <th>Transmisi</th>
            <td>{{ product.Transmisi }}</td>
          </tr>
          <tr>
            <th>Kapasitas Tangki</th>
            <td>{{ product.Kapasitas_Tangki }}</td>
          </tr>
          <tr>
            <th>Rasio Kompresi</th>
            <td>{{ product.Rasio_Kompresi }}</td>
          </tr>
          <tr>
            <th>Gambar Produk</th>
            <td>
              <img
                  :src="getImageUrl(product.image)"
                  
                 style="max-width: 500px; height: auto; margin-bottom: 10px;">
          
          </td>
          </tr>
      </table>
        <center>
          <button @click="goBack">Kembali</button>
        </center>
      </div>
      <Footer />
  </div>
    </section>
  </div>
</template>

<script>
import axios from 'axios';
import Header from '@/components/headfot/Header.vue'; // adjust the path based on your project structure
import Footer from '@/components/headfot/Footer.vue'; // adjust the path based on your project structure

export default {
  components: {
    Header,
    Footer
  },
  data() {
    return {
      product: {},
      loading: true
    };
  },
  mounted() {
    this.fetchProduct();
  },
  methods: {
   async fetchProduct() {
  try {
    const response = await axios.get(`/api/motor/${this.$route.params.id}`);
    this.product = response.data.motor; // change this line
  } catch (error) {
    console.error('Error fetching product:', error);
  }
},
  goBack() {
  this.$router.go(-1);
  },
  getImageUrl(imagePath) {
  // Form the URL with the correct path
  return `http://localhost:8000/storage/${imagePath}`;
},
}
};
</script>

<style scoped>
.hero_area {
background-color: #f5f5f5;
padding: 30px 0;
}

.hero_area .hero {
text-align: center;
margin-bottom: 30px;
}

.hero_area .hero h1 {
font-size: 30px;
font-weight: 700;
}

.hero_area .content {
background-color: #fff;
padding: 20px;
box-shadow: 0px 0px 5px rgba(0, 0, 0, 0.1);
}

.hero_area .content table {
width: 100%;
border-collapse: collapse;
}

.hero_area .content table th,
.hero_area .content table td {
padding: 10px;
border: 1px solid #ddd;
}

.hero_area .content table th {
background-color: #f5f5f5;
font-weight: 700;
text-align: left;
}

.hero_area .content table img {
max-width: 100%;
}

.hero_area .content button {
background-color: #007bff;
color: #fff;
border: none;
padding: 10px 20px;
font-size: 14px;
cursor: pointer;
margin-top: 20px;
margin-bottom: 20px;
}

.hero_area .content button a {
color: #fff;
text-decoration: none;
}

</style>