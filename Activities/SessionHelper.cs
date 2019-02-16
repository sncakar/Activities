using System.Web;

namespace Activities
{
    public static class SessionHelper
    {
        public static bool CheckActiveUser()
        {
            return HttpContext.Current.Session[UserTypeEnum.Manager.ToString()] != null || HttpContext.Current.Session[UserTypeEnum.Member.ToString()] != null;
        }

        public static bool CheckAdmin()
        {
            return HttpContext.Current.Session[UserTypeEnum.Manager.ToString()] != null;
        }

        public static bool CheckMember()
        {
            return HttpContext.Current.Session[UserTypeEnum.Member.ToString()] != null;
        }

        public static void SetAdmin(int id)
        {
            HttpContext.Current.Session[UserTypeEnum.Manager.ToString()] = id;
        }

        public static void SetMember(int id)
        {
            HttpContext.Current.Session[UserTypeEnum.Member.ToString()] = id;
        }

        public static void Kill()
        {
            HttpContext.Current.Session.Abandon();
        }

        public static int GetAdmin()
        {
            return (int)HttpContext.Current.Session[UserTypeEnum.Manager.ToString()];
        }
    }
}