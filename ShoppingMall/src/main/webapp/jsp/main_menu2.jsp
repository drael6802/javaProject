<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!--J-query  -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<!--css  -->
<link rel="stylesheet" href="css/bootstrap.css" >
<!--bootstrap  -->
<script type="text/javascript" src="js/bootstrap.js"></script>
<!--  -->
<script type="text/javascript" src="js/bootstrap.js"></script>
<!--  -->
<style type="text/css">
body,
h1,
ul {
  margin: 0;
}

li {
  list-style-type: none;
}

h1 {
  font-size: 1.5rem;
}

a {
  text-decoration: none;
  text-transform: uppercase;
  color: #fff;
}

.toggle-menu {
  box-shadow: none;
  background: transparent;
  border: 0;
}

body {
  background: #f1f1f1;
  color: #272626;
  font: normal 20px/1.6 "Noto Sans", sans-serif;
}


/* HEADER STYLES
–––––––––––––––––––––––––––––––––––––––––––––––––– */

header {
  position: fixed;
  top: 0;
  width: 100%;
  padding: 20px;
  box-sizing: border-box;
  background: #DD3543;
}

nav {
  display: flex;
  align-items: flex-end;
  justify-content: space-between;
  transition: align-items .2s;
}

.logo {
  font-size: 2rem;
  display: inline-block;
  padding: 20px 30px;
  background: #F35B66;
  color: #fff;
  margin: 50px 0 0 50px;
  transition: all .2s;
}

ul {
  display: flex;
  margin: 50px 50px 0 0;
  padding: 0;
  transition: margin .2s;
}

li:not(:last-child) {
  margin-right: 20px;
}

li a {
  display: block;
  padding: 10px 20px;
}

.toggle-menu {
  display: none;
  font-size: 2rem;
  color: #fff;
  margin: 10px 10px 0 0;
  transition: margin .2s;
}


/* MAIN STYLES
–––––––––––––––––––––––––––––––––––––––––––––––––– */

main {
  display: block;
  padding: 0 20px;
}


/* STYLES FOR THE "scroll" CLASS
–––––––––––––––––––––––––––––––––––––––––––––––––– */

.scroll {
  box-shadow: 0 7px 0 0 rgba(0, 0, 0, .1);
}

.scroll .logo {
  padding: 10px 20px;
  font-size: 1.5rem;
}

.scroll nav {
  align-items: center;
}

.scroll .logo,
.scroll ul,
.scroll .toggle-menu {
  margin: 0;
}


/* MQ STYLES
–––––––––––––––––––––––––––––––––––––––––––––––––– */

@media screen and (max-width: 1060px) {
  header {
    padding: 10px;
  }
  nav {
    align-items: center;
  }
  ul {
    display: none;
  }
  .logo {
    font-size: 1.8rem;
    margin: 10px 0 0 10px;
  }
  .toggle-menu {
    display: block;
  }
}


/* STYLES FOR THE COUNTER
–––––––––––––––––––––––––––––––––––––––––––––––––– */

.counter {
  visibility: hidden;
  position: fixed;
  top: 50%;
  transform: translateY(-50%);
  right: 1px;
  padding: 5px;
  color: #fff;
  background: #DD3543;
}
</style>
</head>
<body>

<header>
  <nav>
    <h1>
      <a href="" class="logo">Logo</a>
    </h1>
    <ul>
      <li><a href="">About</a></li>
      <li><a href="">Services </a></li>
      <li><a href="">Portfolio</a></li>
      <li><a href="">Contact</a></li>
    </ul>
    <button class="toggle-menu" aria-label="Responsive Navigation Menu">☰</button>
  </nav>
</header>
<div class="counter"></div>

</body>
</html>