<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Wolverine.aspx.cs" Inherits="Acorn_Wolverine" %>


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
                        <div class="text-left col-xs-6">Logan</div>
                    </div>
                    <div class="row">
                        <div class="text-right col-xs-4">Status:</div>
                        <div class="text-left col-xs-6" id="status">Veteran</div>
                    </div>
                    <div class="row">
                        <div class="text-right col-xs-4">Story:</div>
                        <div class="text-left col-xs-6" id="departmentname">
                            Born the second son of wealthy landowners John and Elizabeth Howlett in Alberta, Canada during the late 19th Century, James Howlett was a frail boy of poor health. James was largely neglected by his mother, who was institutionalized for a time following the death of her first son, John Jr., in 1897.
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <div class="panel-footer">
                        <input type="button" value="Help someone like Logan" id="empbutton" />
                        <div class="col-xs-10" id="lblstatus"></div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
