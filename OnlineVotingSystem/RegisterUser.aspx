<%@ Page Title="" Language="C#" MasterPageFile="~/OnlineVoting.Master" AutoEventWireup="true" CodeBehind="RegisterUser.aspx.cs" Inherits="OnlineVotingSystem.RegisterUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div style="text-align:right">
<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/LoginPage.aspx"  Font-Size="Medium" ForeColor="#cc3300">LOGOUT</asp:HyperLink>
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Admin.aspx"  Font-Size="Medium" ForeColor="#cc3300">HOME</asp:HyperLink>
        </div>
    <div style="text-align:left ">
            <h1 class="text-center login-title">Enter Candidate Detilas</h1>
        </div>
    <hr />
    <div class="row">
     <div class="col-lg-12">
            <div class="account-wall">
                <asp:TextBox ID="txtName" runat="server" class="form-control" placeholder="Name" required autofocus></asp:TextBox>
                 <asp:TextBox ID="txtUserId" runat="server" class="form-control" placeholder="User Name" required></asp:TextBox>
                <asp:TextBox ID="txtPassword" runat="server" class="form-control" placeholder="Password" required autofocus></asp:TextBox>
                 <asp:TextBox ID="txtType" runat="server" class="form-control" placeholder="User Type" required></asp:TextBox>
                <asp:Button ID="btnSubmit" class="btn btn-md btn-warning btn-block" runat="server" OnClick="btnSubmit_Click" Text="Register" />
                <asp:Button ID="btnCancel" class="btn btn-md btn-warning btn-block" runat="server" OnClick="btnCancel_Click" Text="Cancle" />
            </div>
            </div>
     </div>

</asp:Content>
