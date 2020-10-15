<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistrationForm.aspx.cs" Inherits="EOWwebpage.RegistrationForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    <link href='https://fonts.googleapis.com/css?family=Roboto:300,400,700' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" type="text/css" href="EowWPcss.css" />
   
        <meta name="viewport" content="width=device-width, initial-scale=1" />
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
    <title></title>
  
</head>
<body>
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
                          <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollalpse">
                           <span class="navbar-toggler-icon"></span>
                       </button>
                          
                    <div class="collapse navbar-collapse justify-content-center" id="navbarCollapse">
                      <div class="navbar-nav">
                        <a href="Index.aspx" class="nav-item nav-link active">Home</a>
                        <a href="SlideshowDemo.aspx"  class="nav-item nav-link active">Gallery</a>
                     
                        <a href="SlideshowDemo.aspx"  class="nav-item nav-link active">Contact Us</a>
                        <a href="SlideshowDemo.aspx"  class="nav-item nav-link active">Objective</a>
                      </div>
                        </div>
                      
                    <div class="navbar-nav ml-auto">
                        <a href="RegistrationForm.aspx" class="nav-item nav-link active">Join </a>
                        <a href="LoginForm.aspx" class="nav-item nav-link active">Login</a>
                    </div>
                          </nav>
                 </div>
                  
                 </div>
                    </section>
    <section class="jumbotron">
        <div class="container">
            <div class="row">
                <div class="col-sm-8">
                    <div class="col-sm-12">
                              
                                 <asp:Image ID="img" runat="server" Height="500px" ImageUrl="~/image/5.jpg" Width="900px" ImageAlign="Right" />
                            <div class="row">
                                </div>
                        </div>
                </div>
                <div class="col-sm-4">
                    <form id="form1" runat="server">
        <div id="Register">
            <asp:HiddenField ID="hfUserID" runat="server" />
            <table>
                <tr>
                    <td>
                       <asp:Label Class="lbl" ID="FNLabel" runat="server" Text="FirstName"></asp:Label>
                    </td>
                    <td colspan="2">
                      <asp:TextBox ID="txtFirstName" runat="server" CausesValidation="True"></asp:TextBox>
                    </td>
                    </tr>
                    <tr>
                    <td>
                      <asp:Label Class="lbl" ID="LNLabel" runat="server" Text="LastName"></asp:Label>
                    </td>
                    <td colspan="2">
                      <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
                    </td>
                    </tr>
                    <tr>
                    <td>
                      <asp:Label Class="lbl" ID="ContactLabel" runat="server" Text="Mobile"></asp:Label>
                    </td>
                    <td colspan="2">
                      <asp:TextBox ID="txtcontact" runat="server" TextMode="Phone"></asp:TextBox>
                    </td>
                    </tr>
                    <tr>
                    <td>
                      <asp:Label Class="lbl" ID="Gender" runat="server" Text="Gender"></asp:Label>
                    </td>
                    <td colspan="2">
                      <asp:RadioButtonList ID="rbgender" runat="server">
                         <asp:ListItem>Male</asp:ListItem>
                         <asp:ListItem>Female</asp:ListItem>
                         <asp:ListItem>Unknown</asp:ListItem>
                      </asp:RadioButtonList>
                    </td>
                    </tr>
                    <tr>
                    <td>
                      <asp:Label Class="lbl" ID="AddressLabel" runat="server" Text="Address"></asp:Label>
                    </td>
                    <td colspan="2">
                      <asp:TextBox ID="txtaddress" runat="server" TextMode="MultiLine"></asp:TextBox>
                    </td>
                    </tr>
                    <tr>
                    <td>
                      <asp:Label Class="lbl" ID="UserNameLabel" runat="server" Text="UserName"></asp:Label>
                    </td>
                    <td colspan="2">
                      <asp:TextBox ID="txtusername" runat="server"></asp:TextBox>
                    </td>
                    </tr>
                    <tr>
                    <td>
                      <asp:Label Class="lbl" ID="PasswordLabel" runat="server" Text="Password"></asp:Label>
                      <asp:Label Text="*" runat="server" ForeColor="Red"></asp:Label>
                    </td>
                    <td colspan="2">
                      <asp:TextBox ID="txtpassword" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                    </tr>
                    <tr>
                    <td>
                      <asp:Label Class="lbl" ID="ConfirmPasswordLabel" runat="server" Text="ConfirmPassword"></asp:Label>
                      <asp:Label Text="*" runat="server" ForeColor="Red"></asp:Label>
                    </td>
                    <td colspan="2">
                      <asp:TextBox ID="txtconfirmpassword" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                    </tr>
                <tr>
                    <td>

                    </td>
                    <td colspan="2">
                   <asp:Button ID="btnSave" runat="server" Text="Submit" />
                   
                    <asp:Button ID="btnClear" runat="server" Text="Reset" OnClick="btnClear_Click" />
                    
                    </td>
                    </tr>
                    <tr>
                    <td>

                    </td>
                    <td colspan="2">
                       <asp:Label Class="lbl" text="" ID="lblErrorMessage" runat="server" ForeColor="Red"></asp:Label>
                    </td>
                    </tr>
                    <tr>
                    <td>

                    </td>
                    <td colspan="2">
                         <asp:Label Class="lbl1" Text="" ID="lblSuccessMessage" runat="server" ForeColor="Green"></asp:Label>
                    </td>
                    </tr>
                
        </table>
            
            </div>
                        </form>
               </div>

    </section>
                  </body>

</html>

                   <!--navigation done-->






    