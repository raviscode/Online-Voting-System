<%@ Page Title="" Language="C#" MasterPageFile="~/OnlineVoting.Master" AutoEventWireup="true" CodeBehind="Candidate.aspx.cs" Inherits="OnlineVotingSystem.Candidate" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

       <div style="text-align:right">
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/LoginPage.aspx"  Font-Size="Medium" ForeColor="#cc3300">LOGOUT</asp:HyperLink>
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Admin.aspx"  Font-Size="Medium" ForeColor="#cc3300">HOME</asp:HyperLink>
        </div>
    <div style="text-align:left ">
    <h2>Candidate List</h2>
        </div>
     <hr />
       <div style="text-align:center">
        <asp:Label ID="lblMsg" runat="server" Text="Click On the Candidate's name to check details and for Voting!!"></asp:Label>
        <asp:GridView ID="gdvVotingPage" runat="server" AutoGenerateColumns="False" 
            EnableModelValidation="True" AllowPaging="True" AllowSorting="True" 
            CellPadding="4" CellSpacing="2" Width="100%" ForeColor="#cc3300" GridLines="None"
            onpageindexchanging="gdvVotingPage_PageIndexChanging" 
            onprerender="gdvVotingPage_PreRender" onrowcommand="gdvVotingPage_RowCommand" PageSize="30">
            <AlternatingRowStyle BackColor="White" Height="50px" />
            <Columns>
                <asp:TemplateField HeaderText="Candidate Name">
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" Text='<%# Eval("Name")%>' CommandName="Name" CommandArgument='<%# Bind("Name")%>'></asp:LinkButton>
                </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField HeaderText="Party" DataField="Party"/>
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#cc3300" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#cc3300" Font-Bold="True" ForeColor="White" Height="60px" />
            <PagerStyle BackColor="#cc3300" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" Height="50px" HorizontalAlign="Left" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        </asp:GridView>
    
        <asp:Label ID="lblPaging" runat="server" Text="Label"></asp:Label>
        <br />
  
           </div>
</asp:Content>
