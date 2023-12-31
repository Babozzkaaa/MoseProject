<template>
 
    <Header />
    <div class="container">
      <div class="table-bordered">
        <h2>Hasil Simulasi Kredit</h2>
        <table class="table align-middle">
          <tr class="tr1">
            <th class="no">No</th>
            <th class="name">Nama</th>
            <th class="value">Value</th>
          </tr>
          <tr>
            <td class="no">1</td>
            <td class="name">Nama Pembeli</td>
            <td class="value">{{ pembeli }}</td>
          </tr>
          <tr>
            <td class="no">2</td>
            <td class="name">Jenis Kendaraan</td>
            <td class="value">{{ jeniskendaraan }}</td>
          </tr>
          <!-- Tambahkan baris lainnya sesuai kebutuhan -->
        </table>
      </div>
      <br />
      <br />
  
      <div class="table-bordered">
        <h2>Jadwal Angsuran</h2>
        <table class="table align-middle">
          <tr>
            <th>Bulan</th>
            <th>Angsuran Pokok</th>
            <th>Angsuran Bunga</th>
            <th>Total Angsuran</th>
            <th>Sisa Angsuran</th>
          </tr>
          <tr v-for="(row, index) in jadwalAngsuran" :key="index">
            <td>{{ row.bulan }}</td>
            <td>{{ row.angsuranPokok }}</td>
            <td>{{ row.angsuranBunga }}</td>
            <td>{{ row.totalAngsuran }}</td>
            <td>{{ row.sisaAngsuran }}</td>
          </tr>
        </table>
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
        pembeli: "<?php echo $pembeli; ?>",
        jeniskendaraan: "<?php echo $jeniskendaraan; ?>",
        // Tambahkan properti lainnya sesuai kebutuhan
        jadwalAngsuran: [],
      };
    },
    created() {
      // Panggil metode untuk mengisi jadwalAngsuran
      this.generateJadwalAngsuran();
    },
    components: {
      Header,
      Footer,
    },
    methods: {
      generateJadwalAngsuran() {
        // Logika untuk mengisi jadwalAngsuran
        // Anda dapat menggunakan logika yang sama seperti pada PHP
        // Namun, di sini saya hanya memberikan contoh data statis
        for (let bln = 1; bln <= 12; bln++) {
          this.jadwalAngsuran.push({
            bulan: bln,
            angsuranPokok: 1000, // Ganti dengan logika perhitungan yang sesuai
            angsuranBunga: 500, // Ganti dengan logika perhitungan yang sesuai
            totalAngsuran: 1500, // Ganti dengan logika perhitungan yang sesuai
            sisaAngsuran: 12000, // Ganti dengan logika perhitungan yang sesuai
          });
        }
      },
    },
  };
  </script>
  
  <style scoped>
  /* Tambahkan styling sesuai kebutuhan */
  </style>
  