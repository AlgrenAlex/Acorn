using RnConection.DataStorageLayer;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de RnLogin
/// </summary>
public class RnLogin
{
	public RnLogin()
	{
		//
		// TODO: Agregar aquí la lógica del constructor
		//
	}
    public long Login(Username users)
    {
        DSL _connection = new DSL(); //Here goes connection
        try
        {
            //_connection.Open(ConfigurationManager.ConnectionStrings["dbLogin"].ToString(), RnConection.DataAbstractionLayer.Provedor.SQLServer);
            //_connection.InitialSQLStatement("Autenticarse", System.Data.CommandType.StoredProcedure);
            //_connection.SetParameterProcedure("@nick", System.Data.ParameterDirection.Input, RnConection.DataAbstractionLayer.eTypes.Cadena, users.user);
            //_connection.SetParameterProcedure("@pwd", System.Data.ParameterDirection.Input, RnConection.DataAbstractionLayer.eTypes.Cadena, users.password);
            //long IdCredencial = long.Parse(_connection.ReturnObject().ToString()); Normal Query Procedure
            long IdCredential=0;
            if ((users.user == "Timothy_Hensley") || (users.user == "DanielJohnH.")) 
            {
                IdCredential = 1;
            }
            else if (users.user == "MelanieGJones") 
            {
                IdCredential = 2;
            }
            else if (users.user == "XYZCenter") 
            {
                IdCredential = 3;
            }
            return IdCredential;
        }
        catch (Exception ex)
        {
            throw new Exception(ex.Message, ex);
        }
        finally
        {
            //_connection.Close();
        }
    }
    public int CompAuth(long obtainedCred)
    {
        DSL _connection = new DSL();
        try
        {
            _connection.Open(ConfigurationManager.ConnectionStrings["dbLogin"].ToString(), RnConection.DataAbstractionLayer.Provedor.SQLServer);
            _connection.InitialSQLStatement("ComprobarNivel", System.Data.CommandType.StoredProcedure);
            _connection.SetParameterProcedure("@id", System.Data.ParameterDirection.Input, RnConection.DataAbstractionLayer.eTypes.Entero, obtainedCred);
            int AuthLevel=0;
            //int NivelAuth = int.Parse(_connection.ReturnObject().ToString());
            return AuthLevel;
        }
        catch (Exception ex)
        {
            throw new Exception(ex.Message, ex);
        }
        finally
        {
            _connection.Close();
        }
    }
}