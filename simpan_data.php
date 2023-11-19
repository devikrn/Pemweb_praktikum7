<?php
include 'koneksi.php';

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $nim = $_POST['nim'];
    $nama = $_POST['nama'];
    $prodi = $_POST['prodi'];

    $sql = "INSERT INTO data_mahasiswa (nim, nama, prodi) VALUES ('$nim', '$nama', '$prodi')";
    
    if ($conn->query($sql) === TRUE) {
        header("Location: form_mahasiswa.php");
        exit();
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }
}

$conn->close();
?>
