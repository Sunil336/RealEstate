<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CityMaster.aspx.cs" Inherits="PropertiesTest.CityMaster" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <h3>City Master <small></small></h3>
            <div class="row">
                <div class="col-sm-06">
                    <div class="panel panel-default">
                        <div class="panel-heading">City Master</div>
                        <div class="panel-body">
                            <div class="form-horizontal">
                                <div class="form-group">
                                    <label class="col-lg-2 control-label">City</label>
                                    <div class="col-lg-4">
                                        <asp:TextBox ID="txtCity" runat="server" class="form-control" placeholder="Enter City Name"></asp:TextBox>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="col-lg-offset-2 col-lg-10">
                                        <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" class="btn btn-sm btn-default" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
            <div class="row">
                <div class="col-lg-6">
                    <!-- START panel-->
                    <div class="panel panel-default">
                        <div class="panel-heading">City List</div>
                        <div class="panel-body">
                            <!-- START table-responsive-->
                            <div class="table-responsive">
                                <asp:GridView ID="gvCity" CssClass="table" runat="server" AutoGenerateColumns="false" DataKeyNames="Id"
                                    PageSize="10" AllowPaging="true" OnRowEditing="gvCity_RowEditing" OnRowUpdating="gvCity_RowUpdating"
                                    OnRowCancelingEdit="gvCity_RowCancelingEdit" OnRowDeleting="gvCity_RowDeleting">
                                    <Columns>
                                        <asp:BoundField DataField="Id" HeaderText="City Id" />
                                        <asp:BoundField DataField="CityName" HeaderText="City Name" />
                                        <asp:CommandField ShowEditButton="true" />
                                        <asp:CommandField ShowDeleteButton="true" />
                                    </Columns>
                                </asp:GridView>
                            </div>
                        </div>
                    </div>
                </div>
            </div>


        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
