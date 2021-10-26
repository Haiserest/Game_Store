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
    public partial class dataForm : Form
    {
        MySqlConnection con = new MySqlConnection("host=localhost;user=root;password=;database=final ");
        MySqlCommand comm,comm2;
        public dataForm()
        {
            InitializeComponent();
        }

        private void open_connection()
        {
            con.Open();
        }

        private void dataForm_Load(object sender, EventArgs e)
        {
            open_connection();
            num_comboBox.SelectedIndex = 0;
            load_cart_griddata_init();
            load_num_combobox_init();
        }
      
        private void load_cart_griddata_init()
        {
            string sql = "SELECT number as No,p_name as Product,quantity,price FROM final.tran;";
            
            comm = new MySqlCommand(sql, con);
            DataSet ds = new DataSet();
            MySqlDataAdapter da = new MySqlDataAdapter(comm);
            da.Fill(ds, "tran");
            cart_dataGridView.DataSource = ds.Tables["tran"].DefaultView;
        }

        private void load_num_combobox_init()
        {
            num_comboBox.Items.Add(1);
            num_comboBox.Items.Add(2);
            num_comboBox.Items.Add(3);
            num_comboBox.Items.Add(4);
        }

        private void cart_dataGridView_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            if (cart_dataGridView.SelectedRows.Count > 0) // make sure user select at least 1 row 
            {
                string no = cart_dataGridView.SelectedRows[0].Cells[0].Value.ToString();
                string product = cart_dataGridView.SelectedRows[0].Cells[1].Value.ToString();
                string quantity = cart_dataGridView.SelectedRows[0].Cells[2].Value.ToString();
                string price = cart_dataGridView.SelectedRows[0].Cells[3].Value.ToString();


                product_textBox.Text = product;
                if (quantity != "")
                {
                    num_comboBox.SelectedIndex = int.Parse(quantity);
                }
                
            }
        }

        private void clear_data()
        {
            product_textBox.Text = "";
            num_comboBox.SelectedIndex = 0;
        }

        private void update_button_Click(object sender, EventArgs e)

        {
            con.Close();
            open_connection();
            var name = product_textBox.Text;
            var quantity = num_comboBox.SelectedIndex;
            if (quantity == 0)
            {
                MessageBox.Show("Select Quantity Again!");
            }
            else
            {
                 comm = con.CreateCommand();
                comm.CommandText = " checkup";
                comm.CommandType = CommandType.StoredProcedure;
                comm.Parameters.AddWithValue("@n", name);
                comm.Parameters.AddWithValue("@q", quantity);
                var x = comm.Parameters.Add("@check_", MySqlDbType.VarChar, 45);
                x.Direction = ParameterDirection.Output;
                int i = comm.ExecuteNonQuery();
               var check = "";
                check = Convert.ToString(comm.Parameters["@check_"].Value);
                if (check == "stock not enough")
                {
                    MessageBox.Show(check);
                }
                /*try
                    {
                       int rowsAffected = comm.ExecuteNonQuery();
                       // MessageBox.Show("Update Data Completed!");

                    }
                    catch (Exception ex)
                    {
                        MessageBox.Show(ex.Message);
                    }*/
                    load_cart_griddata_init();
                    clear_data();
            }
            
        }

        

        private void button1_Click(object sender, EventArgs e)
            
        {
            con.Close();
            con.Open();
            string cmd = "SELECT sum_price()";
            comm = new MySqlCommand(cmd, con);
            MySqlDataReader da = comm.ExecuteReader(0);
            while (da.Read())
            {
                totalprice.Text = da.GetValue(0).ToString();
            }
            con.Close();
        }

        private void deleteallclick(object sender, EventArgs e)
        {
            con.Close();
            con.Open();
            MySqlCommand comm = new MySqlCommand();
            comm.Connection = con;
            comm.CommandText = "DELETE FROM tran;";
           
            try
            {
                int rowsAffected = comm.ExecuteNonQuery();
                

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
          
            load_cart_griddata_init();
        }

        private void delete_button_Click(object sender, EventArgs e)

        {
            con.Close();
            con.Open();
            var name = product_textBox.Text;

            comm = con.CreateCommand();
      
            comm.CommandText = @"DELETE FROM  `final`.`tran`
                WHERE `p_name` = @product;call forrenum()";
            comm.Parameters.AddWithValue("@product", name);

            try
            {
                int rowsAffected = comm.ExecuteNonQuery();
               // MessageBox.Show("Delete Data Completed!");

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
           
            load_cart_griddata_init();
            clear_data();
        }

    }
}
