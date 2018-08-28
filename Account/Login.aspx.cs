using Microsoft.AspNet.Identity;
using Microsoft.Owin.Security;
using System;
using System.Linq;
using System.Web;
using System.Web.UI;
using WebSite6;
using System.Configuration;
using System.Data;
using System.Data.SQLite;

public partial class Account_Login : Page
{
        protected void Page_Load(object sender, EventArgs e)
        {
            //RegisterHyperLink.NavigateUrl = "Register";
            //OpenAuthLogin.ReturnUrl = Request.QueryString["ReturnUrl"];
            //var returnUrl = HttpUtility.UrlEncode(Request.QueryString["ReturnUrl"]);
            //if (!String.IsNullOrEmpty(returnUrl))
            //{
            //    RegisterHyperLink.NavigateUrl += "?ReturnUrl=" + returnUrl;
            //}
            
        }

        protected void LogIn(object sender, EventArgs e)
        {
        string kad, ksifre;
        kad = UserName.Text;
        ksifre = Password.Text;
        SQLiteConnection baglanti = new SQLiteConnection(@"Data Source=C:\Users\mayan\Documents\Visual Studio 2015\WebSites\WebSite6\App_Data\test.s3db");
        SQLiteCommand komut = new SQLiteCommand();
        

        //SQLitedan sorgu
        string sorgu = "select * from uye where name='" + UserName.Text + "' and parola='" + Password.Text + "'";
        komut = new SQLiteCommand(sorgu, baglanti);
        komut.Parameters.AddWithValue("@kad", kad);
        komut.Parameters.AddWithValue("@ksifre", ksifre);

        baglanti.Open();
        SQLiteDataReader oku = komut.ExecuteReader();
        if (oku.Read())
        {
            Session.Add("uye", kad);
            Response.Redirect("Manage.aspx");
        }
        //else
        //{
        //    txtLabel.Text = "Giriş Başarısız";
        //}


        if (IsValid)
            {

                // Validate the user password
                var manager = new UserManager();
                ApplicationUser user = manager.Find(UserName.Text, Password.Text);
                if (user != null)
                {
                    IdentityHelper.SignIn(manager, user, RememberMe.Checked);
                    IdentityHelper.RedirectToReturnUrl(Request.QueryString["ReturnUrl"], Response);
                }
                else
                {
                    FailureText.Text = "Invalid username or password.";
                    ErrorMessage.Visible = true;
                }
            }
        baglanti.Close();
    }
}