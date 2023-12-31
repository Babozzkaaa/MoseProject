<template>
  <div class="hero_area" v-if="post">
    <section class="hero">
      <div class="container">
        <h1>Edit Produk</h1>
      </div>
    </section>
    <section class="content">
      <div class="container">
        <form @submit.prevent="update" v-if="!isLoading">
          <input v-model="post.id" type="hidden" />
          <!-- Add other input fields for different post properties -->
          <div>
            <label>Nama Produk</label> {{ validation.name?.[0] || '' }}
            <input type="text" v-model="post.name">
          </div>
          <div>
            <label>Deskripsi</label> {{ validation.description?.[0] || '' }}
            <input v-model="post.description" type="text" placeholder=" Silahkan masukkan deskripsi produk" />
          </div>
          <div>
            <label>Tahun Produksi</label> {{ validation.tahun_produksi?.[0] || '' }}
            <input v-model="post.tahun_produksi" type="text" placeholder=" Silahkan masukkan tahun produksi" />
          </div>
          
          <div>
            <label>Harga Jual</label> {{ validation.price?.[0] || '' }}
            <input v-model="post.price" type="text" placeholder=" Silahkan masukkan harga jual" />
          </div>
          <div>
            <label>CC Motor</label> {{ validation.CC_Motor?.[0]  || '' }}
            <input v-model="post.CC_Motor" type="text" placeholder=" Silahkan masukkan CC Motor" />
          </div>
          <div>
            <label>Torsi</label> {{ validation.Torsi?.[0] || '' }}
            <input v-model="post.Torsi" type="text" placeholder=" Silahkan masukkan Torsi" />
          </div>
          <div>
            <label>Tipe Mesin</label> {{ validation.Tipe_Mesin?.[0] || '' }}
            <input v-model="post.Tipe_Mesin" type="text" placeholder=" Silahkan masukkan Tipe Mesin" />
          </div>
          <div>
            <label>Transmisi</label> {{ validation.Transmisi?.[0] || '' }}
            <input v-model="post.Transmisi" type="text" placeholder=" Silahkan masukkan Transmisi" />
          </div>
          <div>
            <label>Kapasitas Tangki</label> {{ validation.Kapasitas_Tangki?.[0] || '' }}
            <input v-model="post.Kapasitas_Tangki" type="text" placeholder=" Silahkan masukkan Kapasitas Tangki" />
          </div>
          <div>
            <label>Rasio Kompresi</label> {{ validation.Rasio_Kompresi?.[0] || '' }}
            <input v-model="post.Rasio_Kompresi" type="text" placeholder=" Silahkan masukkan Rasio Kompresi" />
          </div>
          <!-- <div>
            <label>Gambar Produk</label>
            <img v-if="post.image" style="width: 120px; float: left; margin-bottom: 5px;">
            <i style="float: left; font-size: 11px; color: red">Abaikan jika tidak merubah gambar produk</i>
            <input type="file" @change="onFileChange" />
          </div> -->
          <div>
            <button type="submit">Simpan Perubahan</button>
          </div>
        </form>
      </div>
    </section>
  </div>
</template>

<script>
import axios from 'axios';
import { reactive, ref } from "vue";
import { useRouter, useRoute } from "vue-router";

export default {
  setup() {
    const route = useRoute();
    const motorId = ref(route.params.id);

    // Initial state motor
    const post = reactive({
      name: "",
      description: "",
      price: 0,
      tahun_produksi: 0,
      CC_Motor: "",
      Torsi: "",
      Tipe_Mesin: "",
      Transmisi: "",
      Kapasitas_Tangki: "",
      Rasio_Kompresi: "",
      // image: null,
      
      
    });

    // State validation
    const validation = ref({});

    // Vue router
    const router = useRouter();
    const isLoading = ref(true);

    // Load existing data when the component is mounted
    const loadData = () => {
  axios
    .get(`/api/motor/${motorId.value}`)
    .then((response) => {
      console.log(response.data.data);
      // Assign state post with response data
      Object.assign(post, response.data.data);
      isLoading.value = false; // data is loaded, set isLoading to false
    })
    .catch((error) => {
      if (error.response.status === 404) {
        // Handle case where no record is found (e.g., redirect or show an error message)
        router.push({ name: "notFound" });
      } else {
        console.log(error.response.data);
      }
    });
};


    // Method update
    const update = () => {
      let name = post.name;
      let description = post.description;
      let price = post.price;
      let tahun_produksi = post.tahun_produksi;
      let CC_Motor = post.CC_Motor;
      let Torsi = post.Torsi;
      let Tipe_Mesin = post.Tipe_Mesin;
      let Transmisi = post.Transmisi;
      let Kapasitas_Tangki = post.Kapasitas_Tangki;
      let Rasio_Kompresi = post.Rasio_Kompresi;
      // let image = post.image;

      axios
        .put(`/api/motor/${motorId.value}`, {
          name: name,
          description: description,
          price: price,
          tahun_produksi: tahun_produksi,
          CC_Motor: CC_Motor,
          Torsi: Torsi,
          Tipe_Mesin: Tipe_Mesin,
          Transmisi: Transmisi,
          Kapasitas_Tangki: Kapasitas_Tangki,
          Rasio_Kompresi: Rasio_Kompresi,
          // image: image,
        })
        .then(() => {
          // Redirect to user page after successful update
          
          router.push({ name: "adminDashboard" });
        })
        .catch((error) => {
          // Assign state validation with error
          validation.value = error.response.data;
        });
    };

    // Load existing data when the component is mounted
    loadData();

    // Return
    return {
      post,
      validation,
      router,
      update,
      isLoading,
    };
  },
  }



</script>
