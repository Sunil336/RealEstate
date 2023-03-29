using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PropertiesTest
{
    public partial class CityMaster : System.Web.UI.Page
    {
        public int stateid;
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (!IsPostBack)
            {
                if (Request.QueryString["StateID"] != null && Request.QueryString["StateID"] != string.Empty)
                    stateid = int.Parse(Request.QueryString["StateID"]);
                LoadGrid();
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            DBML.EntityCRUDMasterDataContext _objDataContext = new DBML.EntityCRUDMasterDataContext();
            try
            {
                int intCityId = 0;               
                string stCityName = txtCity.Text;
                string stAction = "INSERT";
                bool blStatus = true;
                _objDataContext.CRUD_CityMaster(intCityId, stCityName, int.Parse(Request.QueryString["StateID"]), stAction, blStatus);
                txtCity.Text = "";
                LoadGrid();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        private void LoadGrid()
        {
            using (DBML.EntityCRUDMasterDataContext context = new DBML.EntityCRUDMasterDataContext())
            {
                var states = from state in context.EntityCityMasters
                            where state.StateId == int.Parse(Request.QueryString["StateID"]) && state.Status == true
                             select state;
                gvCity.DataSource = states;
                gvCity.DataBind();
            }
        }

        protected void gvCity_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gvCity.EditIndex = e.NewEditIndex;
            LoadGrid();
        }

        protected void gvCity_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int stateID = Convert.ToInt32(gvCity.DataKeys[e.RowIndex].Values[0]);
            GridViewRow row = (GridViewRow)gvCity.Rows[e.RowIndex];
            TextBox txtStateName = (TextBox)row.Cells[1].Controls[0];
            using (DBML.EntityCRUDMasterDataContext context = new DBML.EntityCRUDMasterDataContext())
            {               
                string stAction = "UPDATE";
                bool blStatus = true;
                context.CRUD_CityMaster(stateID, txtStateName.Text, int.Parse(Request.QueryString["StateID"]), stAction, blStatus); ;
                context.SubmitChanges();
            }
            gvCity.EditIndex = -1;
            LoadGrid();
        }

        protected void gvCity_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gvCity.EditIndex = -1;
            LoadGrid();
        }

        protected void gvCity_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int intCityId = Convert.ToInt32(gvCity.DataKeys[e.RowIndex].Values[0]);
            string strStateName = "";
            using (DBML.EntityCRUDMasterDataContext context = new DBML.EntityCRUDMasterDataContext())
            {               
                string stAction = "DELETE";
                bool blStatus = false;
                context.CRUD_CityMaster(intCityId, strStateName, int.Parse(Request.QueryString["StateID"]), stAction, blStatus);
                context.SubmitChanges();
            }
            gvCity.EditIndex = -1;
            LoadGrid();
        }
      
    }
}