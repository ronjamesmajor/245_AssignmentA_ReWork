using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _245_AssignmentA_ReWork
{
    public partial class Calculator : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txtDisplay.Style["Text-Align"] = "right"; //right align style
            if (!IsPostBack)
            {
                //set to 0 on first load.
                txtDisplay.Text = "0";
                txtDisplay.Enabled = false; //don't allow typing.
            }
            else
            {
                //do something.
            }
        }

        protected void btn0_Click(object sender, EventArgs e)
        {
            txtDisplay.Text = txtDisplay.Text == "0" ? txtDisplay.Text = ((Button)sender).Text : txtDisplay.Text += ((Button)sender).Text;
        }

        protected void btnC_Click(object sender, EventArgs e)
        {
            txtDisplay.Text = "0";
            Application["X"] = 0;
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            decimal tmpA, tmp;
            switch (Application["Operator"])
            {
                case "+":
                    txtDisplay.Text = (Convert.ToDecimal(Application["X"]) + Convert.ToDecimal(txtDisplay.Text)).ToString();
                    Application["Operator"] = null;
                    break;
                case "-":
                    txtDisplay.Text = (Convert.ToDecimal(Application["X"]) - Convert.ToDecimal(txtDisplay.Text)).ToString();
                    Application["Operator"] = null;
                    break;
                case "/":
                    break;
                case "*":
                    break;
                case "=":
                    break;
                default:
                    Application["X"] = txtDisplay.Text; //make var X the text.
                    Application["Operator"] = ((Button)sender).Text;
                    txtDisplay.Text = "0";
                    break;
            }

        }
    }
}
