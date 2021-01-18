40-
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dashbord.aspx.cs" Inherits="EOWwebpage.Dashbord" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    <link href='https://fonts.googleapis.com/css?family=Roboto:300,400,700' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" type="text/css" href="EowWPcss.css" />
   <%-- <link rel="stylesheet" type="text/css" href="EOWForm1.css" />--%>
        <meta name="viewport" content="width=device-width, initial-scale=1" />
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
         <header class="container-fluid">
            <div class="row heading">
               
                <h1 class="col-sm-12 text-center">Buyers Details For EOW Cases</h1>
                <h3 class="col-sm-12 text-center">(AIRWIL's Green Avenue Buyers Details)</h3>
            </div>
          </header>

         <section class="jumbotron">
                    <div class="container-fluid">
                        <div class="row">
                           <nav class="navbar navbar-expand-md navbar-light bg-light">
                              <a href="#" class="navbar-brand">EOW</a>
                                <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
                                  <span class="navbar-toggler-icon"></span>
                                </button>
                          
                    <div class="collapse navbar-collapse justify-content-center" id="navbarCollapse">
                      <div class="navbar-nav">
                        <a href="Index.aspx" class="nav-item nav-link active">Home</a>
                        <a href="EOWGallery.aspx"  class="nav-item nav-link active">Gallery</a>
                        <a href="ContactUs.aspx"  class="nav-item nav-link active">Contact Us</a>
                        <a href="#"  class="nav-item nav-link active">Objective</a>
                      </div>
                        </div>
                      
                    <div class="navbar-nav ml-auto">
                        <asp:Label ID="lbluserdetails" runat="server" Text=""></asp:Label>
                        <asp:Button ID="Button1" runat="server" Text="Logout" OnClick="Button1_Click" />
                    </div>
                 </nav>         
                 </div>
                </div>
             </section>
             <section class="jumbotron">
                 <div class="container-fluid">
                     <div class="row">
                         <div class="col-sm-12 GridV1">
                             <a href="DetailForm.aspx">Kindly fill in your details</a>
                           
                             <asp:GridView ID="GVEOWClientdetail" Width="100%" runat="server" AutoGenerateColumns="False"
                                  BackColor="White" BorderColor="#DEDFDE" BorderWidth="1px" 
                                 CellPadding="4" DataKeyNames="UserID" BorderStyle="None" ShowHeaderWhenEmpty="True"
                                onRowEditing="GVEOWClientdetail_RowEditing"
                                 OnRowCancelingEdit="GVEOWClientdetail_RowCancelingEdit"
                                 OnRowUpdating="GVEOWClientdetail_RowUpdating" ForeColor="Black" GridLines="Vertical" 
                                onRowDeleting="GVEOWClientdetail_RowDeleting" 
                                 >                         
                                 <AlternatingRowStyle BackColor="White" />
                            <Columns>
                    <asp:TemplateField HeaderText="User ID">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("UserID") %>' runat="server" />
                        </ItemTemplate>
                        <EditItemTemplate>  
                             <asp:TextBox ID="txtUserID" Text='<%# Eval("UserID") %>' runat="server" Width="50px"></asp:TextBox>
                           </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Tower Name">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("TowerName") %>' runat="server" />
                        </ItemTemplate>
                        <EditItemTemplate >
                            <asp:TextBox ID="txtTowerName" Text='<%# Eval("TowerName") %>' runat="server" Width="80px"></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                     <asp:TemplateField HeaderText="Flat No">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("FlatNo") %>' runat="server" />
                        </ItemTemplate>
                        <EditItemTemplate >
                            <asp:TextBox ID="txtFlatNo" Text='<%# Eval("FlatNo") %>' runat="server" Width="50px"></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Full Name 1st Applicant" >
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("FullName1stApplicant") %>' runat="server" />
                        </ItemTemplate>
                        <EditItemTemplate >
                            <asp:TextBox ID="txtFullName1stApplicant" Text='<%# Eval("FullName1stApplicant") %>' runat="server" Width="150px"></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Full Name 2nd Applicant">
                        <ItemTemplate>
                            
                            <asp:Label Text='<%# Eval("FullName2ndApplicant") %>' runat="server" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtFullName2ndApplicant" Text='<%# Eval("FullName2ndApplicant") %>' runat="server" Width="150px"></asp:TextBox>
                        </EditItemTemplate> 
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Full Address for Communication">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("FullAddressforCommunication") %>' runat="server" />
                        </ItemTemplate>
                        <EditItemTemplate >
                            <asp:TextBox ID="txtFullAddressforCommunication" Text='<%# Eval("FullAddressforCommunication") %>' runat="server" Width="200px"></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                     <asp:TemplateField HeaderText="Pincode">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("Pincode") %>' runat="server" />
                        </ItemTemplate>
                        <EditItemTemplate >
                            <asp:TextBox ID="txtPincode" Text='<%# Eval("Pincode") %>' runat="server" Width="100px"></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Email-ID">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("EmailID") %>' runat="server" />
                        </ItemTemplate>
                        <EditItemTemplate >
                            <asp:TextBox ID="txtEmailID" Text='<%# Eval("EmailID") %>' runat="server" Width="150px"></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Mobile Number">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("MobileNumber") %>' runat="server" />
                        </ItemTemplate>
                        <EditItemTemplate >
                            <asp:TextBox ID="txtMobileNumber" Text='<%# Eval("MobileNumber") %>' runat="server" Width="80px"></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Original Area of Flat as Per BBA (in Sqft)">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("OriginalAreaofFlatasPerBBASqft") %>' runat="server" />
                        </ItemTemplate>
                        <EditItemTemplate >
                            <asp:TextBox ID="txtOriginalAreaofFlatasPerBBASqft" Text='<%# Eval("OriginalAreaofFlatasPerBBASqft") %>' runat="server" Width="50px"></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                     <asp:TemplateField HeaderText="Total Cost of Flat">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("TotalCostofFlat") %>' runat="server" />
                        </ItemTemplate>
                        <EditItemTemplate >
                            <asp:TextBox ID="txtTotalCostofFlat" Text='<%# Eval("TotalCostofFlat") %>' runat="server" Width="50px"></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Total Paid">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("TotalPaid") %>' runat="server" />
                        </ItemTemplate>
                        <EditItemTemplate >
                            <asp:TextBox ID="txtTotalPaid" Text='<%# Eval("TotalPaid") %>' runat="server" Width="100px"></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Did You Pay Any Amount After May-2018 To AIRWIL">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("DidYouPayAnyamountAfterMay2018ToAIRWIL") %>' runat="server" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtaftermay18" Text='<%# Eval("DidYouPayAnyamountAfterMay2018ToAIRWIL") %>' runat="server" Width="50px"></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="If Yes, Please Enter How Much Total Paid After May-2018">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("IfYesPleaseEnterHowMuchTotalPaidAfterMay2018") %>' runat="server" />
                        </ItemTemplate>
                        <EditItemTemplate >
                            <asp:TextBox ID="txtifyes" Text='<%# Eval("IfYesPleaseEnterHowMuchTotalPaidAfterMay2018") %>' runat="server" Width="50px"></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                     <asp:TemplateField HeaderText="Did You Pay Anything For Extra Super Area Demand">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("DidYouPayAnythingForExtraSuperAreaDemand") %>' runat="server" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtpayextra" Text='<%# Eval("DidYouPayAnythingForExtraSuperAreaDemand") %>' runat="server" Width="50px"></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="If Yes, Then How Much You Paid For Extra Super Area">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("IfYesThenHowMuchYouPaidForExtraSuperAre") %>' runat="server" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txthowmuch" Text='<%# Eval("IfYesThenHowMuchYouPaidForExtraSuperAre") %>' runat="server" Width="60px"></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Funtion" HeaderStyle-Width="100px" ItemStyle-HorizontalAlign ="Center">
                        <ItemTemplate>
                            <asp:ImageButton ImageUrl="~/image/edit.png" runat="server"  CommandName="Edit" ToolTip="Edit" Width="30px" Height="20px" />
                            <asp:ImageButton ImageUrl="~/image/delete.png" runat="server" CommandName="Delete" ToolTip="Delete" Width="30px" Height="20px" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:ImageButton ImageUrl="~/image/saveIcon1.png" runat="server" CommandName="Update" ToolTip="Update" Width="30px" Height="20px" />
                            <asp:ImageButton ImageUrl="~/image/close.jpg" runat="server" CommandName="Cancel" ToolTip="Cancel" Width="30px" Height="20px" />
                        </EditItemTemplate>
                    </asp:TemplateField>
                    
                </Columns>
      <FooterStyle BackColor="#CCCC99" />
                                 <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                                 <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                                 <RowStyle BackColor="#F7F7DE" />
                                 <SelectedRowStyle BackColor="#CE5D5A" ForeColor="White" Font-Bold="True" />
                                 <SortedAscendingCellStyle BackColor="#FBFBF2" />
                                 <SortedAscendingHeaderStyle BackColor="#848384" />
                                 <SortedDescendingCellStyle BackColor="#EAEAD3" />
                                 <SortedDescendingHeaderStyle BackColor="#575357" />
                             </asp:GridView>
                             <br />
            <asp:Label ID="lblErrorMessage" Text="" runat="server" ForeColor="Red" Font-Size="20px"/><br />
            <asp:Label ID="lblSuccessMessage" Text="" runat="server" ForeColor="Green" Font-Size="20px"/>
                                
                         </div>
                     </div>
                 </div>
                 
             </section>
         <section class="jumbotron">
          <div class="container-fluid">
                        <div class="row">
                      <nav class="navbar navbar-expand-md navbar-light bg-light fixed-bottom">
                       
                          <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollalpse">
                           
                       </button>
                          
                    <div class="collapse navbar-collapse justify-content-center">
                      <div class="navbar-nav">
                        <a href="Index.aspx" class="nav-item nav-link active">Home</a>
                        <a href="SlideshowDemo.aspx"  class="nav-item nav-link active">Gallery</a>
                     
                        <a href="SlideshowDemo.aspx"  class="nav-item nav-link active">Contact Us</a>
                        <a href="SlideshowDemo.aspx"  class="nav-item nav-link active">Objective</a>
                      </div>
                        </div>
                      
                   
                          
                          </nav>
                            
                 </div>
                  
                 </div>
        <footer class="container">
            <div class="row">
                <p class="col-sm-12 text-center">&copy: 2020 Contact Us for any Query</p>
            </div>
            </footer>
          </section>
    </form>
        
</body>
</html>
