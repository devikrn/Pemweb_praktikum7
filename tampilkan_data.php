<?php
include 'koneksi.php';

$filter_prodi = isset($_GET['filter_prodi']) ? $_GET['filter_prodi'] : '';
$filter_condition = $filter_prodi ? "WHERE prodi LIKE '%$filter_prodi%'" : '';

$sql = "SELECT * FROM data_mahasiswa $filter_condition";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        echo "<tr>";
        echo "<td>" . $row['nim'] . "</td>";
        echo "<td>" . $row['nama'] . "</td>";
        echo "<td>" . $row['prodi'] . "</td>";
        echo "<td><a href='edit_data.php?id=" . $row['id'] . "'>Edit</a> | <a href='hapus_data.php?id=" . $row['id'] . "'>Hapus</a></td>";
        echo "</tr>";
    }
} else {
    echo "<tr><td colspan='4'>Tidak ada data</td></tr>";
}

$conn->close();
?>
