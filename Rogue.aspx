﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Rogue.aspx.cs" Inherits="Rogue" %>

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
                        <div class="text-left col-xs-6">Anne Marie</div>
                    </div>
                    <div class="row">
                        <div class="text-right col-xs-4">Status:</div>
                        <div class="text-left col-xs-6" id="status">Recovered</div>
                    </div>
                    <div class="row">
                        <div class="text-right col-xs-4">Story:</div>
                        <div class="text-left col-xs-6" id="departmentname">Raised by her Aunt Carrie after tragedy befell her parents, young Anna Marie ran away from home and was taken in by Mystique and Destiny (Irene Adler), whom Rogue came to regard as her surrogate parents. Rogue's mutant power first manifested in her early teens when she kissed Cody Robbins.</div>
                    </div>
                </div>
                <div class="modal-footer">
                    <div class="panel-footer">
                        <input type="button" value="Help someone like Anne" id="empbutton" />
                        <div class="col-xs-10" id="lblstatus"></div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
