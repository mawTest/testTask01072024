<?php

$sql        = "SELECT questions.*, u.name, u.gender FROM questions JOIN users u ON questions.user_id = u.id WHERE q. catalog_id = {$catId}";
$result     = [];
$questionsQ = $mysqli->query($query);
//лучше бы было сделать с помощью ORM, я бы переделал полностью собрал бы в один и сделал execute()->get_result()->fetch_all()
//а потом бы работал только с данными, но здесь задача отрефакторить, а не переписывать по-этому как-то так

while ($row = $questionsQ->fetch_assoc()) {
    $result[] = [
        'question' => $row,
        'user'     => [
            'name'   => $row['name'],
            'gender' => $row['gender']
        ]
    ];
    $questionsQ->free();
}