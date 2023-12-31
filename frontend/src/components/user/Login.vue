<template>
  <div class="login-container">
    <h2>Login</h2>
    <form @submit.prevent="login" class="login-form">
      <div class="form-group">
        <label>Email:</label>
        <input type="email" v-model="email" required>
      </div>
      <div class="form-group">
        <label>Password:</label>
        <input type="password" v-model="password" required>
      </div>
      <button type="submit" class="btn-login">Login</button>
    </form>
  </div>
</template>

<script>
import axios from 'axios';

export default {
  name: 'Login',
  data() {
    return {
      email: '',
      password: '',
    };
  },
  methods: {
    login() {
      const userData = {
        email: this.email,
        password: this.password,
      };

      axios.post('http://localhost:8000/api/login', userData)
      .then(({ data }) => {
        try {
          if (data.status) {
            // Berhasil login, tentukan alur berdasarkan role
            if (data.role === "admin") {
              console.log(data);
              // Pengguna dengan peran admin, arahkan ke halaman admin
              this.$router.push({ name: "adminDashboard" });
            } else if (data.role === "user") {
              // Pengguna dengan peran user, arahkan ke halaman user
              this.$router.push({ name: "userDashboard" });
            } else {
              // Jika peran tidak sesuai, mungkin ada kesalahan
              alert("Invalid role. Please contact administrator.");
            }
          } else {
            alert("Login failed. Please check your credentials.");
          }
        } catch (err) {
          alert("Error, please try again");
        }
      })
      .catch((error) => {
        console.error("Error during login:", error);
        alert("Error during login. Please try again.");
      });
  },
},
};
</script>

<style scoped>
/* Gaya CSS di sini */
.login-container {
  max-width: 400px;
  margin: auto;
  padding: 20px;
  border: 1px solid #ddd;
  border-radius: 8px;
  box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

h2 {
  text-align: center;
}

.login-form {
  display: flex;
  flex-direction: column;
}

.form-group {
  margin-bottom: 15px;
}

label {
  font-weight: bold;
}

input {
  padding: 8px;
  width: 100%;
  box-sizing: border-box;
  border: 1px solid #ddd;
  border-radius: 4px;
}

.btn-login {
  background-color: #4caf50;
  color: #fff;
  padding: 10px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  transition: background-color 0.3s;
}

.btn-login:hover {
  background-color: #45a049;
}
</style>
