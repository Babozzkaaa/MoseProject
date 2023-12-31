<template>
  <div class="register-container">
    <h2>Register</h2>
    <form @submit.prevent="register" class="register-form">
      <div class="form-group">
        <label>Name:</label>
        <input type="text" v-model="name" required>
      </div>
      <div class="form-group">
        <label>Email:</label>
        <input type="email" v-model="email" required>
      </div>
      <div class="form-group">
        <label>Password:</label>
        <input type="password" v-model="password" required>
      </div>
      <button type="submit" class="btn-register">Register</button>
    </form>
    <p v-if="registrationSuccess">Registration successful! Redirecting to login...</p>
  </div>
</template>

<script>
import axios from 'axios';

export default {
  name: 'Register',
  data() {
    return {
      name: '',
      email: '',
      password: '',
      registrationSuccess: false,
    };
  },
  methods: {
register() {
  const userData = {
    name: this.name,
    email: this.email,
    password: this.password,
  };

  axios.post('http://localhost:8000/api/register', userData)
    .then(response => {
      console.log(response.data);
      // Handle successful registration, e.g., redirect to login
      this.registrationSuccess = true; // Tambahkan sesuai kebutuhan aplikasi Anda
    })
    .catch(error => {
      console.error('Error:', error.response.data); // Response data from Axios

      // Handle validation errors or other errors
      if (error.response.status === 422) {
        // Handle validation errors, e.g., display them to the user
        console.log('Validation Errors:', error.response.data.errors);
      } else {
        // Handle other errors
        console.log('Other Server Error:', error.response.data.message);
      }
    });
},
},

};
</script>

<style scoped>
/* Gaya CSS di sini */
.register-container {
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

.register-form {
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

.btn-register {
  background-color: #4caf50;
  color: #fff;
  padding: 10px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  transition: background-color 0.3s;
}

.btn-register:hover {
  background-color: #45a049;
}
</style>
