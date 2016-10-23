<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Spiderman.aspx.cs" Inherits="Acorn_Spiderman" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal">X</button>
            <h1>A Story:</h1>
        </div>
        <div class="modal-body">
            <div class="panel panel-default">
                <div class="panel-heading text-center">
                    PiN Information
                </div>
                <div class="panel-body">
                    <div class="row">
                        <div class="text-right col-xs-4">Name:</div>
                        <div class="text-left col-xs-6">Peter</div>
                    </div>
                    <div class="row">
                        <div class="text-right col-xs-4">Status:</div>
                        <div class="text-left col-xs-6" id="status">Employed</div>
                    </div>
                    <div class="row">
                        <div class="text-right col-xs-4">Story:</div>
                        <div class="text-left col-xs-6" id="departmentname">
                            Orphaned as a baby when his parents were killed overseas in a plane crash as U.S. government spies, only child Peter Parker was raised by his elderly Uncle Ben and Aunt May. Academically gifted, Peter displayed an uncanny affinity for science that was nothing short of genius. Socially, however, he was painfully shy and the target of much cruelty by his peers at Midtown High School.
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <div class="panel-footer">
                        <input type="button" value="Help someone like Peter" id="empbutton" />
                        <div class="col-xs-10" id="lblstatus"></div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
