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
    public partial class show_Form : Form
    {
        MySqlConnection con = new MySqlConnection("host=localhost;user=root;password=;database=final ");
        MySqlCommand comm;
        public show_Form()
        {
            InitializeComponent();
        }

        private void open_connection()
        {
            con.Open();
        }


        private void show_Form_Load(object sender, EventArgs e)
        {
            open_connection();
            load_show_griddata_init();
        }

        private void load_show_griddata_init()
        {
            // show only insert trigger
            string sql = "SELECT `p_name` as product, `quantity`,`price`,`date` from all_purchases2 where order_id = order_id(); ";
            comm = new MySqlCommand(sql, con);
            DataSet ds = new DataSet();
            MySqlDataAdapter da = new MySqlDataAdapter(comm);
            da.Fill(ds, "all_purchases2");
            show_dataGridView.DataSource = ds.Tables["all_purchases2"].DefaultView;
        }

    }
}
