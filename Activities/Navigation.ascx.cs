using System;

namespace Activities
{
    public partial class Navigation : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //Init
                {
                    HideLogoutNavigationMenu();
                    HideNewAccountNavigationMenu();
                }

                bool isActiveUser = SessionHelper.CheckActiveUser();

                //Sisteme giriş yapan hiç bir kullanıcı yok ise ;
                if (!isActiveUser)
                {
                    //Menu'den yönetim ile ilgili yönlendirmeleri gizliyoruz.
                    HideManagementNavigationMenu();
                }
                else
                {
                    //Sisteme giriş yapan herhangi bir kullanıcı var ise "Çıkış Yap" menüsünü aktif hale getiriyoruz.
                    ShowLogoutNavigationMenu();

                    //Sisteme giriş yapmış herhangi bir kullanıcı var ise;
                    HideLoginNavigationMenu(); // Login yap menu yönlendirmesini gizliyoruz.

                    //Sisteme giriş yapmış herhangi bir kullanıcı eğer Admin değilse;
                    var isAdmin = SessionHelper.CheckAdmin();

                    if (!isAdmin)
                    {
                        //Menu'den yönetim ile ilgili yönlendirmeleri gizliyoruz.
                        HideManagementNavigationMenu();
                    }
                    else
                    {
                        ShowNewAccountNavigationMenu();
                    }
                }
            }
        }

        void HideLoginNavigationMenu()
        {
            li_login.Visible = false;
        }

        void HideManagementNavigationMenu()
        {
            li_activitiesManagement.Visible = false;
        }

        void ShowLogoutNavigationMenu()
        {
            li_logout.Visible = true;
        }

        void HideLogoutNavigationMenu()
        {
            li_logout.Visible = false;
        }

        void HideNewAccountNavigationMenu()
        {
            li_newAccount.Visible = false;
        }

        void ShowNewAccountNavigationMenu()
        {
            li_newAccount.Visible = true;
        }
    }
}
