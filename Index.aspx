<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="EOWwebpage.Index" %>

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
    <form runat="server">
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
                 <div class="container-fluid">
                      <div class="row">
                          <div class="col-sm-12 justify-content-ends">
                              <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                              <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                  <ContentTemplate><asp:Timer ID="Timer1" runat="server" Interval="2000" OnTick="Timer1_Tick"></asp:Timer>
                              <asp:Image ID="Image1" runat="server" Height="500px" Width="800px" ImageAlign="Right" />
                                  </ContentTemplate>
                              </asp:UpdatePanel>
                              
                         
                                <p class="lead"> We are an association on behalf of over 6000 property buyers, who have been seriously victimized by Cosmic Structures Limited, an NCR based real estate developer, having registered office at 4A/51, Old Rajender Nagar, New Delhi and after changing many addresses as their Corporate office including 9th Floor, Hotel Le Meridian, New Delhi they are now operating from Plot No. 5, Sector-140, Noida-201301 (U.P). This is a serious fraud to the tune of Rs.1100 Crs. and involve more than 6000 aggrieved customers, whose money is duped by the said builder.

The builder had launched 6-7 projects (all commercial except one residential project) across Noida, Greater Noida and Gurgaon in the period 2011-12. The builder had also promised Assured Returns at the rate of 12.5% per annum until possession. After inducing hundreds of property buyers, taking advance payment up to 75-100% in most cases, the builder stopped construction in most of the projects. The maximum construction at its first two projects viz. Cosmic Corporate Park I at Yamuna Expressway and Cosmic Corporate Park II at Sector 140, Noida, is not even close to 15%.</p>
                              </div> 
                            
                        
                       </div>
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
