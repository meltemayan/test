<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="cal_dnm.aspx.cs" Inherits="cal_dnm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="Server">

    <link rel="stylesheet" href="css\bootstrap.css">
    <link rel="stylesheet" href="css\bootstrap.min.css">
    <link rel="stylesheet" href="css\style.css">
    <link rel="stylesheet" href="css\font-awesome.min.css">
    <link rel="stylesheet" href="css\bootstrap-social.css">
    <link rel="stylesheet" href="css/style.css">

    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.37/js/bootstrap-datetimepicker.min.js"></script>




    <script src="js\jquery.min.js"></script>
    <script src="js\bootstrap.min.js"></script>
    <script src="js\jquery-3.1.0.min.js"></script>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.37/css/bootstrap-datetimepicker.css">

     <script type="text/javascript">
     $(function () 
    {
         //$('#datetimepicker1').datetimepicker({ format: 'DD/MM/YYYY' });
         $("#datepicker").datepicker(
		    {
		        
		        format: 'dd-mm-yyyy'
		    });
     });
 </script>


    
     <div class="form-group">
        <%-- <div class="input-group date" id="datetimepicker1">
              <input type='text' class="form-control" placeholder="Issue Date"/>
                    <span class="input-group-addon">
                          <span class="glyphicon glyphicon-calendar"></span>
                    </span>
          </div>--%>
     

    <div class="input-append date" id="datepicker" data-date="02-2012" 
         data-date-format="dd-mm-yyyy">

	 <input  type="text" readonly="readonly" name="date" >	  
	 <span class="add-on"><i class="icon-th"></i></span>	  
    </div>	
</div>
</asp:Content>

