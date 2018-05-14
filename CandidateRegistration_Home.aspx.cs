using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Site
{
    public partial class CandidateRegistration_Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                FillDistrict();
            }
        }
        private void FillDistrict()
        {
            DataTable dt = new Utilities().getDistrictNames();
            ddlDistrict.DataSource = dt;
            ddlDIsrictCorr.DataSource = dt;
            DataRow dr = dt.NewRow();
            dr["District_Name"] = "----Select----";
            dr["District_Id"] = "0";
            dt.Rows.InsertAt(dr, 0);
            ddlDIsrictCorr.DataTextField = "District_Name";
            ddlDIsrictCorr.DataValueField = "District_Id";
            ddlDistrict.DataTextField = "District_Name";
            ddlDistrict.DataValueField = "District_Id";
            ddlDistrict.DataBind();
            ddlDIsrictCorr.DataBind();
        }
        [WebMethod]
        public static string submitUserData(UserRegistration registration)
        {
            string flag = "";
            try
            {
                if (new Utilities().submitUserData(registration))
                {
                    flag = "success";
                }
                else
                {
                    flag = "error";
                }
            }
            catch (Exception e)
            {
                ExceptionLogging.SendErrorToText(e);
                flag = "error";
            }
            return flag;
        }

        protected void btnUpload1_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                string fileExtension = System.IO.Path.GetExtension(FileUpload1.FileName);
                if (fileExtension.ToLower() != ".jpg" && fileExtension.ToLower() != ".jpeg")
                {
                    Response.Write("<script type='text/javascript'>alert('Please Select a .jpg or .jpeg File !');</script>");

                }
                else
                {
                    string photoFileName = System.DateTime.Now.ToString("ddMMyyhhmmss") + FileUpload1.FileName;
                    FileUpload1.SaveAs(Server.MapPath("~/Uploads/" + System.DateTime.Now.ToString("ddMMyyhhmmss") + FileUpload1.FileName));
                    Session["photoFileName"] = photoFileName;
                    Response.Write("<script type='text/javascript'>alert('Photo Uploaded Successfully!');</script>");

                }
            }
            else
            {
                Response.Write("<script type='text/javascript'>alert('Please Select a File to Upload!');</script>");
            }
        }

        protected void btnUpload2_Click(object sender, EventArgs e)
        {
            if (FileUpload2.HasFile)
            {
                string fileExtension = System.IO.Path.GetExtension(FileUpload2.FileName);
                if (fileExtension.ToLower() != ".jpg" && fileExtension.ToLower() != ".jpeg")
                {
                    Response.Write("<script type='text/javascript'>alert('Please Select a .jpg or .jpeg File !');</script>");

                }
                else
                {
                    string signFileName = System.DateTime.Now.ToString("ddMMyyhhmmss") + FileUpload2.FileName;
                    FileUpload1.SaveAs(Server.MapPath("~/Uploads/" + signFileName));
                    Session["SignFileName"] = FileUpload2.FileName;
                    Response.Write("<script type='text/javascript'>alert('Signature Uploaded Successfully!');</script>");
                }
            }
            else
            {
                Response.Write("<script type='text/javascript'>alert('Please Select a File to Upload!');</script>");
            }
        }

        protected void btnSubmitData_Click(object sender, EventArgs e)
        {
            #region VALidation
            if (txtApplicantName.Value.Trim() == string.Empty)
            {
                Response.Write("<script type='text/javascript'>alert('Please enter your name!');</script>");
                txtApplicantName.Focus();
                return;
            }
            else if (txtFathersName.Value.Trim() == string.Empty)
            {
                Response.Write("<script type='text/javascript'>alert('Please enter father name!');</script>");
                txtApplicantName.Focus();
                return;


            }
            else if (txtMothersName.Value.Trim() == string.Empty)
            {
                Response.Write("<script type='text/javascript'>alert('Please enter mothers name!');</script>");
                txtMothersName.Focus();
                return;

            }
            else if (txtDOB.Value == string.Empty)
            {
                Response.Write("<script type='text/javascript'>alert('Please select Date of birth!');</script>");
                txtDOB.Focus();
                return;

            }
            else if (txtUIDNumber.Value.Trim() == string.Empty)
            {
                Response.Write("<script type='text/javascript'>alert('Please enter UID Number!');</script>");
                txtUIDNumber.Focus();
                return;


            }
            else if (txt10Schoolname.Value.Trim() == string.Empty)
            {
                Response.Write("<script type='text/javascript'>alert('Please enter 10 School name!');</script>");
                txt10Schoolname.Focus();
                return;

            }
            else if (txt10Board.Value.Trim() == string.Empty)
            {
                Response.Write("<script type='text/javascript'>alert('Please enter 10 Board ie. U.p Board/CBSE!');</script>");
                txt10Board.Focus();
                return;

            }
            else if (txt10YoP.Value.Trim() == string.Empty)
            {
                Response.Write("<script type='text/javascript'>alert('Please enter year of passing for 10!');</script>");
                txt10YoP.Focus();
                return;

            }
            else if (txt10TotalMarks.Value.Trim() == string.Empty)
            {
                Response.Write("<script type='text/javascript'>alert('Enter Total marks fro 10!');</script>");
                txt10TotalMarks.Focus();
                return;

            }
            else if (txt10MarksObtained.Value.Trim() == string.Empty)
            {
                Response.Write("<script type='text/javascript'>alert('Enter marks obtained for 10!');</script>");
                txt10MarksObtained.Focus();
                return;

            }
            else if (txt10Percentage.Value.Trim() == string.Empty)
            {
                Response.Write("<script type='text/javascript'>alert('Enter percentage for 10!');</script>");
                txt10Percentage.Focus();
                return;

            }
            else if (txt12Schoolname.Value.Trim() == string.Empty)
            {
                Response.Write("<script type='text/javascript'>alert('Enter 12 school name!');</script>");
                txt12Schoolname.Focus();
                return;

            }
            else if (txt12Board.Value.Trim() == string.Empty)
            {
                Response.Write("<script type='text/javascript'>alert('Enter 12 board!');</script>");
                txt12Board.Focus();
                return;

            }
            else if (txt12YoP.Value.Trim() == string.Empty)
            {
                Response.Write("<script type='text/javascript'>alert('Enter 12 Year of Passing!');</script>");
                txt12YoP.Focus();
                return;


            }
            else if (txt12TotalMarks.Value.Trim() == string.Empty)
            {
                Response.Write("<script type='text/javascript'>alert('Enter 12 total marks!');</script>");
                txt12TotalMarks.Focus();
                return;

            }
            else if (txt12MarksObtained.Value.Trim() == string.Empty)
            {
                Response.Write("<script type='text/javascript'>alert('Enter 12 marks obtained!');</script>");
                txt12MarksObtained.Focus();
                return;

            }
            else if (txt12Percentage.Value.Trim() == string.Empty)
            {
                Response.Write("<script type='text/javascript'>alert('Enter 12 percentage!');</script>");
                txt12Percentage.Focus();
                return;

            }
            else if (txtAddressCorr.Text.Trim() == string.Empty)
            {
                Response.Write("<script type='text/javascript'>alert('Enter Correspondence Address!');</script>");
                txtAddressCorr.Focus();
                return;

            }
            else if (txtPinCorr.Value.Trim() == string.Empty)
            {
                Response.Write("<script type='text/javascript'>alert('Enter pin code!');</script>");
                txtPinCorr.Focus();
                return;

            }
            else if (ddlDIsrictCorr.SelectedValue == "0")
            {
                Response.Write("<script type='text/javascript'>alert('select District Name!');</script>");
                ddlDIsrictCorr.Focus();
                return;

            }
            else if (txtAddress_per.Text.Trim() == string.Empty)
            {
                Response.Write("<script type='text/javascript'>alert('Enter Permanent Address!');</script>");
                txtAddress_per.Focus();
                return;

            }
            else if (txtPin_Per.Value.Trim() == string.Empty)
            {
                Response.Write("<script type='text/javascript'>alert('Enter Pin Code for permanent address!');</script>");
                txtPin_Per.Focus();
                return;

            }
            else if (ddlDIsrictCorr.SelectedValue == "0")
            {
                Response.Write("<script type='text/javascript'>alert('select District!');</script>");
                ddlDIsrictCorr.Focus();
                return;

            }
            else if (Session["photoFileName"] == null)
            {
                Response.Write("<script type='text/javascript'>alert('Upload Photograph!');</script>");
                FileUpload1.Focus();
                return;
            }
            else if (Session["SignFileName"] == null)
            {
                Response.Write("<script type='text/javascript'>alert('Upload Signature!');</script>");
                FileUpload2.Focus();
                return;

            }
            
            #endregion


        }
    }
}
