<?php
include 'koneksi.php';

if ($_SERVER['REQUEST_METHOD'] == 'GET' && isset($_GET['id'])) {
    $id = $_GET['id'];
    $sql = "DELETE FROM data_mahasiswa WHERE id=$id";

    if ($conn->query($sql) === TRUE) {
        header("Location: form_mahasiswa.php");
        exit();
    } else {
        echo "Error deleting record: " . $conn->error;
    }
}

$conn->close();
?>
