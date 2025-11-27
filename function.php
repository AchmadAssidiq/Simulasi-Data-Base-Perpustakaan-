<?php
$conn = mysqli_connect("localhost", "root", "", "simbs");

function query($query)
{
    global $conn;
    $result = mysqli_query($conn, $query);
    $rows = [];
    while ($row = mysqli_fetch_assoc($result)) {
        $rows[] = $row;
    }
    return $rows;
}

function hapus_data($id_buku)
{
    global $conn;
    mysqli_query($conn, "DELETE FROM buku WHERE id_buku = $id_buku");
    return mysqli_affected_rows($conn);
}

function hapus_data2($id_kategori)
{
    global $conn;
    mysqli_query($conn, "DELETE FROM kategori WHERE id_kategori = $id_kategori");
    return mysqli_affected_rows($conn);
}

function ubah_data($data)
{
    global $conn;

    $id_buku     = $data["id_buku"];
    $nama_buku   = $data["nama_buku"];
    $id_kategori = $data["id_kategori"];
    $deskripsi   = $data["deskripsi"];
    $stok        = $data["stok"];

    $result = mysqli_query($conn, "SELECT gambar FROM buku WHERE id_buku = $id_buku");
    $row = mysqli_fetch_assoc($result);
    $gambar_lama = $row['gambar'];

    if ($_FILES["gambar"]["error"] === 4) {
        $gambar = $gambar_lama;
    } else {
        $gambar = upload_gambar($nama_buku);
    }

    $query = "UPDATE buku SET 
                nama_buku   = '$nama_buku',
                id_kategori = '$id_kategori',
                deskripsi   = '$deskripsi',
                stok        = '$stok',
                gambar      = '$gambar'
              WHERE id_buku = $id_buku";

    mysqli_query($conn, $query);

    return mysqli_affected_rows($conn);
}


function ubah_data2($data)
{
    global $conn;

    $id_kategori = $data["id_kategori"];
    $kategori = $data["kategori"];

    $query = "UPDATE kategori SET
                kategori = '$kategori'
              WHERE id_kategori = $id_kategori";


    mysqli_query($conn, $query);

    return mysqli_affected_rows($conn);
}

function tambah_data($data)
{
    global $conn;

    $nama_buku = $data['nama_buku'];
    $deskripsi = $data['deskripsi'];
    $stok = $data['stok'];
    $id_kategori = $data['id_kategori'];

    $gambar = upload_gambar($nama_buku);
    if (!$gambar) {
        return false;
    }


    $query = "INSERT INTO buku (nama_buku, deskripsi, stok, gambar, tanggal_input, id_kategori)
              VALUES ('$nama_buku', '$deskripsi', '$stok', '$gambar', CURDATE(), '$id_kategori')";
    mysqli_query($conn, $query);

    return mysqli_affected_rows($conn);
}

function upload_gambar($nama_buku)
{

    $namaFile = $_FILES['gambar']['name'];
    $ukuranFile = $_FILES['gambar']['size'];
    $error = $_FILES['gambar']['error'];
    $tmpName = $_FILES['gambar']['tmp_name'];

    if ($error === 4) {
        echo "<script>
                alert('pilih gambar terlebih dahulu!');
              </script>";
        return false;
    }

    $ekstensiGambarValid = ['jpg', 'jpeg', 'png', 'webp'];
    $ekstensiGambar = explode('.', $namaFile);
    $ekstensiGambar = strtolower(end($ekstensiGambar));
    if (!in_array($ekstensiGambar, $ekstensiGambarValid)) {
        echo "<script>
                alert('yang anda upload bukan gambar!');
              </script>";
        return false;
    }

    if ($ukuranFile > 2000000) {
        echo "<script>
                alert('ukuran gambar terlalu besar!');
              </script>";
        return false;
    }

    $namaFileBaru = $nama_buku . "_";
    $namaFileBaru .= '.';
    $namaFileBaru .= $ekstensiGambar;

    move_uploaded_file($tmpName, 'img/' . $namaFileBaru);

    return $namaFileBaru;
}

function tambah_data2($data)
{
    global $conn;

    $kategori = $data['kategori'];
    $deskripsi = $data['deskripsi'];

    $query = "INSERT INTO kategori (kategori,deskripsi, tanggal_input)
              VALUES ('$kategori','$deskripsi', CURDATE())";

    mysqli_query($conn, $query);

    return mysqli_affected_rows($conn);
}

function login($data)
{
    global $conn;

    $username = $data['username'];
    $password = $data['password'];

    $query = "SELECT * FROM user WHERE username = '$username'";
    $result = mysqli_query($conn, $query);
    // var_dump($result);
    // die;
    if (mysqli_num_rows($result) === 1) {
        $row = mysqli_fetch_assoc($result);

        if (password_verify($password, $row["password"])) {
            $_SESSION["login"] = true;
            $_SESSION["username"] = $row["username"];
            return true;
        } else {
            return "Password salah!";
        }
    } else {
        return "Username salah!";
    }
}

function register($data_register)
{
    global $conn;

    $username = strtolower(trim($data_register['username']));
    $email = strtolower(trim($data_register['email']));
    $password = mysqli_real_escape_string($conn, $data_register['password']);

    if (strlen($password) < 8) {
        return "Password harus mengandung minimal 8 karakter";
    }

    $cekUsername = mysqli_query($conn, "SELECT username FROM user WHERE username = '$username'");
    if (mysqli_fetch_assoc($cekUsername)) {
        return "Username sudah terdaftar!";
    }

    $cekEmail = mysqli_query($conn, "SELECT email FROM user WHERE email = '$email'");
    if (mysqli_fetch_assoc($cekEmail)) {
        return "email sudah terdaftar";
    }

    $password = password_hash($password, PASSWORD_DEFAULT);


    mysqli_query($conn, "INSERT INTO user (username, email, password) 
                         VALUES ('$username', '$email', '$password')");

    return true;
}
