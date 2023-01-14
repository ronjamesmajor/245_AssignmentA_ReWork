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
            if (!IsPostBack){txtDisplay.Text = "0"; /*set to 0 on first load*/txtDisplay.Enabled = false;}}

        protected void btn0_Click(object sender, EventArgs e)
        {
            txtDisplay.Text = txtDisplay.Text == "0" ? txtDisplay.Text = ((Button)sender).Text : txtDisplay.Text += ((Button)sender).Text;
        }

        protected void btnC_Click(object sender, EventArgs e)
        {txtDisplay.Text = "0";
            Application["X"] = 0;}
        

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
            }}
        protected void btnPoint_Click(object sender, EventArgs e)
        {txtDisplay.Text = txtDisplay.Text.Contains(".") ? txtDisplay.Text = txtDisplay.Text : txtDisplay.Text += ".";
        } } }