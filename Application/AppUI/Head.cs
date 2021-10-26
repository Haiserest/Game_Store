using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using MySql.Data.MySqlClient;

namespace AppUI
{
    public partial class Form1 : Form
    {

        public Form1()
        {
            InitializeComponent();
            customdesign();
        }

        private void customdesign()
        {
            submenu.Visible = false;
        }

        private void hidepanel()
        {
            if (submenu.Visible == true)
                submenu.Visible = false;
        }
        private void showpanel(Panel subMenu)
        {
            if (subMenu.Visible == false)
            {
                hidepanel();
                subMenu.Visible = true;
            }
            else
                subMenu.Visible = false;      
        }

        private void store_button_Click_1(object sender, EventArgs e)
        {
            openchildForm(new store_Form());
            showpanel(submenu);
        }

        private void acc_button_Click_1(object sender, EventArgs e)
        {
            openchildForm(new acc_Form());
            
        }

        private void game_button_Click_1(object sender, EventArgs e)
        {
            openchildForm(new game_Form()); 
        }

        private Form activeForm = null;
        private void openchildForm(Form childform)
        {
            if (activeForm != null)
                activeForm.Close();
            activeForm = childform;
            childform.TopLevel = false;
            childform.FormBorderStyle = FormBorderStyle.None;
            childform.Dock = DockStyle.Fill;
            panelchildform.Controls.Add(childform);
            panelchildform.Tag = childform;
            childform.BringToFront();
            childform.Show();
        }

        private void home_button_Click(object sender, EventArgs e)
        {
            openchildForm(new home_Form());
            hidepanel();
        }

        private void cart_button_Click(object sender, EventArgs e)
        {
            openchildForm(new dataForm());
            hidepanel();
        }

        private void pay_button_Click(object sender, EventArgs e)
        {
            openchildForm(new order_Form());
            hidepanel();
        }

        private void pictureBox1_Click(object sender, EventArgs e)
        {
            openchildForm(new call_Form());
            hidepanel();
        }

        private void check_button_Click(object sender, EventArgs e)
        {
            openchildForm(new Status_Form());
            hidepanel();
        }

       
    }
}
