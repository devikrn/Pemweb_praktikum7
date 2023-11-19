<?php
include 'koneksi.php';

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $id = $_POST['id'];
    $nim = $_POST['nim'];
    $nama = $_POST['nama'];
    $prodi = $_POST['prodi'];

    $sql = "UPDATE data_mahasiswa SET nim='$nim', nama='$nama', prodi='$prodi' WHERE id=$id";
    
    if ($conn->query($sql) === TRUE) {
        header("Location: form_mahasiswa.php");
        exit();
    } else {
        echo "Error updating record: " . $conn->error;
    }
}

$conn->close();
?>
