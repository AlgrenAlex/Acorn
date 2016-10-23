<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RUInterface.aspx.cs" Inherits="RUInterface" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="css/Stylesheet.css" rel="stylesheet" type="text/css" />
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
        <span class="OpportunityPreset" style="font-size: 70px; left: -1px;"></span>
    </div>
    <div class="PresentWall">
        <div class="container">
            <h1>Recommended
            </h1>
            <br />
            <div class="OpportunityShowing">
                <a href="#" data-toggle='modal' data-target='#myModal'>Veteran Job Fair, In XY Street, St Louis!</a>
            </div>
        </div>
            <h1>Saint Patrick Center Opportunities
            </h1>
    </div>
    <%-- </div>--%>
    <div>
        <span class="OpportunityPreset2" style="font-size: 70px; left: 16px;"></span>
    </div>
    <div class="PresentWall">
        <div class="container">
            <br />
            <div class="OpportunityShowing2">
                <h2>Get your G.E.D degree TODAY!!</h2>
            </div>
        </div>
    </div>
    <div class="PresentWall">
        <div class="container">
            <br />
            <div class="OpportunityShowing3">
                <h2>Help us make McMurphy a better place!</h2>
            </div>
        </div>
    </div>

    <div class="modal fade" id="myModal" role="dialog">
        <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 style="color: red;"><span class="glyphicon-registration-mark" style="font-size: 10px">&nbsp;</span> Job Opportunity Registration Form</h4>
                </div>
                <div class="modal-body">
                    <form role="form">
                        <div class="form-group">
                            <label for="txtName"><span class="glyphicon-registration-mark">&nbsp;</span> Name</label>
                            <input type="text" class="form-control" id="txtName" placeholder="Please, enter your name " />
                        </div>
                        <div class="form-group">
                            <label for="psw"><span class="glyphicon glyphicon-eye-open">&nbsp; </span>Password</label>
                            <input type="text" class="form-control" id="txtPass" placeholder="Please, enter your Password" />
                        </div>
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" id="chbJob"/>I accept the terms and conditions of this job</label>
                        </div>
                        <script>
                            var sbmt = document.getElementById('#btnAcceder');
                            if (chbJob.value != true)
                                sbmt.isDisabled = true;
                        </script>
                        <button type="submit" id="btnAcceder"><span class="btn btn-default btn-success btn-block glyphicon glyphicon-alert"></span>Access</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
<%--  --%>