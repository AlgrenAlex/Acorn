<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Magneto.aspx.cs" Inherits="Magneto" %>

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
                        <div class="text-left col-xs-6">Erik</div>
                    </div>
                    <div class="row">
                        <div class="text-right col-xs-4">Status:</div>
                        <div class="text-left col-xs-6" id="status">Veteran, Recovered</div>
                    </div>
                    <div class="row">
                        <div class="text-right col-xs-4">Story:</div>
                        <div class="text-left col-xs-6" id="departmentname">After witnessing the brutal murder of his family by the Nazis, Max Eisenhardt, was sent to the Auschwitz death camp where he served in the Sonderkommando, the squad of Jewish men forced to helped their Nazi masters operate the gas chambers, ovens, and fire pits of the camp. While in Auschwitz, Max met a gypsy girl named Magda. Max and Magda survived the Holocaust, and later were married. They had a daughter, Anya.</div>
                    </div>
                </div>
                <div class="modal-footer">
                    <div class="panel-footer">
                        <input type="button" value="Help someone like Erik" id="empbutton" />
                        <div class="col-xs-10" id="lblstatus"></div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
