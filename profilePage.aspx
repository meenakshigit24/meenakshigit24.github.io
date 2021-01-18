<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="profilePage.aspx.cs" Inherits="EOWwebpage.profilePage" %>

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
         <section class="jumbotron">
                    <div class="container-fluid">
         
        <header class="container-fluid">
            <h1 class="col-md-12 text-center">Buyers Details For EOW Cases</h1>
                <div class="row align-content-center heading col-lg-12">
               
                <h3 class="col-md-12 text-center">(AIRWIL's Green Avenue Buyers Details)</h3>
                   
            </div>
          </header>
         
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
                        <a href="#"  class="nav-item nav-link active">Contact Us</a>
                        <a href="#"  class="nav-item nav-link active">Objective</a>
                      </div>
                        </div>
                      
                    <div class="navbar-nav ml-auto">
                        <asp:Label ID="lbluserdetails" runat="server" Text=""></asp:Label>
                        <asp:Button ID="Button1" runat="server" Text="Logout" />
                    </div>
                 </nav>         
                 </div>
                </div>
            
       
                 <div class="container-fluid">
                     <div class="row">
                         <div class="col-sm-12">
                             <a href="DetailForm.aspx">Kindly fill in your details</a><br />
                             </div>
                     </div>
                 </div>
                 
             </section>
            
    </form>
</body>
</html>
