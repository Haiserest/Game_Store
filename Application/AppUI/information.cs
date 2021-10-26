using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using MySql.Data.MySqlClient;

namespace AppUI
{
    public partial class order_Form : Form
    {
        MySqlConnection con = new MySqlConnection("host=localhost;user=root;password=;database=final ");
        MySqlCommand comm,comm2;
        public order_Form()
        {
            InitializeComponent();
        }
        private void open_connection()
        {
            con.Open();
        }

        private void orderForm_Load(object sender, EventArgs e)
        {
            open_connection();
            shipname_comboBox.SelectedIndex = 0;
            comboBox2.SelectedIndex = 0;

            load_shipname_combobox_init();
            load_shiptype_combobox_init();
            load_order_griddata_init();

        }

        private void load_shipname_combobox_init()
        {
            string sql = "SELECT distinct ship_name FROM final.shipping";
            comm = new MySqlCommand(sql, con);

            MySqlDataReader reader = comm.ExecuteReader();
            while (reader.Read())
            {
                shipname_comboBox.Items.Add(reader.GetString("ship_name"));
            }
            reader.Close();
        }

        /// <summary>
        /// private void load_payment_combobox_init()
        /// {
        ///     payment_comboBox.Items.Add("Cash");
        ///     payment_comboBox.Items.Add("Master Card");
        ///     payment_comboBox.Items.Add("Visa");
        ///  }
        /// </summary>    

        private void load_shiptype_combobox_init()
        {
            comboBox2.Items.Add("Register");
            comboBox2.Items.Add("EMS");
        }

        private void load_order_griddata_init()
        {
            string sql = "SELECT number as No,p_name as Product,quantity,price FROM final.tran ";
            comm = new MySqlCommand(sql, con);
            DataSet ds = new DataSet();
            MySqlDataAdapter da = new MySqlDataAdapter(comm);
            da.Fill(ds, "tran");
            order_dataGridView.DataSource = ds.Tables["tran"].DefaultView;
        }
        string imagebill = "";

        private void Browse_button_Click(object sender, EventArgs e)
        {
            OpenFileDialog dialog = new OpenFileDialog();
            dialog.Filter = "All file(*.*)|*.*|PNG files(*.png)|*.png|JPG files(*.jpg)|*.jpg ";
            if(dialog.ShowDialog() == DialogResult.OK)
            {
                imagebill = dialog.FileName.ToString();
                browse_pictureBox.ImageLocation = imagebill;
            }
        }

        private void accept_button_Click(object sender, EventArgs e)
        {
           
            if (checkBox.Checked)
            {
                /// image
                byte[] image = null;
                FileStream stream = new FileStream(imagebill,FileMode.Open,FileAccess.Read);
                BinaryReader brs = new BinaryReader(stream);
                image = brs.ReadBytes((int)stream.Length);

                /// insert procedure
                var name = name_textBox.Text;
                var surname = surname_textBox.Text;
                var email = email_textBox.Text;
                var phone = phone_textBox.Text;
                var address = Address_TextBox.Text;
                var shipname = shipname_comboBox.SelectedIndex;
                var shipping = shipname.ToString();
                var shipt = comboBox2.SelectedIndex;
                var shiptype = shipt.ToString();
                string dob_date = dateTimePicker.Value.ToString("yyyy-MM-dd");

                if (checkBox.Checked)
                {
                    /// insert procedure
                    comm = con.CreateCommand();
                    comm2 = con.CreateCommand();
                    comm.CommandText = @"INSERT INTO `final`.`customer` (`c_id`, `fname`, `sname`, `c_address`, `c_email`, `c_phone`, `c_dob`) 
                        VALUES  (@c_id, @name, @surname, @address, @email, @phone, @dob);
                                    update orders
                                    set order_date = current_date(),
                                    orders.ship_id = @ship_name,
                                    ship_date = curdate()+interval 1 day,
                                    orders.ship_type = @ship_type,
                                    orders.total_price = @t,
                                    orders.bill = @image
                                    where order_id = order_id();";
                    
                    comm.Parameters.AddWithValue("@c_id", null);
                    comm.Parameters.AddWithValue("@name", name);
                    comm.Parameters.AddWithValue("@surname", surname);
                    comm.Parameters.AddWithValue("@address", address);
                    comm.Parameters.AddWithValue("@email", email);
                    comm.Parameters.AddWithValue("@phone", phone);
                    comm.Parameters.AddWithValue("@dob", dob_date);
                    comm.Parameters.AddWithValue("@ship_name", shipping);
                    comm.Parameters.AddWithValue("@ship_type", shiptype);
                    comm.Parameters.AddWithValue("@t", null);
                    comm.Parameters.AddWithValue("@image", image);

                    try
                    {
                        int rowsAffected = comm.ExecuteNonQuery();
                        MessageBox.Show("Save Data Completed!");
                        show_Form F = new show_Form();
                        F.ShowDialog();
                    }
                    catch (Exception ex)
                    {
                        MessageBox.Show(ex.Message);
                    }
                }
            }
            else
            {
                MessageBox.Show("Please select All informations are corrects before accept");
            }
        }



    }
}









