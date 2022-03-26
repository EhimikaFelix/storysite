<header>
    <a href="<?php echo BASE_URL . '/index.php' ?>" class="logo">
      <h1 class="logo-text"><span>Travel</span>Stories</h1>
    </a>
    <i class="fa fa-bars menu-toggle"></i>
    <ul class="nav">
      <li><a href="<?php echo BASE_URL . '/index.php' ?>">HOME</a></li>
      <li><a href="<?php echo BASE_URL . '/gallery.php' ?>">GALLERY</a></li>

      <?php if (isset($_SESSION['id'])): ?>
        <li>
          <a href="#">
            <i class="fa fa-user"></i>
            <?php echo $_SESSION['username']; ?>
            <i class="fa fa-chevron-down" style="font-size: .8em;"></i>
          </a>
          <ul>
           
              <li><a href="<?php echo BASE_URL . '/admin/dashboard.php' ?>">Dashboard</a></li>
            <li><a href="<?php echo BASE_URL . '/logout.php' ?>" class="logout">Logout</a></li>
          </ul>
        </li>
      <?php else: ?>
        <li><a href="<?php echo BASE_URL . '/register.php' ?>">SIGN UP</a></li>
        <li><a href="<?php echo BASE_URL . '/login.php' ?>">LOGIN</a></li>
      <?php endif; ?>
    </ul>
</header>