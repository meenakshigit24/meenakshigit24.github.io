<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginForm.aspx.cs" Inherits="EOWwebpage.LoginForm" %>

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
    <form id="form1" runat="server">
    <header class="container-fluid">
            <div class="row align-content-center heading">
               
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
                     
                        <a href="Contact.aspx"  class="nav-item nav-link active">Contact Us</a>
                        <a href="Objective.aspx"  class="nav-item nav-link active">Objective</a>
                      </div>
                        </div>
                      
                    <div class="navbar-nav ml-auto">
                        
                        <a href="LoginForm.aspx" class="nav-item nav-link active">Login</a>
                    </div>
                          
                          </nav>
                            
                 </div>
                  
                 </div>
                    </section>
                        <section class="jumbotron">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-sm-12" ></div>
                            <table>
                                 <tr>
                                     <td>
                                         <asp:Label id ="lblusername" runat="server" Text="User Name"></asp:Label>
                                     </td>
                                     <td colspan="2">
                                         <asp:TextBox  runat="server" ID="txtusername"></asp:TextBox>
                                     </td>
                                 </tr>
                                <tr>
                                     <td>
                                         <asp:Label runat="server" Text="Password" ID="lblpassword"></asp:Label>
                                     </td>
                                     <td colspan="2">
                                         <asp:TextBox TextMode="Password" runat="server" ID="txtpassword"></asp:TextBox>
                                     </td>
                                 </tr>
                                <tr>
                                     <td>
                                         
                                        
                                     </td>
                                     <td colspan="2">
                                         <asp:Button ID="btnlogin" runat="server" Text="Login" OnClick="btnlogin_Click"/>
                                     </td>
                                 </tr>
                                <tr>
                                    <td colspan="2">
                                        <a href="RegistrationForm.aspx"><asp:Label ID="Label1" runat="server" Text="If Not Registered......Please click Here "></asp:Label></a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>


                                    </td>
                                    <td>
                                        <asp:Label ID="lblerrormessage" runat="server" Text="Incorrect User Credentials" ForeColor="Red"></asp:Label>
                                    </td>
                                </tr>
                            </table>
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
                        <a href="Index.aspx" class="nav-item nav-link active">Core Members</a>
                        <a href="SlideshowDemo.aspx"  class="nav-item nav-link active">MileStones</a>
                     
                        <a href="SlideshowDemo.aspx"  class="nav-item nav-link active">Documents</a>
                        <a href="SlideshowDemo.aspx"  class="nav-item nav-link active">Objective</a>
                      </div>
                        </div>
                     </nav>
                            
                 </div>
                  
                 </div>
        <footer class="container">
            <div class="row">
                <p class="col-sm-12 text-center">@Contact Us of any Query</p>
            </div>
            </footer>
          </section>
      
        </form>
    </body>
    </html>
                   


