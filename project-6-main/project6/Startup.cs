using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(project6.Startup))]
namespace project6
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
