<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Main.aspx.cs" Inherits="Main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href='https://fonts.googleapis.com/css?family=PT+Sans' rel='stylesheet' type='text/css' />
    <link href="css/bootstrap.css" rel="stylesheet" />
    <link href="css/Stylesheet.css" rel="stylesheet" />
    <script src="Scripts/jquery-2.2.3.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $('#btnAcceder').click(function () {
                var nick = $('#txtUser').val();
                var pwd = $('#txtPass').val();
                // alert("hey");
                MiFuncionObj(nick, pwd);
            });
        });
        function MiFuncionObj(nick, pwd) {
            var obJason = {
                "user": nick,
                "password": pwd
            }
            var actiondata = JSON.stringify(obJason);
            //var actiondata = obJason;
            //alert("listen");
            $.ajax(
                {
                    url: "http://localhost/AcornS/WebService.asmx/SetSession",
                    data: "{'parametro':" + actiondata + "}",
                    dataType: "json",
                    type: "POST",
                    contentType: "application/json; charset=utf-8",
                    success: function (msg) {
                              //alert(msg.d.idUser);
                        if (msg.d.idUser != 0) {
                            //alert("Welcome! " + msg.d.user + " Good day!");
                            window.location.replace("http://localhost/AcornS/RUInterface.aspx");
                        }
                        else {
                            alert("Incorrect Login Info (User or Pass)");
                        }
                    },
                    error: function (result) { alert("ERROR" + result.status + '' + result.statusText); }

                }
                );
        }
        $(document).ready(function () {
            $('[data-toggle="popover"]').popover();
        });
    </script>
</head>
<body>
    <div class="container">
        <div class="row">

            <div class="col-lg-4">
                <div class="dropdown">
                    <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                        Sign in/up
    <span class="caret"></span>
                    </button>
                    <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
                        <li><a href="#">Help</a></li>
                        <li><a href="#">Explore</a></li>
                        <li data-toggle="modal" data-target="#myModal"><a href="#">Register </a></li>
                        <li role="separator" class="divider"></li>
                        <li><a href="#">Separated link</a></li>
                    </ul>
                </div>
            </div>
            <div class="col-lg-8">
                <h1 class="page-header">Success Stories</h1>
            </div>
            <div style="padding-left:50px">

            </div>
            <div class="col-lg-3 col-md-3 col-xs-3 thumb">
                <a href="#" title="Anne Marie" data-toggle="popover" data-trigger="focus" data-html="true" 
                    data-content="<a href='Rogue.aspx'>Her Story</a>">
                    <img class="img-responsive" src="media/anna.jpg" />
                </a>
            </div>
            <div class="col-lg-3 col-md-3 col-xs-3 thumb">
                <a href="#" title="Erik" data-toggle="popover" data-trigger="focus" data-html="true" 
                    data-content="<a href='Rogue.aspx'>His Story</a>">
                    <img class="img-responsive" src="media/erik.jpg" />
                </a>
            </div>
            <div class="col-lg-3 col-md-3 col-xs-3 thumb">
                <a href="#" title="Logan" data-toggle="popover" data-trigger="focus" data-html="true" 
                    data-content="<a href='Rogue.aspx'>His Story</a>">
                    <img class="img-responsive" src="media/logan.jpg" />
                </a>
            </div>
            <div>
                <br />
            </div>
            <div class="row">

            </div>
            <div class="col-lg-3 col-md-3 col-xs-3 thumb">
                <a href="#" title="Peter" data-toggle="popover" data-trigger="focus" data-html="true" 
                    data-content="<a href='Rogue.aspx'>His Story</a>">
                    <img class="img-responsive" src="media/Peter.jpg" />
                </a>
            </div>
        </div>
    </div>
                     <div class="modal fade" id="myModal" role="dialog">
                        <div class="modal-dialog">
                            <!-- Modal content-->
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                    <h4 style="color:red;"><span class="glyphicons glyphicons-user" style="font-size:10px">&nbsp;</span> Access</h4>
                                </div>
                                <div class="modal-body">
                                    <form role="form">
                                        <div class="form-group">
                                            <label for="usrname"><span class="halflings halflings-user">&nbsp;</span> User</label>
                                            <input type="text" class="form-control" id="txtUser" placeholder="Please, enter your Username "/>
                                        </div>
                                        <div class="form-group">
                                            <label for="psw"><span class="glyphicon glyphicon-eye-open"> &nbsp; </span> Password</label>
                                            <input type="text" class="form-control" id="txtPass" placeholder="Please, enter your password"/>
                                        </div>
                                        <div class="checkbox">
                                            <label><input type="checkbox" value="checked"/>Remember me?</label>
                                        </div>
                                        <button type="submit" class="btn btn-default btn-success btn-block" id ="btnAcceder" ><span class="glyphicon glyphicon-off"></span> Access</button>
                                    </form>
                                </div>
                                <div class="modal-footer">
                                    <button type="submit" class="btn btn-default btn-default pull-left" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> Cancel</button>
                                    <button type="submit" class="btn btn-default btn-default pull right" data-dismiss="modal"><span class="glyphicon-floppy-save"></span> Log In</button>
                                </div>

                            </div>
                        </div>
                    </div> 

    <!--This ends the modal -->
   <div class="container">
    <h1>Opportunities are waiting for you!</h1>


    <!-- thumb navigation carousel -->
    <%--<div class="col-md-12 hidden-sm hidden-xs" id="slider-thumbs">

        <!-- thumb navigation carousel items -->
        <ul class="list-inline">
            <li>
                <a id="carousel-selector-0" class="selected">
                    <img src="http://schedule.wttw.com/ulphoto/wttw_1340044257.jpg" class="img-responsive">
                </a>
            </li>
            <li>
                <a id="carousel-selector-1">
                    <img src="http://placehold.it/80x60&amp;text=two" class="img-responsive">
                </a>
            </li>
            <li>
                <a id="carousel-selector-2">
                    <img src="http://placehold.it/80x60&amp;text=three" class="img-responsive">
                </a>
            </li>
            <li>
                <a id="carousel-selector-3">
                    <img src="http://placehold.it/80x60&amp;text=four" class="img-responsive">
                </a>
            </li>
            <li>
                <a id="carousel-selector-4">
                    <img src="http://placehold.it/80x60&amp;text=five" class="img-responsive">
                </a>
            </li>
            <li>
                <a id="carousel-selector-5">
                    <img src="http://placehold.it/80x60&amp;text=six" class="img-responsive">
                </a>
            </li>
            <li>
                <a id="carousel-selector-6">
                    <img src="http://placehold.it/80x60&amp;text=seven" class="img-responsive">
                </a>
            </li>
            <li>
                <a id="carousel-selector-7">
                    <img src="http://placehold.it/80x60&amp;text=eight" class="img-responsive">
                </a>
            </li>
        </ul>

    </div>--%>


    <!-- main slider carousel -->
    <div class="row">
        <div class="col-md-12" id="slider">

            <div class="col-md-12" id="carousel-bounding-box">
                <div id="myCarousel" class="carousel slide">
                    <!-- main slider carousel items -->
                    <div class="carousel-inner">
                        <div class="active item" data-slide-number="0">
                            <label style="font-size:large" >&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;Carpenter Courses Available</label>
                            <img src="http://www.handdyman.com/img/carpenter.jpg" style=" class="img-responsive">
                        </div>
                        <div class="item" data-slide-number="1">
                            <label style="font-size:large" >&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;Casserole Program at St. Patrick Center</label>
                            <img src="http://i0.wp.com/www.neverskipdessertblog.com/wp-content/uploads/2013/08/dsc_0339.jpg" class="img-responsive">
                        </div>
                        <div class="item" data-slide-number="2">
                            <label style="font-size:large" >&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;Be a Clerk/Cashier Today at lalalaStore</label>   
                            <img src="http://az616578.vo.msecnd.net/files/2016/01/25/635892768340795711-1712987430_cashier.jpg" class="img-responsive">
                        </div>
                        <div class="item" data-slide-number="3">
                             <label style="font-size:large" >&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;DishWasher Positions Available at AB Cafe!</label>   
                            <img src="https://www.bcfr.org/wp-content/uploads/2013/01/049.jpg" class="img-responsive">
                        </div>
                       <div class="item" data-slide-number="4">
                            <label style="font-size:large" >&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;Sheltered Awareness Week at St.Louis</label> 
                            <img src="http://bedfordviewedenvalenews.co.za/wp-content/uploads/sites/22/2016/08/34BeCommBedCS1_68214.jpg" class="img-responsive">
                        </div>
                         
                        <div class="item" data-slide-number="5">
                             <label style="font-size:large" >&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;Food Drive at XY Avenue!</label> 
                            <img src="https://www.thestar.com/content/dam/thestar/news/world/2015/09/16/people-crave-sexist-food-packaging-research-shows/food-gender-obama.jpg.size.custom.crop.1086x711.jpg" class="img-responsive">
                        </div>
                        <%--
                        <div class="item" data-slide-number="6">
                            <img src="http://placehold.it/1200x480&amp;text=seven" class="img-responsive">
                        </div>
                        <div class="item" data-slide-number="7">
                            <img src="http://placehold.it/1200x480&amp;text=eight" class="img-responsive">
                        </div>--%>
                    </div>
                    <a class="carousel-control left" href="#myCarousel" data-slide="prev"><i class="glyphicon glyphicon-arrow-left"></i></a>
                    <a class="carousel-control right" href="#myCarousel" data-slide="next"><i class="glyphicon glyphicon-arrow-right"></i></a>
                </div>
            </div>

        </div>
    </div>
    <!--/main slider carousel-->

</div>
    <!--Thiss should be the end of the Carrousel -->

</body>
</html>
