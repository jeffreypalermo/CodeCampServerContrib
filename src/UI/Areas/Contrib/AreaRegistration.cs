using System.Web.Mvc;

namespace UI.Areas.Contrib
{
    public class ContribAreaRegistration : AreaRegistration
    {
        public override string AreaName
        {
            get
            {
                return "Contrib";
            }
        }

        public override void RegisterArea(AreaRegistrationContext context)
        {
            context.MapRoute(
                "Contrib_default",
                "Contrib/{controller}/{action}/{id}",
                new { action = "Index", id = "" }
            );
        }
    }
}
