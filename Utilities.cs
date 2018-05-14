using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace Site
{
    public class Utilities
    {
        int ngSuccess = 1;
        int ngFailed = -1;
        int iRetVal = 0;
        public Utilities()
        {
        }

        public DataTable getDistrictNames()
        {
            SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["constr"].ToString());
            DataTable dt = new DataTable();
            string jsonString = string.Empty;
            try
            {
                using (SqlCommand cmd = new SqlCommand("USP_GetDistrictNames", con))
                {

                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Connection = con;
                    con.Open();

                    using (SqlDataAdapter objAdapter = new SqlDataAdapter(cmd))
                    {
                        objAdapter.Fill(dt);
                    }
                    con.Close();
                }
            }
            catch (Exception ex)
            {
                DisconnectDB(con);
                ExceptionLogging.SendErrorToText(ex);
            }
            return dt;
        }
        public int DisconnectDB(SqlConnection con)
        {
            try
            {

                iRetVal = ngFailed;
                con.Close();
                iRetVal = ngSuccess;
            }
            catch (Exception ex)
            {
                ExceptionLogging.SendErrorToText(ex);
                iRetVal = ngFailed;
            }


            return iRetVal;
        }

        public bool submitUserData(UserRegistration registration)
        {
            String strConnString = ConfigurationManager.ConnectionStrings["conString"].ConnectionString;
            SqlConnection con = new SqlConnection(strConnString);
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "usp_InsertCandidateinfo";
            cmd.Parameters.Add("@Name", SqlDbType.VarChar).Value = registration.Name;
            cmd.Parameters.Add("@FatherName", SqlDbType.VarChar).Value = registration.FatherName;//@DOB
            cmd.Parameters.Add("@DOB", SqlDbType.DateTime).Value = registration.DOB;
            cmd.Parameters.Add("@UID_No", SqlDbType.DateTime).Value = registration.UID_No;
            cmd.Parameters.Add("@school_Name_HSS", SqlDbType.VarChar).Value = registration.school_Name_HSS;
            cmd.Parameters.Add("@Board_Name_HSS", SqlDbType.VarChar).Value = registration.Board_Name_HSS;
            cmd.Parameters.Add("@Roll_No_HSS", SqlDbType.Int).Value = registration.Roll_No_HSS;
            cmd.Parameters.Add("@YOP_HSS", SqlDbType.VarChar).Value = registration.YOP_HSS;
            cmd.Parameters.Add("@Marks_HSS", SqlDbType.VarChar).Value = registration.Marks_HSS;
            cmd.Parameters.Add("@Marks_Per_HSS", SqlDbType.VarChar).Value = registration.Marks_Per_HSS;
            cmd.Parameters.Add("@school_Name_SSC", SqlDbType.VarChar).Value = registration.school_Name_SSC;
            cmd.Parameters.Add("@Board_Name_SSC", SqlDbType.VarChar).Value = registration.Board_Name_SSC;
            cmd.Parameters.Add("@Roll_No_SSC", SqlDbType.VarChar).Value = registration.Roll_No_SSC;
            cmd.Parameters.Add("@YOP_SSC", SqlDbType.VarChar).Value = registration.YOP_SSC;
            cmd.Parameters.Add("@Marks_SSC", SqlDbType.VarChar).Value = registration.Marks_SSC;
            cmd.Parameters.Add("@Marks_Per_SSC", SqlDbType.Int).Value = registration.Marks_Per_SSC; ;
            cmd.Parameters.Add("@Candidate_Id", SqlDbType.Int).Direction = ParameterDirection.Output; ;

            cmd.Connection = con;
            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
                string id = cmd.Parameters["@Candidate_Id"].Value.ToString();

                //lblMessage.Text = "Record inserted successfully. ID = " + id;
            }
            catch (Exception ex)
            {
                ExceptionLogging.SendErrorToText(ex);
                DisconnectDB(con);
            }
            return true;
        }
    }
}