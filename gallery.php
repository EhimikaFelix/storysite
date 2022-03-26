<?php include("path.php"); ?>
<?php include(ROOT_PATH . "/app/controllers/users.php");

?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">

  <!-- Font Awesome -->
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css"
    integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Candal|Lora" rel="stylesheet">

  <!-- Custom Styling -->
  <link rel="stylesheet" href="assets/css/gallery.css">

  <title>Gallery</title>
</head>

<body>
  
<?php include(ROOT_PATH . "/app/includes/header.php"); ?>
<?php
include (ROOT_PATH . "/app/database/connect.php");
// Connect to MySQL
//Your MySQL user account.
$user = 'root';
 
//Your MySQL password.
$password = '';
 
//The server / hostname of your MySQL installation.
$server = 'localhost';
 
//The name of your MySQL database.
$database = 'blog';
 
//Connect using PDO.
$pdo = new PDO("mysql:host=$server;dbname=$database", $user, $password);
// MySQL query that selects all the images
$stmt = $pdo->query('SELECT * FROM images ORDER BY uploaded_date DESC');
$images = $stmt->fetchAll(PDO::FETCH_ASSOC);
?>

<div class="content home">
	<h2>Gallery</h2>
	<p>Welcome to the gallery page! You can view the list of uploaded images below.</p>
	<a href="upload.php" class="upload-image">Upload Image</a>
	<div class="images">
		<?php foreach ($images as $image): ?>
		<?php if (file_exists($image['filepath'])): ?>
		<a href="#">
			<img src="<?=$image['filepath']?>" alt="<?=$image['description']?>" data-id="<?=$image['id']?>" data-title="<?=$image['title']?>" width="300" height="200">
			<span><?=$image['description']?></span>
		</a>
		<?php endif; ?>
		<?php endforeach; ?>
	</div>
</div>
<div class="image-popup"></div>

<script>
// Container we'll use to output the image
let image_popup = document.querySelector('.image-popup');
// Iterate the images and apply the onclick event to each individual image
document.querySelectorAll('.images a').forEach(img_link => {
	img_link.onclick = e => {
		e.preventDefault();
		let img_meta = img_link.querySelector('img');
		let img = new Image();
		img.onload = () => {
			// Create the pop out image
			image_popup.innerHTML = `
				<div class="con">
					<h3>${img_meta.dataset.title}</h3>
					<p>${img_meta.alt}</p>
					<img src="${img.src}" width="${img.width}" height="${img.height}">
				</div>
			`;
			image_popup.style.display = 'flex';
		};
		img.src = img_meta.src;
	};
});
// Hide the image popup container, but only if the user clicks outside the image
image_popup.onclick = e => {
	if (e.target.className == 'image-popup') {
		image_popup.style.display = "none";
	}
};
</script>
