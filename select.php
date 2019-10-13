<?php
//1. DB接続
$dbn = 'mysql:dbname=gsacfd04_03;charset=utf8;port=3306;host=localhost';
$user = 'root';
$pwd = '';

try {
  $pdo = new PDO($dbn, $user, $pwd);
} catch (PDOException $e) {
  exit('dbError:' . $e->getMessage());
}

//2. データ表示SQL作成
$sql = 'SELECT * FROM gs_bm_table';
$stmt = $pdo->prepare($sql);
$status = $stmt->execute();

//3. データ表示
$view = '';
if ($status == false) {
  //execute（SQL実行時にエラーがある場合）
  $error = $stmt->errorInfo();
  exit('sqlError:' . $error[2]);
} else {
  //Selectデータの数だけ自動でループしてくれる
  //http://php.net/manual/ja/pdostatement.fetch.php
  while ($result = $stmt->fetch(PDO::FETCH_ASSOC)) {
    //     $view .= '<li class="list-group-item">';
    //     $view .= '<li class="list-group-item">' . $result['name'] . '</li>';
    //     $view .= '<li class="list-group-item">' . $result['url']  . '</li>';
    //     $view .= '<li class="list-group-item">' .  $result['comment']  . '</li>';
    //     $view .= '</li>';
    //   }
    // }
    // $view .= '<table class="table">'; //表タグ
    // $view .= "\t<tr>\n"; //行タグ
    // $view .= "\t\t<th class='a'>書籍名</th>\n"; //タイトル行
    // $view .= "\t\t<th class='b'>URL</th>\n"; //タイトル行
    // $view .= "\t\t<th class='c'>コメント</th>\n"; //タイトル行
    // $view .= "\t\t<td  $result['name']> </td>\n";
    // $view .= "\t</tr>\n"; //行タグ
    // $view .= "</table>\n"; //表タグ

    $view .= '<table class="table" style="table-layout: fixed; overflow-wrap : break-word;">';
    $view .= '<thead class="thead-light">';
    $view .= '<tr>';
    $view .= '<th>' . $result['id'] . '</t>';
    $view .= '<a href="detail.php?id=' . $result['id'] . '" class="badge badge-primary">Edit</a>';
    $view .= '<a href="delete.php?id=' . $result['id'] . '" class="badge badge-danger">Delete</a>';
    $view .= '<td>' . $result['name'] . '</td>';
    $view .= '<td>' . $result['url']  . '</td>';
    $view .= '<td>' . $result['comment']  . '</td>';
    $view .= '</tr>';
    $view .= '</tbody>';
    $view .= '</table>';
  }
}

?>

<!DOCTYPE html>
<html lang="ja">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>読書履歴</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
  <style>
    div {
      padding: 10px;
      font-size: 16px;
    }
  </style>
</head>

<body>
  <header>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
      <a class="navbar-brand" href="#">読んだ本一覧</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav">
          <li class="nav-item">
            <a class="nav-link" href="index.php">読んだ本を登録しよう</a>
          </li>
        </ul>
      </div>
    </nav>
  </header>

  <!-- <table class="table" style="table-layout: fixed;">
    <thead class="thead-light">
      <tr>
        <th></th>
        <th>書籍名</th>
        <th>URL</th>
        <th>感想</th>
      </tr>
    </thead>
  </table> -->



  <!-- 
  <table class="table">
    <thead>
      <tr>
        <th>#</th>
        <th id='name'>書籍名</th>
        <th id='url'>URL</th>
        <th id='comment'>感想コメント</th>
      </tr>
    </thead>
  </table>

  <div>
    <ul class="table"> -->
  <!-- <ul class="list-group list-group-horizontal"> -->
  <ul class="table">
    <!-- ここにDBから取得したデータを表示しよう -->

    <table class="table" style="table-layout: fixed;">
      <thead class="thead-light">
        <tr>
          <th></th>
          <th>書籍名</th>
          <th>URL</th>
          <th>感想</th>
        </tr>
      </thead>
    </table>

    <?= $view ?>

  </ul>
  </div>

</body>

</html>