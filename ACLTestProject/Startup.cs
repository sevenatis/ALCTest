using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(ACLTestProject.Startup))]
namespace ACLTestProject
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
