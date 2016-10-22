<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Main.aspx.cs" Inherits="Main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href='https://fonts.googleapis.com/css?family=PT+Sans' rel='stylesheet' type='text/css'/>
    <script src="Scripts/jquery-3.1.1.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $('#btnAcceder').click(function () {
                var nick = $('#txtUser').val();
                var pwd = $('#txtPass').val();
                //alert("hey");
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
            //alert(actiondata);
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
                            alert("Welcome User! Have a good day!");
                            window.location.replace("http://localhost/AcornS/RUInterface.aspx");
                        }
                        else {
                            alert("Incorrect or Invalid User a/o Password ");
                        }
                    },
                    error: function (result) { alert("ERROR " + result.status + '' + result.statusText); }

                }
                );
        }
    </script>
</head>
<body>
     <section>
            <span></span>
            <h1>Please enter your account</h1>
            <form>
                <input placeholder='User' type='text' id="txtUser"/>
                <input placeholder='Password' type='password' id="txtPass"/>

            </form>
            <button id="btnAcceder">Enter</button>
            <h2>
                <a href='#' >Recover your Account</a>
                    </h2>

        </section>
    
</body>
</html>
