<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Comment.aspx.cs" Inherits="Project.Comment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:projectCUPU1ConnectionString2 %>" 
        SelectCommand="SELECT * FROM [comment]" 
    ConflictDetection="CompareAllValues" 
    DeleteCommand="DELETE FROM [comment] WHERE [CommentID] = @original_CommentID AND (([PlaneID] = @original_PlaneID) OR ([PlaneID] IS NULL AND @original_PlaneID IS NULL)) AND (([Username] = @original_Username) OR ([Username] IS NULL AND @original_Username IS NULL)) AND (([CommentBody] = @original_CommentBody) OR ([CommentBody] IS NULL AND @original_CommentBody IS NULL))" 
    InsertCommand="INSERT INTO [comment] ([PlaneID], [Username], [CommentBody]) VALUES (@PlaneID, @Username, @CommentBody)" 
    OldValuesParameterFormatString="original_{0}" 
    UpdateCommand="UPDATE [comment] SET [PlaneID] = @PlaneID, [Username] = @Username, [CommentBody] = @CommentBody WHERE [CommentID] = @original_CommentID AND (([PlaneID] = @original_PlaneID) OR ([PlaneID] IS NULL AND @original_PlaneID IS NULL)) AND (([Username] = @original_Username) OR ([Username] IS NULL AND @original_Username IS NULL)) AND (([CommentBody] = @original_CommentBody) OR ([CommentBody] IS NULL AND @original_CommentBody IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_CommentID" Type="Int32" />
            <asp:Parameter Name="original_PlaneID" Type="Int32" />
            <asp:Parameter Name="original_Username" Type="String" />
            <asp:Parameter Name="original_CommentBody" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="PlaneID" Type="Int32" />
            <asp:Parameter Name="Username" Type="String" />
            <asp:Parameter Name="CommentBody" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="PlaneID" Type="Int32" />
            <asp:Parameter Name="Username" Type="String" />
            <asp:Parameter Name="CommentBody" Type="String" />
            <asp:Parameter Name="original_CommentID" Type="Int32" />
            <asp:Parameter Name="original_PlaneID" Type="Int32" />
            <asp:Parameter Name="original_Username" Type="String" />
            <asp:Parameter Name="original_CommentBody" Type="String" />
        </UpdateParameters>
</asp:SqlDataSource>
    <asp:LoginView ID="LoginView1" runat="server">
        <AnonymousTemplate>
            <asp:GridView ID="GridView2" runat="server" AllowPaging="True" 
                DataSourceID="SqlDataSource1" PageSize="5" AutoGenerateColumns="False" 
                DataKeyNames="CommentID"
                CssClass="table" BackColor="White" BorderColor="#CCCCCC" 
                BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" 
                GridLines="Horizontal">
                <Columns>
                    <asp:BoundField DataField="CommentID" HeaderText="CommentID" 
                        InsertVisible="False" ReadOnly="True" SortExpression="CommentID" />
                    <asp:BoundField DataField="PlaneID" HeaderText="PlaneID" 
                        SortExpression="PlaneID" />
                    <asp:BoundField DataField="Username" HeaderText="Username" 
                        SortExpression="Username" />
                    <asp:BoundField DataField="CommentBody" HeaderText="CommentBody" 
                        SortExpression="CommentBody" />
                </Columns>
                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#242121" />
            </asp:GridView>
        </AnonymousTemplate>
        <LoggedInTemplate>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="CommentID" DataSourceID="SqlDataSource1" 
    AllowPaging="True" PageSize="5" CssClass="table">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="CommentID" HeaderText="CommentID" 
                InsertVisible="False" ReadOnly="True" SortExpression="CommentID" />
                    <asp:BoundField DataField="PlaneID" HeaderText="PlaneID" 
                SortExpression="PlaneID" />
                    <asp:BoundField DataField="Username" HeaderText="Username" 
                SortExpression="Username" />
                    <asp:BoundField DataField="CommentBody" HeaderText="CommentBody" 
                SortExpression="CommentBody" />
                </Columns>
                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#242121" />
            </asp:GridView>
              <table>
        <tr><td>Plane ID</td>   <td>
            <asp:DropDownList ID="DropDownList1" runat="server" 
                DataSourceID="SqlDataSource1" DataTextField="PlaneID" DataValueField="PlaneID" CssClass="form-control">
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ErrorMessage="RequiredFieldValidator" ControlToValidate='TextBox2'></asp:RequiredFieldValidator>
            </td> </tr>
        <tr><td>Comment Body</td>   <td><asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox></td> </tr>
        <tr><td><br /></td></tr>
        <tr><td><asp:Button ID="Button1" runat="server" Text="Insert Comment" 
                onclick="Button1_Click" CssClass="btn btn-primary"/></td></tr>
    </table>
        </LoggedInTemplate>
    </asp:LoginView>
  
</asp:Content>
