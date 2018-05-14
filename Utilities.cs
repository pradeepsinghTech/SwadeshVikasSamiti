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

        public bool submitUserData(UserRegistration registration, ref int CandidateId)
        {
            bool flag = false;
            String strConnString = System.Configuration.ConfigurationManager.ConnectionStrings["constr"].ToString();
            SqlConnection con = new SqlConnection(strConnString);
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "usp_InsertCandidateinfo";
            cmd.Parameters.Add("@Name", SqlDbType.VarChar).Value = registration.Name;
            cmd.Parameters.Add("@FatherName", SqlDbType.VarChar).Value = registration.FatherName;//@MothersName
            cmd.Parameters.Add("@MothersName", SqlDbType.VarChar).Value = registration.MothersName;
            cmd.Parameters.Add("@DOB", SqlDbType.DateTime).Value = registration.DOB;
            cmd.Parameters.Add("@UID_No", SqlDbType.VarChar).Value = registration.UID_No;
            cmd.Parameters.Add("@school_Name_HSS", SqlDbType.VarChar).Value = registration.school_Name_HSS;
            cmd.Parameters.Add("@Board_Name_HSS", SqlDbType.VarChar).Value = registration.Board_Name_HSS;
            cmd.Parameters.Add("@Roll_No_HSS", SqlDbType.Int).Value = registration.Roll_No_HSS;
            cmd.Parameters.Add("@YOP_HSS", SqlDbType.VarChar).Value = registration.YOP_HSS;
            cmd.Parameters.Add("@Total_Marks_HSS", SqlDbType.VarChar).Value = registration.Total_Marks_HSS;
            cmd.Parameters.Add("@Marks_HSS", SqlDbType.VarChar).Value = registration.Marks_Obtained_HSS;
            cmd.Parameters.Add("@Marks_Per_HSS", SqlDbType.VarChar).Value = registration.Marks_Perc_HSS;
            cmd.Parameters.Add("@school_Name_SSC", SqlDbType.VarChar).Value = registration.school_Name_SSC;
            cmd.Parameters.Add("@Board_Name_SSC", SqlDbType.VarChar).Value = registration.Board_Name_SSC;
            cmd.Parameters.Add("@Roll_No_SSC", SqlDbType.VarChar).Value = registration.Roll_No_SSC;
            cmd.Parameters.Add("@YOP_SSC", SqlDbType.VarChar).Value = registration.YOP_SSC;
            cmd.Parameters.Add("@Total_Marks_SSC", SqlDbType.VarChar).Value = registration.Total_Marks_SSC;
            cmd.Parameters.Add("@Marks_SSC", SqlDbType.VarChar).Value = registration.Marks_Obtained_SSC;
            cmd.Parameters.Add("@Marks_Per_SSC", SqlDbType.Int).Value = registration.Marks_Per_SSC; ;
            cmd.Parameters.Add("@Picture", SqlDbType.VarChar).Value = registration.PictureName;
            cmd.Parameters.Add("@Signature", SqlDbType.VarChar).Value = registration.Signature; ;
            cmd.Parameters.Add("@Candidate_Id", SqlDbType.Int).Direction = ParameterDirection.Output; ;

            cmd.Connection = con;
            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
                string id = cmd.Parameters["@Candidate_Id"].Value.ToString();
                CandidateId = Convert.ToInt32(id);

                InsertAddressDetails(registration, CandidateId);
                flag = true;

                //lblMessage.Text = "Record inserted successfully. ID = " + id;
            }
            catch (Exception ex)
            {
                ExceptionLogging.SendErrorToText(ex);
                DisconnectDB(con);
            }
            return flag;
        }

        private void InsertAddressDetails(UserRegistration registration, int candidateId)
        {
            SqlConnection db = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["constr"].ToString());
            SqlTransaction transaction;

            db.Open();
            transaction = db.BeginTransaction();
            try
            {
                SaveAddress(registration, candidateId, db, transaction);

                transaction.Commit();
            }
            catch (SqlException sqlError)
            {
                ExceptionLogging.SendErrorToText(sqlError);
                transaction.Rollback();
            }
            db.Close();
        }

        private static void SaveAddress(UserRegistration registration, int candidateId, SqlConnection db, SqlTransaction transaction)
        {
            for (int i = 0; i < 2; i++)
            {
                if (i == 0)
                {
                    new SqlCommand("INSERT INTO [dbo].[Candidate_AddressDetails](Candidate_Id, AddressType_Id, Candidate_AddressDetails_StateId, Candidate_AddressDetails_DistrictId, Candidate_AddressDetails_Address,Candidate_PinCode) VALUES ('" + candidateId + "',0,'" + registration.StatePermanent + "','" + registration.DistrictPermanent + "','" + registration.AddressPermanent + "','" + registration.PinCodePermanent + "');", db, transaction)
             .ExecuteNonQuery();
                }
                else
                {
                    new SqlCommand("INSERT INTO [dbo].[Candidate_AddressDetails](Candidate_Id, AddressType_Id, Candidate_AddressDetails_StateId, Candidate_AddressDetails_DistrictId, Candidate_AddressDetails_Address,Candidate_PinCode) VALUES ('" + candidateId + "',1,'" + registration.StateCorrespondence + "','" + registration.DistrictCorrespondence + "','" + registration.AddressCorrespondence + "','" + registration.PinCodeCorrespondence + "');", db, transaction)
             .ExecuteNonQuery();
                }


            }
        }
    }
}