using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Humanizer;

namespace ACLTestProject
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            NumberBoxLabel.Text = "Enter a number";

            if (IsPostBack)
            {
                int NumberBoxNumber = 0;
                bool NumberBoxNumberNumeric = int.TryParse(NumberBoxLabel.Text, out NumberBoxNumber);
                if (NumberBoxNumberNumeric)
                {
                    NumberBoxLabel.Text = NumberToWordsExtension.ToWords(NumberBoxNumber);
                }
            } 
        }
    }
}