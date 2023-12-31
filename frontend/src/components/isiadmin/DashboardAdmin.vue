<template>
  <div>
    <section class="service_section layout_padding d-flex justify-content-center align-items-center">
      <div class="container align-content-center">
        <router-link to="/create" class="btn btn-success mb-3">
          Add Product
        </router-link>

        <table class="table table-bordered table-hover">
          <thead class="thead-dark">
            <tr>
              <th scope="col">No</th>
              <th scope="col">Image</th>
              <th scope="col">Name</th>
              <th scope="col">Harga</th>
              <th scope="col">Action</th>
            </tr>
          </thead>
          <tbody>
            <tr v-for="(motor, index) in ListMotor" :key="motor.id">
              <td>{{ index + 1 }}</td>
              <td>
                <img
                  :src="getImageUrl(motor.image)"
                  class="img-thumbnail product-image"
                  alt="Product Image"
                />
              </td>
              <td>{{ motor.name }}</td>
              <td>{{ motor.price }}</td>
              <td>
                <router-link :to="{ name: 'detailadmin', params: { id: motor.id } }" class="btn btn-info btn-sm">
                  Detail
                </router-link>
                <router-link :to="{ name: 'update', params: { id: motor.id } }" class="btn btn-info btn-sm">
                  
                  Update
                </router-link>
                <button
                @click="confirmDelete(motor.id)"
                class="btn btn-danger btn-sm ml-2"
                >
                Delete
              </button>
              </td>
            </tr>
          </tbody>
        </table>
      </div>
    </section>
  </div>
</template>

<script>
export default {
  data() {
    return {
      ListMotor: [],
      no:1,
    };
  },
  mounted() {
    this.fetchMotorcycles();
  },
  methods: {
    async fetchMotorcycles() {
      try {
        const response = await this.$axios.get('/api/motor');
        this.ListMotor = response.data.motor;
      } catch (error) {
        console.error('Error fetching productList:', error);
      }
    },
    async confirmDelete(motorId) {
      if (motorId) {
        const isConfirmed = window.confirm("Are you sure you want to delete this product?");
        if (isConfirmed) {
          try {
            await this.$axios.delete(`/api/motor/${motorId}`);
            this.fetchMotorcycles();
          } catch (error) {
            console.error('Error deleting product:', error);
          }
        }
      } else {
        console.error("Invalid product ID");
      }
    },
    getImageUrl(imagePath) {
  // Form the URL with the correct path
  return `http://localhost:8000/storage/${imagePath}`;
},

  }
};
</script>

<style scoped>
.product-image {
  max-width: 100px;
  max-height: 75px;
  object-fit: cover;
}

/* Additional styling for better appearance */
.container {
  padding: 30px;
}

.btn-success {
  background-color: #28a745;
  border-color: #28a745;
}

.btn-success:hover {
  background-color: #218838;
  border-color: #1e7e34;
}

.table th, .table td {
  text-align: center;
  vertical-align: middle;
}

.btn-info, .btn-danger {
  width: 80px;
}
</style>
