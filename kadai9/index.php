<?php
session_start();
include("funcs.php");
// loginCheck();

//1.  DB接続します
$pdo = db_connect();

//２．データ取得SQL作成
$stmt = $pdo->prepare("SELECT * FROM unit_table");
$status = $stmt->execute();

//３．データ表示
$view="";
if ($status==false) {
    //execute（SQL実行時にエラーがある場合）
  $error = $stmt->errorInfo();
  exit("ErrorQuery:".$error[2]);

}else{
  //Selectデータの数だけ自動でループしてくれる
  //FETCH_ASSOC=http://php.net/manual/ja/pdostatement.fetch.php
  while( $result = $stmt->fetch(PDO::FETCH_ASSOC)){
    // $view .= "<p>".$result["indate"]."-".$result["id"]."-".$result["name"]."</p>";
    $view .= "<p>";
    $view .= '<a href="u_view.php?id='.$result["id"].'">';
    $view .= $result["indate"]."　：　".$result["title"];
    $view .= '</a>';
    $view .= '　';
    $view .= '<a href="delete.php?id='.$result["id"].'">';
    // $view .= '[削除]';
    $view .= '</a>';
    // $view .= "<p>";
    // $view .= '<a href='.$result["url"].'">';
    // $view .= $result["url"];
    // $view .= '</a>';
    // $view .= '</p>';
    // $view .= '<p>'.$result["comment"].'</p>';
    // $view .= '</p>';
    }

}
?>


<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>CodeZineニュース　おすすめ書籍を決める「ITエンジニア本大賞 2022」のベスト10</title>
<link rel="stylesheet" href="css/range.css">
<link href="css/bootstrap.min.css" rel="stylesheet">
<style>div{padding: 10px;font-size:16px;}</style>
</head>
<body id="main">
<!-- Head[Start] -->
<?php
  include('header.php');
?>
<!-- Head[End] -->

<!-- Main[Start] -->
<div>
    <div class="container jumbotron"><?= $view ?></div>
</div>
<!-- Main[End] -->

</body>
</html>
