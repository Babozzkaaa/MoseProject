<template>
    <div id="wrapper">
      <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="navbar-header">
          <a class="navbar-brand-posisi" href="/dashboard">Dashboard Admin</a>
        </div>
        <ul class="nav navbar-right top-nav">
            <li class="dropdown">
                <a href="#" data-toggle="dropdown" class="user-dropdown"><i class="fa fa-user"></i> Habib</a>
            </li>
        </ul>
        <div class="collapse navbar-collapse navbar-ex1-collapse">
          <ul class="nav navbar-nav side-nav">
            <li class="active">
              <a href="/dashboard"><i class="fa fa-fw fa-dashboard"></i> Pelanggan</a>
            </li>
            <li>
              <a href="/produkadmin"><i class="fa fa-fw fa-edit"></i> Produk</a>
            </li>
            <li>
              <a href=""><i class="fa fa-fw fa-desktop"></i> LOGOUT</a>
            </li>
          </ul>
        </div>
      </nav>
  
      <div id="page-wrapper">
        <div class="container-fluid">
          <div class="row">
            <div class="col-lg-12">
              <ol class="breadcrumb">
                <li>
                    <i class="fa fa-dashboard"></i> <a href="/dashboard"><span class="bold-text">Dashboard Admin</span> / </a>
                </li>
                <li class="active">
                  <i class="fa fa-desktop"></i>Pelanggan
                </li>
              </ol>
            </div>
          </div>
  
          <div class="row">
            <div class="col-lg-3">
              <!-- Left Sidebar (Navigation) -->
              <div class="sidebar">
                <ul class="nav nav-pills flex-column">
                  <li class="nav-item">
                    <a class="nav-link active" href="/dashboard"><i class="fa fa-fw fa-dashboard"></i> Pelanggan</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="/produkadmin"><i class="fa fa-fw fa-edit"></i> Produk</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href=""><i class="fa fa-fw fa-desktop"></i> LOGOUT</a>
                  </li>
                </ul>
              </div>
            </div>
  
            <div class="col-lg-9">
              <!-- Main Content Area -->
              <div class="panel panel-default">
                <div class="panel-heading">
                  <h3 class="panel-title"><i class="fa fa-bar-chart-o fa-fw"></i> Database Pemesanan</h3>
                </div>
                <div class="panel-body">
                  <table class="table">
                    <thead>
                      <tr>
                        <th>No</th>
                        <th>Nama</th>
                        <th>Email</th>
                        <th>Tanggal Peminjaman</th>
                        <th>Alat</th>
                        <th>Aksi</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td>1</td>
                        <td>Habib</td>
                        <td>Habibshohiburrotib@gmail.com</td>
                        <td>27/11/2023</td>
                        <td>Tenda, Matras, Jaket</td>
                        <td>
                          <a href="/detail" class="btn btn-info btn-detail">Detail</a>
                          <a href="" class="btn btn-danger btn-hapus" onclick="return confirm('Anda yakin ingin hapus?');">Hapus</a>
                        </td>
                      </tr>
                    </tbody>
                  </table>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </template>
  
  <style scoped>
    /* Your existing styles */
  
    .navbar {
      background-color: #2f2f2f;
    }
  
    .navbar-header {
        text-align: center;
        padding: 15px;
    }
    
    .user-dropdown {
    margin-right: 40px; 
    }

  .navbar-brand-posisi {
    color: #fff;
    text-decoration: none;
    font-size: 25px;
    font-weight: bold;
  }
  
    .user-info {
      color: #000;
      background-color: #fff;
      padding: 5px 10px;
      display: inline-block;
      border-radius: 5px;
    }
  
    .sidebar {
      background-color: #2f2f2f;
      padding: 20px;
      height: 100vh;
    }
  
    .sidebar a {
      color: #fff;
      text-decoration: none;
    }
  
    .sidebar a:hover {
      color: #ffcc00;
    }
    .breadcrumb {
        color: #000000; 
        padding: 10px;
    }

  .breadcrumb a {
    color: #000000; 
  }
  .bold-text {
    font-weight: bold;
  }
  .btn {
    font-size: 14px;
    padding: 8px 10px; 
    margin-right: 10px;
  }
  
  .btn-detail {
    background-color: blue;
    color: white;
  }

  .btn-hapus {
    background-color: red;
    color: white;
  }
</style>
  