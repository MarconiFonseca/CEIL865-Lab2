using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
public partial class WebForm1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string[] indication = { " ","Friend", "Internet", "Advertisement", "Other" };
            foreach (string src in indication)
                Indication.Items.Add(src);
            string[] province = { "Choose the Province", "Ontario", "British Columbia", "Quebec", "Alberta", "Nova Scotia", "Saskatchewan", "Newfoundland and Labrador", "Manitoba", "New Brunswick", "Prince Edward Island" };
            foreach (string prov in province)
                Province.Items.Add(prov);
        }
    }

    protected void OnSubmit_Click(object sender, EventArgs e)
    {
        Listbox.Visible = true;
        Listbox.Items.Add("Name : " + Name.Value);
        Listbox.Items.Add("Email : " + Email.Value);
        Listbox.Items.Add("Address : " + Address.Value);
        Listbox.Items.Add("City : " + City.Value);
        Listbox.Items.Add("Province : " + Province.Value);
        Listbox.Items.Add("Postal Code : " + PostalCode.Value);
        Listbox.Items.Add("Phone : " + Phone.Value);
        Listbox.Items.Add("Comment : " + Comment.Value);
        Listbox.Items.Add("How did you hear about us : " + Indication.Value);
    }

    protected void OnClearBtn_Click(object sender, EventArgs e)
    {
        Comment.Value = "";
        Indication.SelectedIndex = 0;
        Name.Value = "";
        Email.Value = "";
        Address.Value = "";
        City.Value = "";
        Province.SelectedIndex = 0;
        PostalCode.Value = "";
        Phone.Value = "";
    }
}