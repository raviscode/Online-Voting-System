<%@ Page Title="" Language="C#" MasterPageFile="~/OnlineVoting.Master" AutoEventWireup="true" CodeBehind="Result.aspx.cs" Inherits="OnlineVotingSystem.Result" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div style="text-align:right">
       <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/LoginPage.aspx"  Font-Size="Medium" ForeColor="#cc3300">LOGOUT</asp:HyperLink>
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Admin.aspx"  Font-Size="Medium" ForeColor="#cc3300">HOME</asp:HyperLink>
        </div>
    <div style="text-align:left ">
    <h1 class="text-center login-title">Voting Result</h1>
        </div>
    <hr />
     <div style="text-align:center">
            <asp:GridView ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="100%" CellPadding="9" ForeColor="#cc3300" GridLines="None">
                <AlternatingRowStyle BackColor="White" Height="50px" />
                 <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#cc3300" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#cc3300" Font-Bold="True" ForeColor="White" Height="60px" />
            <PagerStyle BackColor="#cc3300" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" Height="50px" HorizontalAlign="Left"/>
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            </asp:GridView>
        </div>
        <asp:Label ID="lblMsg" runat="server"></asp:Label>
</asp:Content>
