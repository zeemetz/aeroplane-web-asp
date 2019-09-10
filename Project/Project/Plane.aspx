<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Plane.aspx.cs" Inherits="Project.Plane" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:projectCUPU1ConnectionString2 %>" 
    SelectCommand="SELECT * FROM [plane]" ConflictDetection="CompareAllValues" 
        DeleteCommand="DELETE FROM [plane] WHERE [PlaneID] = @original_PlaneID AND (([PlaneName] = @original_PlaneName) OR ([PlaneName] IS NULL AND @original_PlaneName IS NULL)) AND (([PlaneType] = @original_PlaneType) OR ([PlaneType] IS NULL AND @original_PlaneType IS NULL)) AND (([EngineType] = @original_EngineType) OR ([EngineType] IS NULL AND @original_EngineType IS NULL)) AND (([NumberOfEngine] = @original_NumberOfEngine) OR ([NumberOfEngine] IS NULL AND @original_NumberOfEngine IS NULL)) AND (([PlaneImage] = @original_PlaneImage) OR ([PlaneImage] IS NULL AND @original_PlaneImage IS NULL))" 
        InsertCommand="INSERT INTO [plane] ([PlaneName], [PlaneType], [EngineType], [NumberOfEngine], [PlaneImage]) VALUES (@PlaneName, @PlaneType, @EngineType, @NumberOfEngine, @PlaneImage)" 
        OldValuesParameterFormatString="original_{0}" 
        UpdateCommand="UPDATE [plane] SET [PlaneName] = @PlaneName, [PlaneType] = @PlaneType, [EngineType] = @EngineType, [NumberOfEngine] = @NumberOfEngine, [PlaneImage] = @PlaneImage WHERE [PlaneID] = @original_PlaneID AND (([PlaneName] = @original_PlaneName) OR ([PlaneName] IS NULL AND @original_PlaneName IS NULL)) AND (([PlaneType] = @original_PlaneType) OR ([PlaneType] IS NULL AND @original_PlaneType IS NULL)) AND (([EngineType] = @original_EngineType) OR ([EngineType] IS NULL AND @original_EngineType IS NULL)) AND (([NumberOfEngine] = @original_NumberOfEngine) OR ([NumberOfEngine] IS NULL AND @original_NumberOfEngine IS NULL)) AND (([PlaneImage] = @original_PlaneImage) OR ([PlaneImage] IS NULL AND @original_PlaneImage IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_PlaneID" Type="Int32" />
            <asp:Parameter Name="original_PlaneName" Type="String" />
            <asp:Parameter Name="original_PlaneType" Type="String" />
            <asp:Parameter Name="original_EngineType" Type="String" />
            <asp:Parameter Name="original_NumberOfEngine" Type="Int32" />
            <asp:Parameter Name="original_PlaneImage" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="PlaneName" Type="String" />
            <asp:Parameter Name="PlaneType" Type="String" />
            <asp:Parameter Name="EngineType" Type="String" />
            <asp:Parameter Name="NumberOfEngine" Type="Int32" />
            <asp:Parameter Name="PlaneImage" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="PlaneName" Type="String" />
            <asp:Parameter Name="PlaneType" Type="String" />
            <asp:Parameter Name="EngineType" Type="String" />
            <asp:Parameter Name="NumberOfEngine" Type="Int32" />
            <asp:Parameter Name="PlaneImage" Type="String" />
            <asp:Parameter Name="original_PlaneID" Type="Int32" />
            <asp:Parameter Name="original_PlaneName" Type="String" />
            <asp:Parameter Name="original_PlaneType" Type="String" />
            <asp:Parameter Name="original_EngineType" Type="String" />
            <asp:Parameter Name="original_NumberOfEngine" Type="Int32" />
            <asp:Parameter Name="original_PlaneImage" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:LoginView ID="LoginView1" runat="server">
        <AnonymousTemplate>
            <asp:GridView ID="GridView2" runat="server" AllowPaging="True" 
                DataSourceID="SqlDataSource1" PageSize="5" AutoGenerateColumns="False" 
                DataKeyNames="PlaneID"
                CssClass='table' BackColor="White" BorderColor="#CCCCCC" 
                BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" 
                GridLines="Horizontal">
                <Columns>
                    <asp:BoundField DataField="PlaneID" HeaderText="PlaneID" InsertVisible="False" 
                        ReadOnly="True" SortExpression="PlaneID" />
                    <asp:BoundField DataField="PlaneName" HeaderText="PlaneName" 
                        SortExpression="PlaneName" />
                    <asp:BoundField DataField="PlaneType" HeaderText="PlaneType" 
                        SortExpression="PlaneType" />
                    <asp:BoundField DataField="EngineType" HeaderText="EngineType" 
                        SortExpression="EngineType" />
                    <asp:BoundField DataField="NumberOfEngine" HeaderText="NumberOfEngine" 
                        SortExpression="NumberOfEngine" />
                    <asp:ImageField DataImageUrlField="PlaneImage" HeaderText="Images">
                    </asp:ImageField>
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
    DataSourceID="SqlDataSource1" AllowPaging="True" AutoGenerateEditButton="True" 
        AutoGenerateDeleteButton="True" DataKeyNames="PlaneID" PageSize="5" CssClass='table'>
                <Columns>
                    <asp:BoundField DataField="PlaneID" HeaderText="PlaneID" 
                SortExpression="PlaneID" InsertVisible="False" ReadOnly="True" />
                    <asp:BoundField DataField="PlaneName" HeaderText="PlaneName" 
                SortExpression="PlaneName" />
                    <asp:BoundField DataField="PlaneType" HeaderText="PlaneType" 
                SortExpression="PlaneType" />
                    <asp:BoundField DataField="EngineType" HeaderText="EngineType" 
                SortExpression="EngineType" />
                    <asp:BoundField DataField="NumberOfEngine" HeaderText="NumberOfEngine" 
                SortExpression="NumberOfEngine" />
                    <asp:ImageField DataAlternateTextField="PlaneImage" HeaderText="Image" 
                DataImageUrlField="PlaneImage">
                        <ItemStyle CssClass="thumbnail" />
                    </asp:ImageField>
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
        </LoggedInTemplate>
    </asp:LoginView>
</asp:Content>
