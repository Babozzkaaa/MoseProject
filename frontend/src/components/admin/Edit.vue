<template>
    <div class="container">
        <h2>Tambah Produk</h2>
        <form method="POST" action="">
            <label for="nama_produk">Nama Produk</label>
            <input type="text" id="nama_produk" name="nama_produk" required>

            <label for="harga">Harga</label>
            <input type="number" id="harga" name="harga" step="0.01" required>

            <label for="deskripsi_produk">Deskripsi Produk</label>
            <textarea id="deskripsi_produk" name="deskripsi_produk" rows="4" required></textarea>

            <label for="foto_produk">Foto Produk</label>
            <input type="file" id="foto_produk" name="foto_produk" required>
            <br>
            <router-link to="/produkadmin">
                <button type="submit" class="btn-tambah">Edit Produk</button>
            </router-link>
            <br><br>
            <router-link to="/produkadmin">
                <button type="button" class="btn-batal">Batal</button>
            </router-link>
            <br><br>
        </form>
    </div>
    </template>
    
<script>
    export default {
      mounted() {
      },
    };
</script>
    
    
<style scoped>
/* Your scoped styles here */
body {
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    background-color: #f2f2f2;
    margin: 0;
    padding: 0;
}

.container {
    max-width: 600px;
    margin: 50px auto;
    padding: 20px;
    background-color: #fff;
    border-radius: 10px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

h2 {
    text-align: center;
    color: #333;
}

form {
    margin-top: 20px;
}

label {
    display: block;
    margin-bottom: 8px;
    color: #333;
}

input, textarea {
    width: 100%;
    padding: 10px;
    margin-bottom: 15px;
    border: 1px solid #ddd;
    border-radius: 5px;
    box-sizing: border-box;
    font-size: 16px;
}

textarea {
    resize: vertical;
}

.btn-tambah {
  background-color: #4CAF50; 
  color: white;
}

.btn-batal {
  background-color: #3498db; 
  color: white;
}

.btn-batal:hover {
  background-color: #2980b9; 
}

</style>
    