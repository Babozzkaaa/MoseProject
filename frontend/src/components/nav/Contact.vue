<template>
    <div>
    <Header />
        <section class="contact_section layout_padding">
      <div class="container">
        <h2 class="font-weight-bold">Contact Us</h2>
        <div class="row">
          <div class="col-md-8 mr-auto">
            <form action="">
              <div class="contact_form-container">
                <div>
                  <div>
                    <input type="text" placeholder="Name" />
                  </div>
                  <div>
                    <input type="text" placeholder="Nomor Telepon" />
                  </div>
                  <div>
                    <input type="email" placeholder="Email" />
                  </div>

                  <div class="mt-5">
                    <input type="text" placeholder="Pesan" />
                  </div>
                  <div class="mt-5">
                    <button type="submit">send</button>
                  </div>
                </div>
              </div>
            </form>
          </div>
        </div>
      </div>
    </section>
    <Footer />
    </div>
</template>

<script>
import Header from '@/components/headfot/Header.vue'; // Adjust the path based on your project structure
import Footer from '@/components/headfot/Footer.vue'; // Adjust the path based on your project structure

export default {
  components: {
    Header,
    Footer
  },
}
</script>
