using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(SwietnyProjektNaGitHubie.Startup))]
namespace SwietnyProjektNaGitHubie
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
