<template>
    <div class="hero_area">
        <Header />
            <section class="hero" style="margin-top: 30px;">
                <div class="container">
                  <h1>Promo</h1>
                  <h1></h1> <!-- This line was missing the closing tag -->
                </div>
              <div class="text-center" style="padding: 0px;" >
                
              </div>
            </section>
              <section class="content">
                <div class="container">
                  
                  
                  <h3 center style="margin-bottom: 50px;">
                    Maaf, belum ada promo. silahkan <a href="">Kontak Kami</a> untuk mendapatkan penawaran menarik
                  </h3>
                </div>
              </section>
            </div>
            <Footer />
</template>

<script>
import Header from '@/components/headfot/Header.vue'; // Adjust the path based on your project structure
import Footer from '@/components/headfot/Footer.vue'; // Adjust the path based on your project structure

export default {
  components: {
    Header,
    Footer
  }
}
</script>