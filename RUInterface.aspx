<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RUInterface.aspx.cs" Inherits="RUInterface" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
        <link href="css/bootstrap.css" rel="stylesheet" />
    <link href="css/Stylesheet.css" rel="stylesheet" />
    <script src="Scripts/jquery-2.2.3.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
</head>
<body>
<div class="navbar navbar-default">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
          </button>
        </div>
        <div class="navbar-collapse collapse">
          <ul class="nav navbar-nav navbar-left">
            <li class="active">
              <a href="#"><span class="Hola"></span></a>
            </li>
            <li>
              <a href="#about"><span class="Hola2"></span></a>
            </li>
          </ul>
            <ul class="nav navbar-nav navbar-right">
                <li>
              <a href="#contact">Ongoing Activities</a>
            </li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">Filters</a>
              <ul class="dropdown-menu">
                <li>
                  <a href="#">Sort By Date</a>
                </li>
                <li>
                  <a href="#">Sort by Capacity</a>
                </li>
                <li>
                  <a href="#">Sort by Name</a>
                </li>
                <%--<li class="dropdown-header">
                  Nav header
                </li>
                <li>
                  <a href="#">Separated link</a>
                </li>
                <li>
                  <a href="#">One more separated link</a>
                </li>--%>
              </ul>
            </li>
            </ul>
        </div>
        <!--/.navbar-collapse -->
      </div>
    </div>
    <!-- Main jumbotron for a primary marketing message or call to action -->
<%--    <div class="jumbotron">--%>
      <div>
        <span class="OpportunityPreset" style="font-size:70px"></span>
    </div>
    <div class="PresentWall">
      <div class="container">
        <h1>
          Recommended
        </h1>
        <br />
          <div class="OpportunityShowing" >          
               <h2>Veteran Job Fair, In XY Street, St Louis!</h2>
          </div>
      </div>
        </div>
   <%-- </div>--%>
    <div class="container">
      <!-- Example row of columns -->
      <div class="row">
        <div class="col-md-2">
          <img src="#" width="100%" height="100px" />
          <p>
            Antonin Januska
            <br />
            5th of July 2013
            <br />
            blah blah blah
          </p>
        </div>
        <div class="col-md-7">
          <h1 class="post-title">
            Comforts of Life
          </h1>
          <p>...Content goes here...</p>
        </div>
        <div class="col-md-3">
          <div class="widget">
            <h3>
              Search
            </h3>
            <form class="row">
              <div class="col-md-8">
                <input type="text" class="form-control">
              </div>
              <div class="col-md-4">
              <input type="submit" class="btn btn-default form-control">
            </div>
            </form>
          </div>
          <div class="widget">
            <h3>
              Latest Posts
            </h3>
            <ul class="list-group">
              <li class="list-group-item"><a href="#">Article 1</a></li>
              <li class="list-group-item"><a href="#">Article 2</a></li>
              <li class="list-group-item"><a href="#">Article 3</a></li>
              <li class="list-group-item"><a href="#">Article 4</a></li>
            </ul>
          </div>
        </div>
      </div>
      <hr />
      <p>
        &#169; Company 2013
      </p>
    </div>
</body>
</html>
