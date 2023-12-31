<template>
    <Header />        
        <section class="hero" style="margin-top: 30px;">
            <div class="container">
              <h1>The first race in our history</h1>
              <h1>by a Ducati 100% electric on</h1>
              <h1>Saturday May 13th</h1>
            </div>
          <div class="text-center" style="padding: 40px;" >
            <div class="image-container"  >
              <img src="../../assets/shell.png" width="720px" height="450px"   alt="">
            </div>
          </div>
        </section>
          <section class="content">
            <div class="container">
              
            <p>
                Sabtu 13 Mei 2023 akan dikenang sebagai tanggal bersejarah dalam 
                dalam buku-buku Ducati. Itu adalah balapan pertama dalam sejarah kami yang dilakukan oleh 
                Ducati 100% listrik.
              </p>
              <p>
                Claudio Domenicali, CEO Ducati: "Pujian untuk Jordi Torres yang 
                memenangkan balapan ini, dan kepada semua insinyur Ducati dan Ducati Corse yang
                 yang telah mendorong teknologi hingga batas maksimal. Catatan waktu terbaiknya lebih dari 
                 3 detik lebih cepat dari waktu putaran terbaik untuk sepeda motor listrik di 
                 Sirkuit Le Mans.
              </p>
              <p>
                Proyek MotoE adalah bagian dari upaya R&D Ducati untuk mengurangi
                 CO2 perusahaan: kami ingin mempelajari apa yang akan menjadi teknologi terbaik untuk 
                 sepeda motor berperforma tinggi. Banyak insinyur yang hadir dan 
                 proyek ini dijalankan dengan cara yang sangat intens. Kami benar-benar ingin mengembangkan 
                 sepeda motor listrik terbaik, tanpa kompromi dalam hal performa.
              </p>
              <p>
                Dengan baterai Lithium yang tersedia saat ini, kepadatan energinya adalah,
                 ketika kepadatan daya juga merupakan persyaratan, di bawah 250 Wh/kg dan ini 
                 ini sangat membatasi jarak tempuh ketika berat badan menjadi masalah, seperti motor sport. 
                 Ducati MotoE beratnya hanya 225 kg tetapi jarak balapan harus dibatasi hingga 
                 7/8 lap, tergantung pada sirkuitnya.
              </p>
              <p>
                Tapi kami sudah melihat sel baru di mana kepadatan energi meningkat 
                hingga di atas 350 Wh/Kg (masih dalam tahap proto) dan sebuah pengumuman telah
                 baru saja diumumkan tentang sel 500 Wh/kg. Ketika sel-sel ini akan tersedia 
                 untuk produksi, kinerja global (daya, jangkauan, berat) dari 
                 sepeda listrik akan jauh lebih dekat dengan ICE daripada sekarang.
              </p>
              <p>
                Tentu saja, untuk menjadi kendaraan listrik yang benar-benar netral karbon perlu 
                diisi ulang dengan 100% energi terbarukan.
              </p>
              <p>
                Kami juga mengembangkan mesin ICE berdasarkan bahan bakar non-fosil, baik 
                baik bahan bakar nabati maupun bahan bakar minyak. Kejuaraan MotoGP akan berlangsung mulai tahun depan 
                40% bahan bakar non-fosil dan 100% mulai tahun 2027. Oleh karena itu, MotoGP akan menjadi nol 
                emisi karbon mulai tahun 2027 (ketika produksi bahan bakar juga dihitung 
                sebagaimana seharusnya secara logis). Dan kemungkinan besar Hidrogen juga akan berbicara banyak.                  
              </p>
              <p>
                Mengubah energi terbarukan menjadi bahan bakar dan Hidrogen kurang efisien 
                daripada menggunakannya langsung ke kendaraan listrik tetapi saat ini merupakan 
                cara yang sangat efektif untuk mengangkut energi yang dihasilkan di daerah yang jauh dari Eropa 
                atau AS, seperti Afrika atau Australia, di mana terdapat potensi yang sangat besar untuk
                 menghasilkan energi terbarukan. Jadi kita harus melihat bahan bakar dan hidrogen sebagai 
                 pembawa energi.
              </p>
              <p>
                Jadi... periode yang sibuk bagi para insinyur, oleh karena itu saya sangat bangga berada dalam kondisi 
                untuk memandu Ducati yang kita cintai ke masa depan dalam momen yang intens..."                  
              </p>
            </div>
          </section>
    <Footer />
</template>

<script>
import Header from '@/components/headfot/Header.vue';
import Footer from '@/components/headfot/Footer.vue';
export default {
    components: {
    Header,
    Footer,
  },

}
</script>

<style scoped>
body {
  font-family: Arial, sans-serif;
  background-color: #f7f7f7;
  margin-bottom: 20px;
  margin-top: 20px;
  padding: 20px;
}

.container {
  max-width: 1200px;
  margin: 0 auto;
  padding: 0px;
}

.heading {
  text-align: center;
  font-weight: bold;
  margin-bottom: 20px;
}

.button {
  display: inline-block;
  padding: 10px 20px;
  text-align: center;
  font-weight: bold;
  text-decoration: none;
  color: #ffffff;
  background-color: #000000;
  border-radius: 4px;
}

.button:hover {
  background-color: #333333;
}

.button.orange {
  background-color: #fc5d35;
}

.button.orange:hover {
  background-color: #ff7f59;
}

.text-center {
  text-align: center;
}

.padding-top {
  padding-top: 20px;
}

.padding-bottom {
  padding-bottom: 20px;
}

.padding-top-large {
  padding-top: 75px;
}

.padding-bottom-large {
  padding-bottom: 75px;
}

.padding-top-small {
  padding-top: 10px;
}

.padding-bottom-small {
  padding-bottom: 10px;
}

/* header */

.hero_area {
  height: 98vh;
  background-color: #f7f7f7;
  margin-top: 20px;
  margin-bottom: 20px;

}

.hero_area.sub_pages {
  height: auto;
}



.header_section .container-fluid {
  padding-right: 25px;
  padding-left: 25px;
  color: #000;
}

.header_section .nav_container {
  margin: 0 auto;
}

.custom_nav-container.navbar-expand-lg .navbar-nav .nav-link {
  padding: 10px 30px;
  color: #343434;
  text-align: center;
}
.nav-link {
  position: relative;
  display: inline-block;
}
.nav-link::before {
  content: "";
  position: absolute;
  left: 0;
  bottom: 0;
  width: 100%;
  height: 2px;
  background-color: #000;
  border-radius: 4px;
  scale: 0 1;
  transform-origin: right;
  transition: scale 0.25s;
}
.nav-link:hover::before {
  scale: 1;
  transform-origin: right;
}

a,
a:hover,
a:focus {
  text-decoration: none;
}

a:hover,
a:focus {
  color: initial;
}

.btn,
.btn:focus {
  outline: none !important;
  box-shadow: none;
}

.navbar-brand,
.navbar-brand:hover {
  text-transform: uppercase;
  font-weight: bold;
  font-size: 24px;
  color: #fafcfd;
}


.navbar-brand {
  display: flex;
  align-items: center;
}

.navbar-brand img {
  width: 45px;
  margin-right: 5px;
}

.navbar-brand span {
  font-size: 20px;
  font-weight: 700;
  color: #2e2e2d;
  margin-top: 5px;
}

.custom_nav-container {
  z-index: 99999;
  padding: 15px 0;
}

.custom_nav-container .navbar-toggler {
  outline: none;
}


.quote_btn-container a {
  display: inline-block;
  padding: 5px 15px;
  background-color: #fc5d35;
  color: #f7f7f7;
  font-size: 14px;
  text-transform: uppercase;
}
.info_section {
  background-color: #efeded;
  padding: 30px;
}
.info_section ul {
  padding: 0;
}

.info_section ul li {
  list-style-type: none;
  margin: 3px 0;
}

.info_section h5 {
  margin-bottom: 12px;
  font-size: 22px;
}

.info_section .social-box {
  margin: 25px 0;
}

.info_section .social-box img {
  width: 35px;
  margin-right: 5px;
}

.info_section .form_container input {
  width: 225px;
  height: 30px;
}

.info_section .form_container button {
  background-color: #fc5d35;
  border: none;
  outline: none;
  color: #fff;
  padding: 5px 30px;
  margin-top: 15px;
  font-size: 15px;
}

</style>