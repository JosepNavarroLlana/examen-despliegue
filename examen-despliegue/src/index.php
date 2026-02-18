<?php
require_once 'config.php';
$conn = new mysqli(DB_HOST, DB_USER, DB_PASS, DB_NAME, (int)DB_PORT);
if ($conn->connect_error) {
 die('<p style="color:red">Error: ' . htmlspecialchars($conn->connect_error) . '</p>');
}
$conn->set_charset('utf8mb4');
$result = $conn->query(
 'SELECT nombre, tipo, precio FROM componentes ORDER BY tipo, nombre'
);
?>
<!DOCTYPE html>
<html lang='es'>
<head>
 <meta charset='UTF-8'>
 <title>Componentes de PC</title>
 <style>
 body { font-family: Arial, sans-serif; padding: 2rem; background: #f0f4f8; }
 h1 { color: #1a3c5e; margin-bottom: 1.5rem; }
 table { border-collapse: collapse; width: 100%; background: #fff; }
 th { background: #1a3c5e; color: #fff; padding: 10px; text-align: left; }
 td { padding: 8px 10px; border-bottom: 1px solid #e2e8f0; }
 tr:hover td { background: #eef2f7; }
 .precio { font-weight: bold; color: #1e7e34; }
 </style>
</head>
<body>
 <h1>Componentes de PC</h1>
 <?php if ($result && $result->num_rows > 0): ?>
 <table>
 <thead><tr>
 <th>Componente</th><th>Tipo</th><th>Precio</th>
 </tr></thead>
 <tbody>
 <?php while ($row = $result->fetch_assoc()): ?>
 <tr>
 <td><?= htmlspecialchars($row['nombre']) ?></td>
 <td><?= htmlspecialchars($row['tipo']) ?></td>
 <td class='precio'><?= number_format((float)$row['precio'],2,',','.') ?> EUR</td>
 </tr>
 <?php endwhile; ?>
 </tbody>
 </table>
 <p>Total: <?= $result->num_rows ?> componentes</p>
 <?php else: ?>
 <p>No se encontraron datos.</p>
 <?php endif; ?>
</body></html>
<?php $conn->close(); ?>