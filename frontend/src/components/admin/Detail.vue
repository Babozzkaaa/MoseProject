<template>
    <div class="container">
        <h2>Detail Produk</h2>
        <table>
            <tr>
                <td>Nama Penyewa</td>
                <td>: Gusnanto</td>
            </tr>
            <tr>
                <td>Email</td>
                <td>: gusnanto.com</td>
            </tr>
            <tr>
                <td>Tanggal Pinjam</td>
                <td>: 27/09/2003</td>
            </tr>
            <tr>
                <td>Tanggal Pengembalian</td>
                <td>: 29/11/2023</td>
            </tr>
            <tr>
                <td>Jenis Kelamin</td>
                <td>: Laki-laki</td>
            </tr>
            <tr>
                <td>Alamat</td>
                <td>: Tasikmadu</td>
            </tr>
            <tr>
                <td>Upload Foto KTP</td>
                <td colspan="2">
                    <img src="assets/ktp.png" alt="Foto KTP" style="max-width: 100%; height: auto; display: block; margin: 0 auto;">
                </td>
            </tr>
            <tr>
                <td>Metode Pembayaran</td>
                <td>: Dana</td>
            </tr>
            <tr>
                <td>Metode Pembayaran</td>
                <td colspan="2">
                    <img src="assets/payment.png" alt="Metode Pembayaran" style="max-width: 100%; height: auto; display: block; margin: 0 auto;">
                </td>
            </tr>
        </table>
        <br><br>
        <router-link to="/dashboard">
            <button type="button" class="btn-batal">Kembali</button>
        </router-link>
        <br><br>
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
    background-color: #f8f8f8;
    margin: 0;
    padding: 0;
}

.container {
    max-width: 600px;
    margin: 50px auto;
    padding: 20px;
    background-color: #fff;
    border-radius: 10px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}

h2, h4 {
    text-align: center;
    color: #333;
}

table {
    width: 100%;
    margin-top: 20px;
    border-collapse: collapse;
}

table td {
    padding: 15px;
    border-bottom: 1px solid #ddd;
}

table td:first-child {
    font-weight: bold;
    width: 40%;
}

img {
    max-width: 100%;
    height: auto;
    display: block;
    margin: 15px auto;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}

.button-container {
    margin-top: 30px;
    text-align: center;
}

button {
    padding: 12px 24px;
    background-color: #333;
    color: #fff;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    transition: background-color 0.3s ease;
}

button:hover {
    background-color: #555;
}


</style>
    