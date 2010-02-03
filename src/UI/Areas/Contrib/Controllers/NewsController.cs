using System;
using System.Linq;
using System.Web.Mvc;
using Argotic.Syndication;
using MvcContrib;
using MvcContrib.PortableAreas;

namespace UI.Areas.Contrib.Controllers
{
    public class NewsController : Controller
    {
        public ViewResult Index()
        {
            var query = new CurrentUserGroupQuery();
            Bus.Send(query);
            UserGroupInfo info = query.Result;
            string feedUrl = GetNewsFeed("");
            RssFeed feed = RssFeed.Create(new Uri(feedUrl));
            RssItem[] items = feed.Channel.Items.ToArray();
            return View(items);
        }

        private string GetNewsFeed(string remoteId)
        {
            //look up feed for this group
            return "http://feeds.jeffreypalermo.com/jeffreypalermo";
        }
    }

    public class CurrentUserGroupQuery : IQueryMessage<UserGroupInfo>
    {
        public UserGroupInfo Result { get; set; }
    }

    public class UserGroupInfo
    {
        public string RemoteId { get; set; }
        public string Name { get; set; }
    }
}