<?php
include 'dbconfig.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $table = $_POST['table'];
    $id = $_POST['id'];
    $fields = [];
    $params = [];
    
    foreach ($_POST as $key => $value) {
        if ($key !== 'table' && $key !== 'id') {
            $fields[] = "$key = :$key";
            $params[$key] = $value;
        }
    }
    
    $params['id'] = $id;
    $sql = "UPDATE $table SET " . implode(', ', $fields) . " WHERE " . ucfirst($table) . "ID = :id";
    $stmt = $pdo->prepare($sql);
    $stmt->execute($params);
    
    header('Location: index.php');
}