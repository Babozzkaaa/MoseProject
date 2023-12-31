<template>
  <div class="wrapper">
    <div class="login-box">
      <form @submit.prevent="loginUser">
        <h2>Login Admin</h2>
        <div class="input-box">
          <span class="icon">
            <ion-icon name="person"></ion-icon>
          </span>
          <input type="text" v-model="username" required />
          <label>Username</label>
        </div>
        <div class="input-box">
          <span class="icon">
            <ion-icon name="lock-closed"></ion-icon>
          </span>
          <input type="password" v-model="password" required />
          <label>Password</label>
        </div>
        <button type="submit">Login</button>
      </form>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      username: '',
      password: '',
    };
  },
  methods: {
    async loginUser() {
      try {
        const response = await this.$http.post('/loginadmin', {
          username: this.username,
          password: this.password,
        });

        // Jika login berhasil, berpindah ke halaman home
        if (response.data.success) {
          this.$router.push('/dashboard');
        } else {
          // Jika login gagal, tampilkan pesan kesalahan
          alert('Username atau password salah');
        }
      } catch (error) {
        console.error(error.response.data);
      }
    },
  },
  head() {
    return {
      script: [
        { src: 'https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js' },
        { src: 'https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js' },
      ],
    };
  },
};
</script>

<style scoped>
  /* Import the external CSS file */
  @import './style.css';
</style>
