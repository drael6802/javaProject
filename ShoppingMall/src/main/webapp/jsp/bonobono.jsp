<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>보노보노</title>
<!--J-query  -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<!--css  -->
<link rel="stylesheet" href="css/bootstrap.css" >
<!--bootstrap  -->
<script type="text/javascript" src="js/bootstrap.js"></script>

<style type="text/css">
  @keyframes eyelf {
      0%{transform: rotate(25deg) scaleY(1);}
      2%{transform: rotate(25deg) scaleY(0);}
      10%{transform: rotate(25deg) scaleY(1);}
      100%{transform: rotate(25deg) scaleY(1);}
    }

    @keyframes eyert {
      0%{transform: rotate(-25deg) scaleY(1);}
      2%{transform: rotate(-25deg) scaleY(0);}
      10%{transform: rotate(-25deg) scaleY(1);}
      100%{transform: rotate(-25deg) scaleY(1);}
    }

    @keyframes riprt {
      0%{transform: rotate(-70deg); top:41%;}
      5%{transform: rotate(-73deg); top:40.5%;}
      15%{transform:rotate(-70deg); top:41%;}
      20%{transform:rotate(-73deg); top:40.5%;}
      25%{transform:rotate(-70deg); top:41%;}
    }

    @keyframes riplf {
      0%{transform: rotate(70deg); top:41%;}
      5%{transform: rotate(73deg); top:40.5%;}
      15%{transform:rotate(70deg); top:41%;}
      20%{transform:rotate(73deg); top:40.5%;}
      25%{transform:rotate(70deg); top:41%;}
    }

    html, body{
      margin: 0;
      padding: 0;
    }

    .wrap{
      position: relative;
      margin-top: 40px;
      transform: scale(0.5);
      
    }

    .bono{
      position: absolute;
      width: 1000px;
      height: 1000px;
      background: rgb(123, 196, 255);
      left: 51%;
      top:-30px;
      transform: translateX(-50%);
      border-radius: 50%;
      transition: 0.5s ease;
      transform-origin: center;
      overflow: hidden;

    }

    .bono:hover{
      transform: translateX(-50%) rotate(5deg);
    }

    .nose{
      position: absolute;
      width: 160px;
      height: 160px;
      border-radius: 50%;
      background: rgb(23, 23, 23);
      top: 45%;
      left: 50%;
      transform: translate(-50%, -50%);
      z-index: 100;
    }

    img{
      display:block;
      position: absolute;
      z-index: -100;
      left: 50%;
      transform: translateX(-50%);
    }

    .eye{
      position: absolute;
      width: 50px;
      height: 60px;
      top: 32%;
      border-radius: 50% / 60% 60% 50% 50%;
      background: rgb(23, 23, 23);
      transition: 0.1s;
      transform-origin: center;
    }

    .eye.lf{
      left: 80px;
      transform: rotate(25deg) scaleY(1);
      animation: eyelf 3s infinite;
      animation-delay: 2s;
    }

    .eye.rt{
      right: 80px;
      transform: rotate(-25deg) scaleY(1);
      animation: eyert 3s infinite;
      animation-delay: 2s;
    }


    .inner{
      position: absolute;
      width: 18px;
      height: 25px;
      top: 7px;
      background: rgb(255, 255, 255);
      border-radius: 50% / 60% 60% 50% 50%;
      transition: 0.2s;

    }

    .eye.lf .inner{
      left: 20px;
    }

    .eye.rt .inner{
      right: 20px;
    }

    .rip{
      position: absolute;
      width: 220px;
      height: 280px;
      border-radius: 50% / 60% 60% 40% 40%;
      background: rgb(255, 255, 255);
      z-index: -10;

      box-sizing: border-box;
    }

    .rip.rt{
      transform: rotate(-70deg);
      right: 25%;
      top: 41%;
      animation: riprt 5s infinite;
    }

    .rip.lf{
      transform: rotate(70deg);
      left: 25%;
      top: 41%;
      animation: riplf 5s infinite;
    }

    .mouse{
      position: absolute;
      width: 200px;
      height: 320px;
      border-radius: 50%/ 40% 40% 60% 60%;
      background: rgb(255, 149, 254);
      left: 50%;
      transform: translateX(-50%);
      top: 50%;
      z-index: -20;
      transform-origin: center;
      transition: 0.5s ease-out;

    }

    .line1, .line2, .line3{
      width: 200px;
      height: 6px;
      background: rgb(23, 23, 23);
      position: absolute;
      border-radius: 5px;
      transition: 0.5s ease;
    }

    .rip.lf .line1{
      transform-origin: right top;
      top: 170px;
      right: 150px;
      transform: rotate(-60deg);
      animation:
    }


    .rip.lf .line2{
      transform-origin: right top;
      top: 190px;
      right: 120px;
      transform: rotate(-70deg);
    }

    .rip.lf .line3{
      transform-origin: right top;
      top: 194px;
      right: 90px;
      transform: rotate(-96deg);
    }

    .rip.rt .line1{
      transform-origin: left top;
      top: 200px;
      left: 160px;
      position: absolute;
      transform: rotate(55deg);
    }

    .rip.rt .line2{
      transform-origin: left top;
      top: 210px;
      left: 120px;
      transform: rotate(73deg);
    }

    .rip.rt .line3{
      transform-origin: left top;
      top: 210px;
      left: 96px;
      transform: rotate(93deg);
    }
</style>

</head>
<body>

<div class="wrap" align="center" >
      <div class="bono">
        <div class="eye lf">
          <div class="inner"></div>
        </div>
        <div class="eye rt">
          <div class="inner"></div>
        </div>
        <div class="nose"></div>
        <div class="rip lf">
          <div class="line1"></div>
          <div class="line2"></div>
          <div class="line3"></div>
        </div>
        <div class="rip rt">
          <div class="line1"></div>
          <div class="line2"></div>
          <div class="line3"></div>
        </div>
        <div class="mouse"></div>
      </div>
    </div>

</body>
</html>