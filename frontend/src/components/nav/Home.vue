<template>
    <div>
      <Header />
      
      <section class="slider_section position-relative">
      <div
        id="carouselExampleControls"
        class="carousel slide"
        data-bs-ride="carousel"
        :data-bs-interval="carouselInterval" 
        ref="carousel"
      >
      <div class="carousel-inner">
        <div v-for="(item, index) in carouselItems" :key="index" :class="{ 'carousel-item': true, 'active': index === 0 }">
          <div class="slider_item-box">
            <div class="slider_item-container">
              <div class="container">
                <div class="row">
                  <div class="col-md-6">
                    <div class="slider_item-detail">
                      <div>
                        <h1>{{ item.title }}</h1>
                        <p v-if="item.subtitle">
                          <b>{{ item.subtitle }}</b> <br />
                          {{ item.description }}
                        </p>
                        <div class="d-flex">
                          <a :href="item.shopNowLink" class="text-uppercase custom_orange-btn mr-3">
                            Shop Now
                          </a>
                          <a :href="item.detailLink" class="text-uppercase custom_dark-btn">
                            Detail
                          </a>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="col-md-6">
                    <div class="slider_img-box">
                      <div>
                        <img :src="item.image" :alt="item.title" />
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <button
          class="carousel-control-prev"
          type="button"
          @click="goToPrevSlide"
        >
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="visually-hidden">Previous</span>
        </button>
        <button
          class="carousel-control-next"
          type="button"
          @click="goToNextSlide"
        >
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="visually-hidden">Next</span>
        </button>
    </div>
  </section>

      <!-- end slider section -->
    </div>

    <!-- service section -->

    <section class="service_section layout_padding">
      <div class="container">
        <h2 class="custom_heading">Our Services</h2>
        <p class="custom_heading-text">
          <b>Pilih kategori topik yang anda inginkan</b>
        </p>
        <div class="layout_padding2">
          <div class="card-deck">
            <div class="card">
              <a href="">
                <img src="../../assets/tag.png" />
                <div class="card-body">
                  <h5 class="card-title">Produk Kami</h5>
                  <p class="card-text"></p>
                </div>
              </a>
            </div>
            <div class="card">
              <a href=" ">
                <img src="../../assets/helm.png" />
                <div class="card-body">
                  <h5 class="card-title">Promo</h5>
                  <p class="card-text"></p>
                </div>
              </a>
            </div>
            <div class="card">
              <a href=" ">
                <img src="../../assets/calculator.png" />
                <div class="card-body">
                  <h5 class="card-title">Credit Simulation</h5>
                  <p class="card-text"></p>
                </div>
              </a>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- end service section -->

    <section class="about_section layout_padding">
      <div class="container">
        <h2 class="font-weight-bold">About Us</h2>
        <div class="row">
          <div class="col-md-8 mr-auto">
            <form action="">
              <div class="about_form-container">
                <div>
                  <h3>Welcome to Our Motorcycle Sales Company</h3>
                  <p>
                    &emsp; Di perusahaan penjualan sepeda motor kami, kami bersemangat
                    tentang sepeda motor dan membantu pengendara menemukan sepeda
                    sepeda motor yang sempurna. Dengan pengalaman bertahun-tahun di industri ini, kami berusaha untuk
                    menyediakan sepeda motor berkualitas tinggi dari merek-merek terkemuka.
                  </p>
                  <p>
                    &emsp; Tim kami yang terdiri dari staf yang berpengetahuan luas dan ramah
                    didedikasikan untuk membantu pelanggan di seluruh
                    proses pembelian. Kami menawarkan berbagai pilihan
                    sepeda motor, mulai dari sepeda motor sport hingga motor penjelajah, memastikan
                    memastikan bahwa setiap pengendara dapat menemukan sepeda motor yang sesuai dengan keinginan mereka.
                  </p>
                  <p>
                    &emsp; Kepuasan pelanggan adalah prioritas utama kami. Kami bertujuan untuk
                    memberikan layanan yang luar biasa, menawarkan harga yang kompetitif,
                    pilihan pembiayaan yang fleksibel, dan dukungan purna jual yang dapat diandalkan
                    dukungan. Apakah Anda seorang pengendara berpengalaman atau pemula,
                    kami di sini untuk memenuhi impian sepeda motor Anda.
                  </p>
                </div>
              </div>
            </form>
          </div>
        </div>
      </div>
    </section>
    <!-- end contact section -->


    <!-- enjoy section  -->
    <section class="enjoy_section">
      <div class="container_fluid">
        <h2>Enjoy your Riding</h2>
      </div>
    </section>

  <!-- news section -->
<!-- news -->
<section class="news_section">
      <div class="container">
        <h2 class="custom_heading">News</h2>
        <p class="custom_heading-text"></p>
        <div class="row layout_padding2">
          <div class="col-md-8">
            <div class="fruit_detail-box">
              <h3>CORPORATE</h3>
              <p class="mt-4 mb-5">
              Ducati telah memutuskan untuk bergabung dengan kampanye "Un aiuto per l'Emilia-Romagna"
                kampanye
              </p>
              <div>
                <router-link to="/news1" class="custom_dark-btn">  Selengkapnya.. </router-link>
              </div>
            </div>
          </div>
          <div
            class="col-md-4 d-flex justify-content-center align-items-center"
          >
            <div
              class="fruit_img-box d-flex justify-content-center align-items-center"
            >
            <img src="../../assets/emilia.png" />
            </div>
          </div>
        </div>
        <div class="row layout_padding2">
          <div class="col-md-8">
            <div class="fruit_detail-box">
              <h3>RACING</h3>
              <p class="mt-4 mb-5">
              Sabtu 13 Mei 2023: balapan pertama dalam sejarah kami yang dilakukan oleh Ducati
                100% listrik.
              </p>
              <div>
                <router-link to="/news2" class="custom_dark-btn">  Selengkapnya.. </router-link>
              </div>
            </div>
          </div>
          <div
            class="col-md-4 d-flex justify-content-center align-items-center"
          >
            <div class="fruit_img-box d-flex justify-content-center">
              <img src="../../assets/apparel.png" />
            </div>
          </div>
        </div>
        <div class="row layout_padding2-top layout_padding-bottom">
          <div class="col-md-8">
            <div class="fruit_detail-box">
              <h3>EQUIPMENT</h3>
              <p class="mt-4 mb-5">
              Ducati SuMisura: proyek untuk menciptakan rangkaian motor impian Anda
              </p>
              <div>
                <router-link to="/news3" class="custom_dark-btn">  Selengkapnya.. </router-link>
              </div>
            </div>
          </div>
          <div
            class="col-md-4 d-flex justify-content-center align-items-center"
          >
            <div
              class="fruit_img-box d-flex justify-content-center align-items-center"
            >
            <img src="../../assets/shell.png" />
            </div>
          </div>
        </div>
      </div>
    </section>
    

    
  
      <Footer />
  </template>
  
  <script>
import Header from '@/components/headfot/Header.vue';
import Footer from '@/components/headfot/Footer.vue';
import Diavel from '@/assets/Diavel.png';


export default {
  data() {
    return {
      diavelImage: Diavel,
      carouselItems: [
        {
          title: "Our Best Seller Scrambler",
          subtitle: "Next Gen Icon",
          description: "So fresh. So unmistakably Scrambler. The new Icon is here for you.",
          shopNowLink: "#",
          detailLink: "#",
          image: require("../../assets/Scrambler.png"),
        },
        {
          title: "Our Best Seller Panigale V4 R",
          subtitle: "Born to be winner",
          description: "Racing Configuration Panigale V4 R with full titanium racing exhaust and open clutch cover in carbon fibre.",
          shopNowLink: "#",
          detailLink: "#",
          image: require("../../assets/PanigaleV4.png"),
        },
        
        {
          title: "Our Best Seller Diavel V4",
          subtitle: "Dare to be Bold",
          description: "Muscular, sporty, exaggerated and elegant at the same time.",
          shopNowLink: "#",
          detailLink: "#",
          image: require("../../assets/Diavel.png"),
        },
      ],
      carouselInterval: 3000,
    };
  },
  components: {
    Header,
    Footer,
  },
  methods: {
     goToNextSlide() {
      this.$refs.carousel.next();
    },

    goToPrevSlide() {
      this.$refs.carousel.prev();
    },
    goToShopNow() {
      
    },
  },
  mounted() {
  },
};
</script>

<style scoped>
  /* your styles here */
</style>