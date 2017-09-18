<%@ Page Title="" Language="C#" MasterPageFile="~/OnlineVoting.Master" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="OnlineVotingSystem.LoginPage" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
     <div class="col-lg-12">
            <h1 class="text-center login-title">Sign in to vote</h1>
            <div class="account-wall">
                <asp:TextBox ID="txtUserName" runat="server" class="form-control" placeholder="User Name" required autofocus></asp:TextBox>
                 <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" class="form-control" placeholder="Password" required></asp:TextBox>
                <asp:Button ID="btnLogin" class="btn btn-md btn-warning btn-block" runat="server" OnClick="btnLogin_Click" Text="Login" />
            </div>
            </div>
     </div>
</asp:Content>
