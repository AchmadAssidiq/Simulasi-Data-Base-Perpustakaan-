<?php

require("function.php");

$id_kategori = $_GET['id_kategori'];

if (hapus_data2($id_kategori) > 0) {
    echo "
        <script>
            alert('Data berhasil dihapus!');
            document.location.href = 'index2.php';
        </script>
    ";
} else {
    echo "
        <script>
            alert('Data gagal dihapus!');
            document.location.href = 'index2.php';
        </script>
    ";
}
