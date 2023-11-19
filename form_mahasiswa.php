<!-- form_mahasiswa.php -->

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Data Mahasiswa</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <h2>Form Data Mahasiswa</h2>
    
    <form action="simpan_data.php" method="post">
        <label for="nim">NIM:</label>
        <input type="text" name="nim" required>
        
        <label for="nama">Nama:</label>
        <input type="text" name="nama" required>
        
        <label for="prodi">Prodi:</label>
        <input type="text" name="prodi" required>
        
        <button type="submit">Simpan</button>
    </form>

    <hr>

    <!-- Form untuk filter berdasarkan prodi -->
    <form action="form_mahasiswa.php" method="get">
        <label for="filter_prodi">Filter Prodi:</label>
        <input type="text" name="filter_prodi">
        <button type="submit">Filter</button>
    </form>

    <!-- Tabel untuk menampilkan data -->
    <h2>Data Mahasiswa</h2>
    <table border="1">
        <thead>
            <tr>
                <th>NIM</th>
                <th>Nama</th>
                <th>Prodi</th>
                <th>Aksi</th>
            </tr>
        </thead>
        <tbody>
            <?php
            include 'koneksi.php';

            // Ambil nilai filter prodi dari URL
            $filterProdi = isset($_GET['filter_prodi']) ? $_GET['filter_prodi'] : '';

            // Modifikasi query SQL sesuai dengan filter prodi
            $sql = "SELECT * FROM data_mahasiswa";
            if ($filterProdi !== '') {
                $sql .= " WHERE prodi LIKE '%$filterProdi%'";
            }

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
        </tbody>
    </table>
</body>
</html>
