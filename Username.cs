using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.IO;
using System.Web.UI;

/// <summary>
/// Descripción breve de WebService
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
/// <summary>
/// Descripción breve de Username
/// </summary>
public class Username
{

    UserControl userScript;

    public struct user
    {
        public string name_First, name_Last;
        public bool employment, abuseCheck, medicalCondition;
        public int age, family_Size, dateEntered;

    }

    protected global::System.Web.UI.WebControls.TextBox UserName;
    protected global::System.Web.UI.WebControls.TextBox Password;

    [WebMethod]
    public void NameResigter(object sender, EventArgs e)
    {
        user resG;
        string name_First = userScript.Request.Form["usercontrol1"];
        resG.name_First = name_First;
        Console.Write(resG.name_First);
    }
		//
		// TODO: Agregar aquí la lógica del constructor
		//
	
    public long idUser;


    //public string user;


    public string password;
}