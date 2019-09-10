<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Insert.aspx.cs" Inherits="Project.Insert" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:LoginView ID="LoginView1" runat="server">
        <AnonymousTemplate>
            <div class="alert alert-danger" role="alert">You need to SIGN-IN to use this feature</div>
        </AnonymousTemplate>
        <LoggedInTemplate>
                <table border="0" cellpadding="0" cellspacing="0" class='table'>
                   <tr> <td>PlaneName</td>   <td><asp:TextBox ID="TextBox1" runat="server" CssClass='form-control'></asp:TextBox><asp:RequiredFieldValidator
                           ID="RequiredFieldValidator1" runat="server" ErrorMessage="Must be Filled" ControlToValidate='TextBox1'></asp:RequiredFieldValidator><asp:RegularExpressionValidator
                           ID="RegularExpressionValidator1" runat="server" ErrorMessage="Must not Contain number" ControlToValidate='TextBox1' ValidationExpression="^[^0-9]*$"></asp:RegularExpressionValidator></td> </tr>
                   <tr> <td>PlaneType</td>   <td>
                       <asp:DropDownList ID="DropDownList1" runat="server" CssClass='form-control'>
                           <asp:ListItem>Military Aircraft</asp:ListItem>
                           <asp:ListItem>Passenger Aircraft</asp:ListItem>
                           <asp:ListItem>Helicopter</asp:ListItem>
                           <asp:ListItem>Experimental Aircraft</asp:ListItem>
                       </asp:DropDownList>
                       </td> </tr>
                   <tr> <td>EngineType</td>   <td>
                       <asp:DropDownList ID="DropDownList2" runat="server" CssClass='form-control'>
                           <asp:ListItem>Turbofan</asp:ListItem>
                           <asp:ListItem>Turboprop</asp:ListItem>
                           <asp:ListItem>Afterburner</asp:ListItem>
                       </asp:DropDownList>
                       </td> </tr>
                   <tr> <td>NumberOfEngine</td>   <td><asp:TextBox ID="TextBox4" runat="server" CssClass="form-control"></asp:TextBox>
                       <asp:RangeValidator ID="RangeValidator1" runat="server" 
                           ErrorMessage="Must 1-6" ControlToValidate="TextBox4" MaximumValue="6" MinimumValue="1" Type="Integer"></asp:RangeValidator>
                       </td> </tr>
                   <tr> <td>PlaneImage</td>   <td>
                       <asp:DropDownList ID="DropDownList3" runat="server" CssClass='form-control'>
                           <asp:ListItem Value="assets/1.jpg">Military Aircraft</asp:ListItem>
                           <asp:ListItem Value="assets/2.jpg">Passenger Aircraft</asp:ListItem>
                           <asp:ListItem Value="assets/3.jpg">Helicopter</asp:ListItem>
                           <asp:ListItem Value="assets/4.jpg">Experimental Aircraft</asp:ListItem>
                       </asp:DropDownList>
                       </td> </tr>
                </table>
                <asp:Button ID="insertPlane" runat="server" Text="Insert Data" 
                    onclick="insertPlane_Click" CssClass="btn btn-primary" />
        </LoggedInTemplate>
    </asp:LoginView>
</asp:Content>
