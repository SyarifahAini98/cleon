<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>SB Admin - Register</title>

  <!-- Custom fonts for this template-->
  <link href="admin/boostrap/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

  <!-- Custom styles for this template-->
  <link href="admin/boostrap/css/sb-admin.css" rel="stylesheet">

</head>

<body class="bg-dark">

  <div class="container">
    <div class="card card-register mx-auto mt-5">
      <div class="card-header">Register an Account</div>
      <div class="card-body">
        <form action="aksi/aksi_register.php" method="post">
          <div class="form-group">
                <div class="form-label-group">
                  <input type="text" id="name" class="form-control" placeholder="Nama Anda" required="required" autofocus="autofocus" name="name">
                  <label for="name">Nama</label>
                </div>
          </div>

          <div class="form-group">
            <div class="form-row">
              <div class="col-md-6">
                <div class="form-label-group">
                    <input type="email" id="inputEmail" class="form-control" placeholder="Email address" required="required" name="email">
                    <label for="inputEmail">Email address</label>
                </div>
              </div>
               <div class="col-md-2">
                <div class="form-label-group">
                <input type="text" id="inputnumber2" class="form-control" placeholder="+62" required="required" name="no_telepon" disabled="">
                <label for="inputnumber2">+62</label>
              </div>
              </div>
              <div class="col-md-4">
                  <div class="form-label-group">
                    <input type="text" id="inputnumber" class="form-control" placeholder="+62" required="required" name="no_telepon" onchange="validate()" onkeypress="return hanyaAngka(event)"> 
                    <label for="inputnumber">No. Telp</label>
                </div>
              </div>
            </div>
          </div>

          <div class="form-group">
            <div class="form-row">
              <div class="col-md-6">
                <div class="form-label-group">
                  <input type="text" id="inputperusahaan" class="form-control" placeholder="Password" required="required" name="namapt">
                  <label for="inputperusahaan">Nama Perusahaan</label>
                </div>
              </div>
              <div class="col-md-6">
                <div class="form-label-group">
                  <input type="text" id="alamat" class="form-control" placeholder="Confirm password" required="required" name="alamat">
                  <label for="alamat">Alamat Perusahaan</label>
                </div>
              </div>
            </div>
          </div>

          <div class="form-check-inline">
            <label class="form-check-label">
              <input type="radio" class="form-check-input" name="optradio" value="mitra">Mitra
            </label>
          </div>

          <div class="form-check-inline">
            <label class="form-check-label">
              <input type="radio" class="form-check-input" name="optradio" value="perusahaan">Perusahaan
            </label>
          </div>

          <div class="form-group">
            <div class="form-label-group">
              <input type="password" id="password" class="form-control" placeholder="password" required="required" name="password">
              <label for="password">Password</label>
            </div>
          </div>
           <button class="btn btn-primary btn-block" type="submit"  onclick="return confirm('Apakah data sudah benar ?')" name="submit" id="submit">Sign Up</button>
        </form>
        <div class="text-center">
          <a class="d-block small mt-3" href="login.php">Login Page</a>
          <a class="d-block small" href="#">Forgot Password?</a>
        </div>
      </div>
    </div>
  </div>

  <!-- Bootstrap core JavaScript-->
  <script src="admin/boostrap/vendor/jquery/jquery.min.js"></script>
  <script src="admin/boostrap/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="admin/boostrap/vendor/jquery-easing/jquery.easing.min.js"></script>

  <script type="text/javascript">
    function hanyaAngka(evt) {
      var charCode = (evt.which) ? evt.which : event.keyCode
       if (charCode > 31 && (charCode < 48 || charCode > 57))
 
        return false;
      return true;
    }
  </script>

</body>

</html>
