using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PropertiesTest
{
    public partial class Register : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            DBML.EntityUserMasterDataContext _objDataContext = new DBML.EntityUserMasterDataContext();
            try
            {
                int? _intEntityId = 0;
                string stUserName = signupUserName.Text;
                string stFirstName ="Sunil";
                string stLastName ="Patel";
                string stGender ="Male";
                string stEmail = signupInputEmail1.Text;
                string stPassword = signupInputPassword1.Text;
                string stMobileNo = "8141294616";
                string stUserRole ="Admin";

                _objDataContext.insertEntityUserRegister(ref _intEntityId,stUserName,stFirstName,stLastName,stGender,stEmail,stPassword,stMobileNo,stUserRole);

                signupUserName.Text = "";
                signupInputEmail1.Text = "";
                signupInputPassword1.Text = "";
                signupInputRePassword1.Text = "";
                Response.Redirect("Dashboard.aspx");
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}