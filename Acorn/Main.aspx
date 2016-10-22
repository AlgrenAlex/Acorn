<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Main.aspx.cs" Inherits="Main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href='https://fonts.googleapis.com/css?family=PT+Sans' rel='stylesheet' type='text/css' />
    <link href="css/bootstrap.css" rel="stylesheet" />
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
                    url: "http://localhost/ProjectEdu/WebService.asmx/SetSession",
                    data: "{'parametro':" + actiondata + "}",
                    dataType: "json",
                    type: "POST",
                    contentType: "application/json; charset=utf-8",
                    success: function (msg) {
                        //       alert(msg.d.idUser);
                        if (msg.d.Identificador != 0) {
                            alert("Bienvendio usuario! Buen Dia!");
                            window.location.replace("http://localhost/ProjectEdu/lol.aspx");
                        }
                        else {
                            alert("Usuario y/o contraseña incorrecta");
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
                        Profile
    <span class="caret"></span>
                    </button>
                    <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
                        <li><a href="#">Help</a></li>
                        <li><a href="#">Explore</a></li>
                        <li><a href="#">Register</a></li>
                        <li role="separator" class="divider"></li>
                        <li><a href="#">Separated link</a></li>
                    </ul>
                </div>
            </div>
            <div class="col-lg-8">
                <h1 class="page-header">Success Stories</h1>
            </div>

            <div class="col-lg-3 col-md-3 col-xs-3 thumb">
                <a href="#" title="Anne Marie" data-toggle="popover" data-trigger="click" data-html="true" 
                    data-content="<a href='Rogue.aspx'>Her Story</a>">
                    <img class="img-responsive" src="media/anna.jpg" />
                </a>
            </div>
            <div class="col-lg-3 col-md-3 col-xs-3 thumb">
                <a href="#" title="Erik" data-toggle="popover" data-trigger="click" data-html="true" 
                    data-content="<a href='Rogue.aspx'>His Story</a>">
                    <img class="img-responsive" src="media/erik.jpg" />
                </a>
            </div>
            <div class="col-lg-3 col-md-3 col-xs-3 thumb">
                <a href="#" title="Logan" data-toggle="popover" data-trigger="click" data-html="true" 
                    data-content="<a href='Rogue.aspx'>His Story</a>">
                    <img class="img-responsive" src="media/logan.jpg" />
                </a>
            </div>
            <div class="col-lg-3 col-md-3 col-xs-3 thumb">
                <a href="#" title="Peter" data-toggle="popover" data-trigger="click" data-html="true" 
                    data-content="<a href='Rogue.aspx'>His Story</a>">
                    <img class="img-responsive" src="media/Peter.jpg" />
                </a>
            </div>
        </div>
    </div>
</body>
</html>
