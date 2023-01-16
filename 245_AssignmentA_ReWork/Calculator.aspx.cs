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

        protected void Page_PreInit(object sender, EventArgs e)
        {
            HttpCookie c = Request.Cookies.Get("Set-Theme"); //get a cookie by name.
            if (c != null) //and if it isn't null
                Page.Theme = c.Value; //set theme on startup.
            string s = "~/App_Themes/" + Page.Theme + "/fg.png"; //set string to foreground pic.
            picFG.ImageUrl = s; //set foreground pic url to string.
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            txtDisplay.Style["Text-Align"] = "right"; //right align style
            if (!IsPostBack)
            {
                txtDisplay.Text = "0"; /*set to 0 on first load*/
                txtDisplay.Enabled = false;
                DropDownList1.Items.Add("Dracula");
                DropDownList1.Items.Add("GruvBox");
                DropDownList1.Items.Add("PowerLine");
                HttpCookie c = Request.Cookies.Get("Set-Theme"); //get a cookie by name.
                if (c != null) //and if it isn't null
                {
                    if (DropDownList1.Items.FindByValue(c.Value) != null) //if the value, found, is not null in the dropdown.
                    {
                        DropDownList1.Items.FindByValue(c.Value).Selected = true; //then select that value from dropdown.
                    }
                }
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
            switch (Application["Operator"]) //switch on button pressed.
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
                    if (txtDisplay.Text != "0")
                        txtDisplay.Text = (Convert.ToDecimal(Application["X"]) / Convert.ToDecimal(txtDisplay.Text)).ToString();
                    else txtDisplay.Text = "0";
                    Application["Operator"] = null;
                    break;
                case "*":
                    txtDisplay.Text = (Convert.ToDecimal(Application["X"]) * Convert.ToDecimal(txtDisplay.Text)).ToString();
                    Application["Operator"] = null;
                    break;
                case "=":
                    Application["Operator"] = null;
                    break;
                default:
                    Application["X"] = txtDisplay.Text; //make var X the text.
                    Application["Operator"] = ((Button)sender).Text;
                    txtDisplay.Text = "0";
                    break;
            }
        }
        protected void btnPoint_Click(object sender, EventArgs e)
        {
            txtDisplay.Text = txtDisplay.Text.Contains(".") ? txtDisplay.Text = txtDisplay.Text : txtDisplay.Text += ".";
        }

        protected void DropDownList1_SelectedIndexChanged1(object sender, EventArgs e)
        {
            HttpCookie c = new HttpCookie("Set-Theme"); //create new cookie with unique name.
            c.Expires = DateTime.Now.AddMonths(1); //new cookie expiry date will be one month from creation.
            c.Value = DropDownList1.SelectedValue; //get the cookie value from the selected item.
            Response.Cookies.Add(c); //add newly created cookies to...cookies...
            Response.Redirect(Request.Url.ToString()); //whatever current url is, jump to it, to force cookie load.
        }
    }
}