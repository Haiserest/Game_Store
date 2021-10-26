using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using MySql.Data.MySqlClient;

namespace AppUI
{
    public partial class Status_Form : Form
    {
        MySqlConnection con = new MySqlConnection("host=localhost;user=root;password=;database=final ");
        MySqlCommand comm;
        public Status_Form()
        {
            InitializeComponent();
        }

        private void open_connection()
        {
            con.Open();
        }

        private void StatusForm_Load(object sender, EventArgs e)
        {
            open_connection();
            ////  load_status_griddata_init();
        }

        private void load_status_griddata_init(string ctext)
        {
            string sql = ctext;
            comm = new MySqlCommand(sql, con);
            DataSet ds = new DataSet();
            MySqlDataAdapter da = new MySqlDataAdapter(comm);
            var name = name_textBox.Text;
            var surname = surname_textBox.Text;
            comm.Parameters.AddWithValue("@name", name);
            comm.Parameters.AddWithValue("@surname", surname);
            da.Fill(ds, "orders");
            status_dataGridView.DataSource = ds.Tables["orders"].DefaultView;
        }

        private void button1_Click(object sender, EventArgs e)
        {
            var name = name_textBox.Text;
            var surname = surname_textBox.Text;
            var email = email_textBox.Text;
            var phone = phone_textBox.Text;

            comm = con.CreateCommand();
            comm.CommandText = " historyorder";
            comm.CommandType = CommandType.StoredProcedure;
            comm.Parameters.AddWithValue("@f_name", name);
            comm.Parameters.AddWithValue("@s_name", surname);
            comm.Parameters.AddWithValue("@email", email);
            comm.Parameters.AddWithValue("@phone", phone);
            var x = comm.Parameters.Add("@message", MySqlDbType.VarChar, 45);
            x.Direction = ParameterDirection.Output;
            //comm.Parameters.Add("@message");
            DataSet ds = new DataSet();
            MySqlDataAdapter da = new MySqlDataAdapter(comm);
            da.Fill(ds, "historyorder");
            status_dataGridView.DataSource = ds.Tables["historyorder"].DefaultView;
            /*string ctext = "Select * FROM  `final`.`orders`" +
                "WHERE `c_id` = (select c_id from customer where fname = @name and sname = @surname )";
            comm.Parameters.AddWithValue("@name", name);
            comm.Parameters.AddWithValue("@surname", surname);*/
            string status = "";
          

                try
                {
                    int i=comm.ExecuteNonQuery();
                   status = Convert.ToString(comm.Parameters["@message"].Value);
                  if(status == "found")
                {
                    MessageBox.Show(status);
                }
                else
                {
                    MessageBox.Show(status);
                }
                    //int rowsAffected = comm.ExecuteNonQuery();
                    // MessageBox.Show("Select Data Completed!");
                

                }
                catch (Exception ex)
                   {
                    MessageBox.Show(ex.Message);
                   }

                // load_status_griddata_init(ctext);
            }
        
        }
    }