<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="EOWwebpage.ContactUs" %>

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
                  <div class="col-sm-12">
                 <nav class="navbar navbar-expand-md navbar-light bg-light">
                    <a href="#" class="navbar-brand">EOW</a>
                    <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollalpse">
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
              <a href="LoginForm.aspx" class="nav-item nav-link active">Login</a>
          </div>
           </nav>       
                      </div>
           </div>

           </div>
                 
       </section>
    <form id="form1" runat="server">
    <section class="jumbotron">
        <div class="container-fluid">
            <div class="row">
                <div class="col-sm-4">

                </div>
                <div class="col-sm-4">
  
                      <div style="font-family: Arial">

            <fieldset>
                <legend>Contact Us</legend>
                <table>
                    <tr class="form-group">
                        <td>
                            <b>Name:</b>
                       </td>
                        <td>
                            <asp:TextBox ID="txtName" Width="200px" runat="server"></asp:TextBox>
                         </td>
                        <td>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                                ErrorMessage="Name is Required"
                                ControlToValidate="txtName" Text="*"
                                ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <b>Email:</b>
                        </td>
                        <td>
                            <asp:TextBox ID="txtEmail" Width="200px" runat="server"></asp:TextBox>
                           </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                                ErrorMessage="please Enter the Email is Required"
                                ControlToValidate="txtEmail" Text="*" Display="Dynamic"
                                ForeColor="Red"></asp:RequiredFieldValidator>

                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1"
                                runat="server"
                                ErrorMessage="Please Enter A Valid Email"
                                ControlToValidate="txtEmail" ForeColor="Red"
                                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr class="form-group">
                        <td>
                            <b>Subject:</b>
                        </td>
                        <td>
                        <asp:TextBox ID="txtSubject" Width="200px" runat="server"></asp:TextBox>
                            
                             </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                                ErrorMessage="Subject is Required"
                                ControlToValidate="txtSubject" Text="*"
                                ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr class="form-group">
                        <td style="vertical-align: top">
                            <b>Comments:</b>
                        </td>
                        <td style="vertical-align:top">
                            <asp:TextBox ID="txtComments" Width="200px" runat="server" Rows="6" TextMode="MultiLine"></asp:TextBox>
                        </td>
                        <td style="vertical-align:top">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
                                ErrorMessage="Comments are Required"
                                ControlToValidate="txtComments" Text="*"
                                ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr class="form-group">
                        <td colspan="3">
                            <asp:ValidationSummary ID="ValidationSummary1" runat="server"
                                ForeColor="Red" HeaderText="Please Fix The Following Errors" />
                        </td>
                    </tr>
                    <tr class="form-group">
                        <td colspan="3">
                            <asp:Label ID="Label1" runat="server" Font-Bold="true"></asp:Label>
                        </td>
                    </tr>
                    <tr class="form-group">
                        <td colspan="3">
                            <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
                        </td>
                    </tr>
                </table>
            </fieldset>
        </div>
                     </div>
        </div>
            </div>
        <div class="col-sm-4">

        </div>
       </section>
         <section class="jumbotron">
          
        <footer class="container">
            <div class="row">
                <p class="col-sm-12 text-center">&copy: 2020 Contact Us for any Query</p>
            </div>
            </footer>
          </section>
        
    </form>
                    
           
</body>
</html>
