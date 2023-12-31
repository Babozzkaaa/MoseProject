<template>
    <Header />
    <div>
        <section class="hero" style="margin-top: 30px;">
      <div class="container">
        <h1>Emilia Romagna is Home:</h1>
        <h1>Ducati Supports Its Region</h1>
      </div>
      <div class="text-center" style="padding: 40px;">
        <div class="image-container">
          <img
            src="../../assets/emilia.png"
            width="720px"
            height="450px"
            alt=""
          />
        </div>
      </div>
    </section>

    <section class="content">
      <div class="container">
        <p>
        Ducati, lahir dan dibesarkan di distrik Borgo Panigale di Bologna dan
          berakar kuat di seluruh wilayah regional Motor yang terkenal di
          Lembah Emilia-Romagna yang terkenal, ingin melakukan sesuatu untuk wilayahnya.
        </p>
        <p>
        Perusahaan telah memutuskan untuk bergabung dengan kampanye "Un aiuto per l'Emilia-Romagna"
          dengan memberikan sumbangan sebesar 200.000 euro kepada Protezione
          Civile of the Region, yang akan menggunakan dana yang diterima untuk mendukung
          masyarakat dan komunitas yang terkena dampak banjir.
        </p>
        <p>
        Layaknya sebuah keluarga besar, Ducati juga mendukung semua karyawannya yang,
          mengalami kerusakan atau ketidaknyamanan, membutuhkan waktu untuk menyelesaikan
          darurat, mengakui jam absen sebagai jam kerja dalam
          dalam segala hal, dan oleh karena itu dibayar.
        </p>
        <p>
        Selain itu, Perwakilan Serikat Pekerja dan karyawan
          telah mengambil tindakan untuk menyumbangkan satu jam dari gaji mereka: hasilnya
          akan digandakan oleh Perusahaan, sekali lagi untuk mendukung masyarakat dan
          masyarakat yang terkena dampak di wilayah tersebut.
        </p>
        <p>
        Claudio Domenicali, CEO Ducati: "Menyaksikan apa yang telah terjadi di
          Wilayah kami dalam seminggu terakhir telah menjadi pukulan bagi kami semua
          kita semua. Ducati berakar kuat di wilayah Emilia-Romagna,
          mulai dari kota Bologna tempat kami dilahirkan dan di mana
          kami beroperasi hingga ke seluruh Lembah Motor dan Romagna Riders
          Land. Bagi kami, ini adalah rumah, dan kami merasa perlu menemukan cara
          untuk membantu, dengan mendukung donasi sebesar 200.000 euro kepada organisasi regional
          Protezione Civile yang saat ini mengkoordinasikan, bersama dengan
          otoritas terkait, operasi di banyak kota dan
          kota yang terkena dampak. Perwakilan Serikat Pekerja, bersama dengan
          karyawan, juga mengorganisir untuk menyumbangkan satu jam gaji
          sebagai bentuk solidaritas. Sebuah gerakan yang menunjukkan banyak hal tentang semangat
          kemanusiaan dan kolaborasi yang menjadi ciri khas penduduk
          wilayah yang luar biasa ini, yaitu Emilia-Romagna."
        </p>
        <p>
        Ducati - bersama dengan para pembalap resminya - mengundang
          komunitas internasional Ducatisti, DOC, dan dealer untuk
          bergabung dengan tujuan ini dengan membantu mendukung Protezione Civile
          di Emilia-Romagna.
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