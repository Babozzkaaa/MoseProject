<template>
    <Header />
    <div>
      <section class="hero" style="margin-top: 30px;">
                <div class="container">
                  <h1>Ducati SuMisura: the project</h1>
                  <h1>to create the suite of your</h1>
                  <h1>dreams</h1>
                </div>
              <div class="text-center" style="padding: 40px;" >
                <div class="image-container"  >
                  <img src="../../assets/apparel.png" width="900px" height="450px"   alt="">
                </div>
              </div>
            </section>
              <section class="content">
                <div class="container">
                  
                <p>
                    Proyek Ducati SuMisura - yang dikembangkan dalam kolaborasi dengan 
                    mitra lama Dainese - adalah proyek kustomisasi 
                    yang didedikasikan untuk mereka yang bermimpi untuk membuat suite mereka sendiri yang unik dan 
                    istimewa. Diluncurkan pada tahun 2014, proyek ini menawarkan kesempatan kepada semua Ducatisti 
                    untuk membuat setelan khusus sesuai dengan estetika dan 
                    kebutuhan kenyamanan mereka. Hasilnya adalah sebuah karya yang unik, yang mampu merefleksikan 
                    karakter dan kepribadian pemiliknya yang antusias selama 
                    petualangan bersepeda; setelan yang melekat sempurna pada tubuh dan 
                    mengikuti gerakannya, menjamin keamanan, kenyamanan, dan 
                    fleksibilitas yang lebih besar di atas sepeda.
                  </p>
                  <p>
                    Ducatisumisura.com, situs web produsen Borgo Panigale 
                    yang didedikasikan untuk proyek SuMisura, telah diperbarui dengan 
                    baru yang diperbarui dalam konten dan grafis untuk koleksi 2023. 
                    Setiap model yang tersedia dapat disesuaikan berkat palet 30 
                    warna, untuk memuaskan selera setiap pelanggan yang bersemangat 
                    dan memungkinkan terciptanya pakaian yang unik. Melalui konfigurator 
                    sebenarnya dimungkinkan untuk memilih model setelan yang paling sesuai dengan Anda 
                    kebutuhan dan menggabungkan warna panel sampai Anda menemukan Anda 
                    kombinasi favorit Anda. Setelah Anda membuat sketsa, Anda dapat 
                    mengirim pdf langsung ke dealer terdekat, yang akan menghubungi Anda
                    untuk melanjutkan pesanan pakaian pribadi Anda.
                  </p>
                  <p>
                    Situs yang telah dirubah ini mencerminkan rangkaian setelan yang terus berkembang,
                     yang kini memenuhi kebutuhan setiap gaya berkendara - balap,
                      sport dan touring - dan setiap Ducatista. Model-model terbaru adalah 
                      setelan Ducati Corse |D|air® C2 Lady, yang didedikasikan untuk semua pengendara sepeda motor 
                      yang suka melibas tikungan lintasan, dan Ducati Corse 
                      D-air K2, yang terbuat dari kulit kanguru yang tahan dan ringan. Ciri khas 
                      khas dari setelan ini adalah teknologi tinggi yang digunakan dalam realisasinya, 
                      yang bertujuan untuk menjamin keamanan maksimum. Kedua model tersebut sebenarnya dilengkapi 
                      dengan kantung udara terintegrasi, yang diaktifkan dalam beberapa milidetik 
                      jika terjadi benturan atau perosotan dan dengan bekerja secara sinergis dengan
                       pelindung, memastikan perlindungan untuk leher, bahu dan tulang selangka 
                       dan seluruh bagian atas tubuh.
                  </p>
                  <p>
                    Halaman yang didedikasikan untuk dealer resmi tersedia di situs, melalui 
                    di mana setiap Ducatista dapat dengan mudah dan segera menemukan Toko terdekat, 
                    di mana staf khusus akan melakukan pengukuran untuk membuat setelan yang sepenuhnya 
                    setelan yang dipersonalisasi.
                  </p>
                  <p>
                    Bahkan, para dealer resmi dilatih dengan kursus spesialisasi 
                    yang diselenggarakan oleh pabrikan Borgo Panigale bersama dengan tim teknis 
                    teknis dari Dainese; karena kursus spesialisasi diadakan secara konstan,
                     halaman ini terus diperbarui. Bahkan Dealer Ducati yang belum menjalani
                      pelatihan ini masih dapat menerima pesanan untuk overall yang disesuaikan,
                       namun dalam ukuran standar.
                  </p>
                  <p>
                    Ducati SuMisura menawarkan Ducatisti pengalaman unik dalam menciptakan sebuah
                     eksklusif, memenuhi kebutuhan estetika dan kenyamanan pribadi. Semua
                      informasi tersedia di situs web Ducatisumisura.com.
                  </p>
                </div>
              </section>
    </div>
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