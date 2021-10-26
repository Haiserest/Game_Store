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
    public partial class store_Form : Form
    {
        MySqlConnection con = new MySqlConnection("host=localhost;user=root;password=;database=final");
        
        public store_Form()
        {
            InitializeComponent();
        }

        private void store_Form_Load(object sender, EventArgs e)
        {
            load_set_comboBox();
        }

        private void load_set_comboBox()
        {
            comboBox1.SelectedIndex = 0;
            comboBox2.SelectedIndex = 0;
            comboBox3.SelectedIndex = 0;
            comboBox4.SelectedIndex = 0;
            comboBox5.SelectedIndex = 0;
            comboBox6.SelectedIndex = 0;
            comboBox7.SelectedIndex = 0;
            comboBox8.SelectedIndex = 0;
            comboBox9.SelectedIndex = 0;
            comboBox10.SelectedIndex = 0;
            comboBox11.SelectedIndex = 0;
            comboBox12.SelectedIndex = 0;
            comboBox13.SelectedIndex = 0;
            comboBox14.SelectedIndex = 0;
            comboBox15.SelectedIndex = 0;
            comboBox16.SelectedIndex = 0;
        }


        private Boolean checkstock(int id)
        {
            Boolean ch = true;
            
            MySqlCommand comm = new MySqlCommand();
            comm = con.CreateCommand();
            comm.CommandText = " checkstock";
            comm.CommandType = CommandType.StoredProcedure;
            comm.Parameters.AddWithValue("@pid", id);
            var x = comm.Parameters.Add("@num", MySqlDbType.VarChar, 45);
            x.Direction = ParameterDirection.Output;
            int i = comm.ExecuteNonQuery();
            int check = 0;
            check = Convert.ToInt32(comm.Parameters["@num"].Value);
            if (check == 0)
            {
                ch = false;
            }
            return ch;
        }
        private void button1_Click(object sender, EventArgs e)
        {
            //  Animal Crossing    p_id = 21    price = 1499 
            con.Open();
            string result = "";
            using (MySqlCommand comm2 = new MySqlCommand("select final.checkrepeatorder(21)", con))
            {
                result = comm2.ExecuteScalar().ToString();
            }
            if( checkstock(21))
            {
                if (result == "yes")
                {
                    MySqlCommand comm = new MySqlCommand();
                    comm.Connection = con;
                    comm.CommandText = "INSERT INTO `final`.`tran` (`number`,`p_id`,`p_name`, `order_id`,`quantity`,`price`) " +
                          "VALUES " + "(@No,@p_id,@p_name, @order_id,@quantity,@price);";
                    comm.Parameters.AddWithValue("@No", null);
                    comm.Parameters.AddWithValue("@p_id", 21);
                    comm.Parameters.AddWithValue("@p_name", null);
                    comm.Parameters.AddWithValue("@order_id", null);
                    comm.Parameters.AddWithValue("@quantity", 1);
                    comm.Parameters.AddWithValue("@price", null);
                    try
                    {
                        int rowsAffected = comm.ExecuteNonQuery();
                        //MessageBox.Show("Save Data Completed!");

                    }
                    catch (Exception ex)
                    {
                        MessageBox.Show(ex.Message);
                    }
                }
                
            }
            else
            {
                MessageBox.Show("Out of Stock !!");
            }
            con.Close();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            //  case computer     p_id = 29    price = 499 
            con.Open();
            string result = "";
            using (MySqlCommand comm2 = new MySqlCommand("select final.checkrepeatorder(29)", con))
            {
                result = comm2.ExecuteScalar().ToString();
            }
            if (checkstock(29))
            {
                if (result == "yes")
                {
                    MySqlCommand comm = new MySqlCommand();
                    var keep = comboBox1.SelectedIndex;
                    var quan = keep.ToString();
                    comm.Connection = con;
                    comm.CommandText = "INSERT INTO `final`.`tran` (`number`,`p_id`,`p_name`, `order_id`,`quantity`,`price`) " +
                          "VALUES " + "(@No,@p_id,@p_name, @order_id,@quantity,@price);";
                    comm.Parameters.AddWithValue("@No", null);
                    comm.Parameters.AddWithValue("@p_id", 29);
                    comm.Parameters.AddWithValue("@p_name", null);
                    comm.Parameters.AddWithValue("@order_id", null);
                    comm.Parameters.AddWithValue("@quantity", quan);
                    comm.Parameters.AddWithValue("@price", null);
                    try
                    {
                        int rowsAffected = comm.ExecuteNonQuery();
                        //MessageBox.Show("Save Data Completed!");

                    }
                    catch (Exception ex)
                    {
                        MessageBox.Show(ex.Message);
                    }
                }

            }
            else
            {
                MessageBox.Show("Out of Stock !!");
            }
            con.Close();
        }

        private void button3_Click(object sender, EventArgs e)
        {
            //  cpu amd     p_id = 2   price = 1000

            con.Open();
            string result = "";
            using (MySqlCommand comm2 = new MySqlCommand("select final.checkrepeatorder(2)", con))
            {
                result = comm2.ExecuteScalar().ToString();
            }
            if (checkstock(2))
            {
                if (result == "yes")
                {
                    MySqlCommand comm = new MySqlCommand();
                    var keep = comboBox2.SelectedIndex;
                    var quan = keep.ToString();
                    comm.Connection = con;
                    comm.CommandText = "INSERT INTO `final`.`tran` (`number`,`p_id`,`p_name`, `order_id`,`quantity`,`price`) " +
                          "VALUES " + "(@No,@p_id,@p_name, @order_id,@quantity,@price);";
                    comm.Parameters.AddWithValue("@No", null);
                    comm.Parameters.AddWithValue("@p_id", 2);
                    comm.Parameters.AddWithValue("@p_name", null);
                    comm.Parameters.AddWithValue("@order_id", null);
                    comm.Parameters.AddWithValue("@quantity", quan);
                    comm.Parameters.AddWithValue("@price", null);
                    try
                    {
                        int rowsAffected = comm.ExecuteNonQuery();
                        //MessageBox.Show("Save Data Completed!");

                    }
                    catch (Exception ex)
                    {
                        MessageBox.Show(ex.Message);
                    }
                }

            }
            else
            {
                MessageBox.Show("Out of Stock !!");
            }
            con.Close();
        }

        private void button4_Click(object sender, EventArgs e)
        {
            //  cpu intel     p_id = 1   price = 1200

            con.Open();
            string result = "";
            using (MySqlCommand comm2 = new MySqlCommand("select final.checkrepeatorder(1)", con))
            {
                result = comm2.ExecuteScalar().ToString();
            }
            if (checkstock(1))
            {
                if (result == "yes")
                {
                    MySqlCommand comm = new MySqlCommand();
                    var keep = comboBox3.SelectedIndex;
                    var quan = keep.ToString();
                    comm.Connection = con;
                    comm.CommandText = "INSERT INTO `final`.`tran` (`number`,`p_id`,`p_name`, `order_id`,`quantity`,`price`) " +
                          "VALUES " + "(@No,@p_id,@p_name, @order_id,@quantity,@price);";
                    comm.Parameters.AddWithValue("@No", null);
                    comm.Parameters.AddWithValue("@p_id", 1);
                    comm.Parameters.AddWithValue("@p_name", null);
                    comm.Parameters.AddWithValue("@order_id", null);
                    comm.Parameters.AddWithValue("@quantity", quan);
                    comm.Parameters.AddWithValue("@price", null);
                    try
                    {
                        int rowsAffected = comm.ExecuteNonQuery();
                        //MessageBox.Show("Save Data Completed!");

                    }
                    catch (Exception ex)
                    {
                        MessageBox.Show(ex.Message);
                    }
                }

            }
            else
            {
                MessageBox.Show("Out of Stock !!");
            }
            con.Close();
        }

        private void button5_Click(object sender, EventArgs e)
        {
            //  CSGO    p_id = 7    price = 169 
            con.Open();
            string result = "";
            using (MySqlCommand comm2 = new MySqlCommand("select final.checkrepeatorder(7)", con))
            {
                result = comm2.ExecuteScalar().ToString();
            }
            if (result == "yes")
            {
                MySqlCommand comm = new MySqlCommand();
                comm.Connection = con;
                comm.CommandText = "INSERT INTO `final`.`tran` (`number`,`p_id`,`p_name`, `order_id`,`quantity`,`price`) " +
                      "VALUES " + "(@No,@p_id,@p_name, @order_id,@quantity,@price);";
                comm.Parameters.AddWithValue("@No", null);
                comm.Parameters.AddWithValue("@p_id", 7);
                comm.Parameters.AddWithValue("@p_name", null);
                comm.Parameters.AddWithValue("@order_id", null);
                comm.Parameters.AddWithValue("@quantity", 1);
                comm.Parameters.AddWithValue("@price", null);
                try
                {
                    int rowsAffected = comm.ExecuteNonQuery();
                    //MessageBox.Show("Save Data Completed!");

                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message);
                }
            }
            con.Close();
        }

        private void button6_Click(object sender, EventArgs e)
        {
            //  DOOM    p_id = 25    price = 1199 
            con.Open();
            string result = "";
            using (MySqlCommand comm2 = new MySqlCommand("select final.checkrepeatorder(25)", con))
            {
                result = comm2.ExecuteScalar().ToString();
            }
            if (result == "yes")
            {
                MySqlCommand comm = new MySqlCommand();
                comm.Connection = con;
                comm.CommandText = "INSERT INTO `final`.`tran` (`number`,`p_id`,`p_name`, `order_id`,`quantity`,`price`) " +
                      "VALUES " + "(@No,@p_id,@p_name, @order_id,@quantity,@price);";
                comm.Parameters.AddWithValue("@No", null);
                comm.Parameters.AddWithValue("@p_id", 25);
                comm.Parameters.AddWithValue("@p_name", null);
                comm.Parameters.AddWithValue("@order_id", null);
                comm.Parameters.AddWithValue("@quantity", 1);
                comm.Parameters.AddWithValue("@price", null);
                try
                {
                    int rowsAffected = comm.ExecuteNonQuery();
                    //MessageBox.Show("Save Data Completed!");

                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message);
                }
            }
            con.Close();
        }

        private void button7_Click(object sender, EventArgs e)
        {
            //  Final Fantasy    p_id = 20    price = 1399 
            con.Open();
            string result = "";
            using (MySqlCommand comm2 = new MySqlCommand("select final.checkrepeatorder(20)", con))
            {
                result = comm2.ExecuteScalar().ToString();
            }
            if (result == "yes")
            {
                MySqlCommand comm = new MySqlCommand();
                comm.Connection = con;
                comm.CommandText = "INSERT INTO `final`.`tran` (`number`,`p_id`,`p_name`, `order_id`,`quantity`,`price`) " +
                      "VALUES " + "(@No,@p_id,@p_name, @order_id,@quantity,@price);";
                comm.Parameters.AddWithValue("@No", null);
                comm.Parameters.AddWithValue("@p_id", 20);
                comm.Parameters.AddWithValue("@p_name", null);
                comm.Parameters.AddWithValue("@order_id", null);
                comm.Parameters.AddWithValue("@quantity", 1);
                comm.Parameters.AddWithValue("@price", null);
                try
                {
                    int rowsAffected = comm.ExecuteNonQuery();
                    //MessageBox.Show("Save Data Completed!");

                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message);
                }
            }
            con.Close();
        }

        private void button8_Click(object sender, EventArgs e)
        {
            //  flash Drive     p_id = 24   price = 199

            con.Open();
            string result = "";
            using (MySqlCommand comm2 = new MySqlCommand("select final.checkrepeatorder(24)", con))
            {
                result = comm2.ExecuteScalar().ToString();
            }
            if (checkstock(24))
            {
                if (result == "yes")
                {
                    MySqlCommand comm = new MySqlCommand();
                    var keep = comboBox4.SelectedIndex;
                    var quan = keep.ToString();
                    comm.Connection = con;
                    comm.CommandText = "INSERT INTO `final`.`tran` (`number`,`p_id`,`p_name`, `order_id`,`quantity`,`price`) " +
                          "VALUES " + "(@No,@p_id,@p_name, @order_id,@quantity,@price);";
                    comm.Parameters.AddWithValue("@No", null);
                    comm.Parameters.AddWithValue("@p_id", 24);
                    comm.Parameters.AddWithValue("@p_name", null);
                    comm.Parameters.AddWithValue("@order_id", null);
                    comm.Parameters.AddWithValue("@quantity", quan);
                    comm.Parameters.AddWithValue("@price", null);
                    try
                    {
                        int rowsAffected = comm.ExecuteNonQuery();
                        //MessageBox.Show("Save Data Completed!");

                    }
                    catch (Exception ex)
                    {
                        MessageBox.Show(ex.Message);
                    }
                }

            }
            else
            {
                MessageBox.Show("Out of Stock !!");
            }
            con.Close();
        }

        private void button9_Click(object sender, EventArgs e)
        {
            //  gear war    p_id = 9    price = 1699 
            con.Open();
            string result = "";
            using (MySqlCommand comm2 = new MySqlCommand("select final.checkrepeatorder(9)", con))
            {
                result = comm2.ExecuteScalar().ToString();
            }
            if (result == "yes")
            {
                MySqlCommand comm = new MySqlCommand();
                comm.Connection = con;
                comm.CommandText = "INSERT INTO `final`.`tran` (`number`,`p_id`,`p_name`, `order_id`,`quantity`,`price`) " +
                      "VALUES " + "(@No,@p_id,@p_name, @order_id,@quantity,@price);";
                comm.Parameters.AddWithValue("@No", null);
                comm.Parameters.AddWithValue("@p_id", 9);
                comm.Parameters.AddWithValue("@p_name", null);
                comm.Parameters.AddWithValue("@order_id", null);
                comm.Parameters.AddWithValue("@quantity", 1);
                comm.Parameters.AddWithValue("@price", null);
                try
                {
                    int rowsAffected = comm.ExecuteNonQuery();
                    //MessageBox.Show("Save Data Completed!");

                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message);
                }
            }
            con.Close();
        }

        private void button10_Click(object sender, EventArgs e)
        {
            //  GTA    p_id = 26    price = 1399 
            con.Open();
            string result = "";
            using (MySqlCommand comm2 = new MySqlCommand("select final.checkrepeatorder(26)", con))
            {
                result = comm2.ExecuteScalar().ToString();
            }
            if (result == "yes")
            {
                MySqlCommand comm = new MySqlCommand();
                comm.Connection = con;
                comm.CommandText = "INSERT INTO `final`.`tran` (`number`,`p_id`,`p_name`, `order_id`,`quantity`,`price`) " +
                      "VALUES " + "(@No,@p_id,@p_name, @order_id,@quantity,@price);";
                comm.Parameters.AddWithValue("@No", null);
                comm.Parameters.AddWithValue("@p_id", 26);
                comm.Parameters.AddWithValue("@p_name", null);
                comm.Parameters.AddWithValue("@order_id", null);
                comm.Parameters.AddWithValue("@quantity", 1);
                comm.Parameters.AddWithValue("@price", null);
                try
                {
                    int rowsAffected = comm.ExecuteNonQuery();
                    //MessageBox.Show("Save Data Completed!");

                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message);
                }
            }
            con.Close();
        }

        private void button11_Click(object sender, EventArgs e)
        {
            //  HDD 500     p_id = 13   price = 1200

            con.Open();
            string result = "";
            using (MySqlCommand comm2 = new MySqlCommand("select final.checkrepeatorder(13)", con))
            {
                result = comm2.ExecuteScalar().ToString();
            }
            if (checkstock(13))
            {
                if (result == "yes")
                {
                    MySqlCommand comm = new MySqlCommand();
                    var keep = comboBox5.SelectedIndex;
                    var quan = keep.ToString();
                    comm.Connection = con;
                    comm.CommandText = "INSERT INTO `final`.`tran` (`number`,`p_id`,`p_name`, `order_id`,`quantity`,`price`) " +
                          "VALUES " + "(@No,@p_id,@p_name, @order_id,@quantity,@price);";
                    comm.Parameters.AddWithValue("@No", null);
                    comm.Parameters.AddWithValue("@p_id", 13);
                    comm.Parameters.AddWithValue("@p_name", null);
                    comm.Parameters.AddWithValue("@order_id", null);
                    comm.Parameters.AddWithValue("@quantity", quan);
                    comm.Parameters.AddWithValue("@price", null);
                    try
                    {
                        int rowsAffected = comm.ExecuteNonQuery();
                        //MessageBox.Show("Save Data Completed!");

                    }
                    catch (Exception ex)
                    {
                        MessageBox.Show(ex.Message);
                    }
                }

            }
            else
            {
                MessageBox.Show("Out of Stock !!");
            }
            con.Close();
        }

        private void button12_Click(object sender, EventArgs e)
        {
            //  HDD 1 tb    p_id = 13   price = 2000

            con.Open();
            string result = "";
            using (MySqlCommand comm2 = new MySqlCommand("select final.checkrepeatorder(14)", con))
            {
                result = comm2.ExecuteScalar().ToString();
            }
            if (checkstock(14))
            {
                if (result == "yes")
                {
                    MySqlCommand comm = new MySqlCommand();
                    var keep = comboBox6.SelectedIndex;
                    var quan = keep.ToString();
                    comm.Connection = con;
                    comm.CommandText = "INSERT INTO `final`.`tran` (`number`,`p_id`,`p_name`, `order_id`,`quantity`,`price`) " +
                          "VALUES " + "(@No,@p_id,@p_name, @order_id,@quantity,@price);";
                    comm.Parameters.AddWithValue("@No", null);
                    comm.Parameters.AddWithValue("@p_id", 14);
                    comm.Parameters.AddWithValue("@p_name", null);
                    comm.Parameters.AddWithValue("@order_id", null);
                    comm.Parameters.AddWithValue("@quantity", quan);
                    comm.Parameters.AddWithValue("@price", null);
                    try
                    {
                        int rowsAffected = comm.ExecuteNonQuery();
                        //MessageBox.Show("Save Data Completed!");

                    }
                    catch (Exception ex)
                    {
                        MessageBox.Show(ex.Message);
                    }
                }

            }
            else
            {
                MessageBox.Show("Out of Stock !!");
            }
            con.Close();
        }

        private void button13_Click(object sender, EventArgs e)
        {
            //  headphone     p_id = 19   price = 199

            con.Open();
            string result = "";
            using (MySqlCommand comm2 = new MySqlCommand("select final.checkrepeatorder(19)", con))
            {
                result = comm2.ExecuteScalar().ToString();
            }
            if (checkstock(19))
            {
                if (result == "yes")
                {
                    MySqlCommand comm = new MySqlCommand();
                    var keep = comboBox7.SelectedIndex;
                    var quan = keep.ToString();
                    comm.Connection = con;
                    comm.CommandText = "INSERT INTO `final`.`tran` (`number`,`p_id`,`p_name`, `order_id`,`quantity`,`price`) " +
                          "VALUES " + "(@No,@p_id,@p_name, @order_id,@quantity,@price);";
                    comm.Parameters.AddWithValue("@No", null);
                    comm.Parameters.AddWithValue("@p_id", 19);
                    comm.Parameters.AddWithValue("@p_name", null);
                    comm.Parameters.AddWithValue("@order_id", null);
                    comm.Parameters.AddWithValue("@quantity", quan);
                    comm.Parameters.AddWithValue("@price", null);
                    try
                    {
                        int rowsAffected = comm.ExecuteNonQuery();
                        //MessageBox.Show("Save Data Completed!");

                    }
                    catch (Exception ex)
                    {
                        MessageBox.Show(ex.Message);
                    }
                }

            }
            else
            {
                MessageBox.Show("Out of Stock !!");
            }
            con.Close();
        }

        private void button14_Click(object sender, EventArgs e)
        {
            //  keyboard     p_id = 6   price = 300

            con.Open();
            string result = "";
            using (MySqlCommand comm2 = new MySqlCommand("select final.checkrepeatorder(6)", con))
            {
                result = comm2.ExecuteScalar().ToString();
            }
            if (checkstock(6))
            {
                if (result == "yes")
                {
                    MySqlCommand comm = new MySqlCommand();
                    var keep = comboBox8.SelectedIndex;
                    var quan = keep.ToString();
                    comm.Connection = con;
                    comm.CommandText = "INSERT INTO `final`.`tran` (`number`,`p_id`,`p_name`, `order_id`,`quantity`,`price`) " +
                          "VALUES " + "(@No,@p_id,@p_name, @order_id,@quantity,@price);";
                    comm.Parameters.AddWithValue("@No", null);
                    comm.Parameters.AddWithValue("@p_id", 6);
                    comm.Parameters.AddWithValue("@p_name", null);
                    comm.Parameters.AddWithValue("@order_id", null);
                    comm.Parameters.AddWithValue("@quantity", quan);
                    comm.Parameters.AddWithValue("@price", null);
                    try
                    {
                        int rowsAffected = comm.ExecuteNonQuery();
                        //MessageBox.Show("Save Data Completed!");

                    }
                    catch (Exception ex)
                    {
                        MessageBox.Show(ex.Message);
                    }
                }

            }
            else
            {
                MessageBox.Show("Out of Stock !!");
            }
            con.Close();
        }

        private void button15_Click(object sender, EventArgs e)
        {
            //  LA noire    p_id = 23    price = 299 
            con.Open();
            string result = "";
            using (MySqlCommand comm2 = new MySqlCommand("select final.checkrepeatorder(23)", con))
            {
                result = comm2.ExecuteScalar().ToString();
            }
            if (result == "yes")
            {
                MySqlCommand comm = new MySqlCommand();
                comm.Connection = con;
                comm.CommandText = "INSERT INTO `final`.`tran` (`number`,`p_id`,`p_name`, `order_id`,`quantity`,`price`) " +
                      "VALUES " + "(@No,@p_id,@p_name, @order_id,@quantity,@price);";
                comm.Parameters.AddWithValue("@No", null);
                comm.Parameters.AddWithValue("@p_id", 23);
                comm.Parameters.AddWithValue("@p_name", null);
                comm.Parameters.AddWithValue("@order_id", null);
                comm.Parameters.AddWithValue("@quantity", 1);
                comm.Parameters.AddWithValue("@price", null);
                try
                {
                    int rowsAffected = comm.ExecuteNonQuery();
                    //MessageBox.Show("Save Data Completed!");

                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message);
                }
            }
            con.Close();
        }

        private void button16_Click(object sender, EventArgs e)
        {
            //  Mainboard     p_id = 17   price = 699

            con.Open();
            string result = "";
            using (MySqlCommand comm2 = new MySqlCommand("select final.checkrepeatorder(17)", con))
            {
                result = comm2.ExecuteScalar().ToString();
            }
            if (checkstock(17))
            {
                if (result == "yes")
                {
                    MySqlCommand comm = new MySqlCommand();
                    var keep = comboBox9.SelectedIndex;
                    var quan = keep.ToString();
                    comm.Connection = con;
                    comm.CommandText = "INSERT INTO `final`.`tran` (`number`,`p_id`,`p_name`, `order_id`,`quantity`,`price`) " +
                          "VALUES " + "(@No,@p_id,@p_name, @order_id,@quantity,@price);";
                    comm.Parameters.AddWithValue("@No", null);
                    comm.Parameters.AddWithValue("@p_id", 17);
                    comm.Parameters.AddWithValue("@p_name", null);
                    comm.Parameters.AddWithValue("@order_id", null);
                    comm.Parameters.AddWithValue("@quantity", quan);
                    comm.Parameters.AddWithValue("@price", null);
                    try
                    {
                        int rowsAffected = comm.ExecuteNonQuery();
                        //MessageBox.Show("Save Data Completed!");

                    }
                    catch (Exception ex)
                    {
                        MessageBox.Show(ex.Message);
                    }
                }

            }
            else
            {
                MessageBox.Show("Out of Stock !!");
            }
            con.Close();
        }

        private void button17_Click(object sender, EventArgs e)
        {
            //  Monster Hunt    p_id = 27    price = 1299 
            con.Open();
            string result = "";
            using (MySqlCommand comm2 = new MySqlCommand("select final.checkrepeatorder(27)", con))
            {
                result = comm2.ExecuteScalar().ToString();
            }
            if (checkstock(27))
            {
                if (result == "yes")
                {
                    MySqlCommand comm = new MySqlCommand();
                    comm.Connection = con;
                    comm.CommandText = "INSERT INTO `final`.`tran` (`number`,`p_id`,`p_name`, `order_id`,`quantity`,`price`) " +
                          "VALUES " + "(@No,@p_id,@p_name, @order_id,@quantity,@price);";
                    comm.Parameters.AddWithValue("@No", null);
                    comm.Parameters.AddWithValue("@p_id", 27);
                    comm.Parameters.AddWithValue("@p_name", null);
                    comm.Parameters.AddWithValue("@order_id", null);
                    comm.Parameters.AddWithValue("@quantity", 1);
                    comm.Parameters.AddWithValue("@price", null);
                    try
                    {
                        int rowsAffected = comm.ExecuteNonQuery();
                        //MessageBox.Show("Save Data Completed!");

                    }
                    catch (Exception ex)
                    {
                        MessageBox.Show(ex.Message);
                    }
                }

            }
            else
            {
                MessageBox.Show("Out of Stock !!");
            }
            con.Close();
        }

        private void button18_Click(object sender, EventArgs e)
        {
            //  Mouse     p_id = 5   price = 200

            con.Open();
            string result = "";
            using (MySqlCommand comm2 = new MySqlCommand("select final.checkrepeatorder(5)", con))
            {
                result = comm2.ExecuteScalar().ToString();
            }
            if (checkstock(5))
            {
                if (result == "yes")
                {
                    MySqlCommand comm = new MySqlCommand();
                    var keep = comboBox10.SelectedIndex;
                    var quan = keep.ToString();
                    comm.Connection = con;
                    comm.CommandText = "INSERT INTO `final`.`tran` (`number`,`p_id`,`p_name`, `order_id`,`quantity`,`price`) " +
                          "VALUES " + "(@No,@p_id,@p_name, @order_id,@quantity,@price);";
                    comm.Parameters.AddWithValue("@No", null);
                    comm.Parameters.AddWithValue("@p_id", 5);
                    comm.Parameters.AddWithValue("@p_name", null);
                    comm.Parameters.AddWithValue("@order_id", null);
                    comm.Parameters.AddWithValue("@quantity", quan);
                    comm.Parameters.AddWithValue("@price", null);
                    try
                    {
                        int rowsAffected = comm.ExecuteNonQuery();
                        //MessageBox.Show("Save Data Completed!");

                    }
                    catch (Exception ex)
                    {
                        MessageBox.Show(ex.Message);
                    }
                }

            }
            else
            {
                MessageBox.Show("Out of Stock !!");
            }
            con.Close();
        }

        private void button19_Click(object sender, EventArgs e)
        {
            // Pokemon    p_id = 30    price = 179 
            con.Open();
            string result = "";
            using (MySqlCommand comm2 = new MySqlCommand("select final.checkrepeatorder(30)", con))
            {
                result = comm2.ExecuteScalar().ToString();
            }
            if (result == "yes")
            {
                MySqlCommand comm = new MySqlCommand();
                comm.Connection = con;
                comm.CommandText = "INSERT INTO `final`.`tran` (`number`,`p_id`,`p_name`, `order_id`,`quantity`,`price`) " +
                      "VALUES " + "(@No,@p_id,@p_name, @order_id,@quantity,@price);";
                comm.Parameters.AddWithValue("@No", null);
                comm.Parameters.AddWithValue("@p_id", 30);
                comm.Parameters.AddWithValue("@p_name", null);
                comm.Parameters.AddWithValue("@order_id", null);
                comm.Parameters.AddWithValue("@quantity", 1);
                comm.Parameters.AddWithValue("@price", null);
                try
                {
                    int rowsAffected = comm.ExecuteNonQuery();
                    //MessageBox.Show("Save Data Completed!");

                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message);
                }
            }
            con.Close();
        }

        private void button20_Click(object sender, EventArgs e)
        {
            //  PubG    p_id = 18    price = 399
            con.Open();
            string result = "";
            using (MySqlCommand comm2 = new MySqlCommand("select final.checkrepeatorder(18)", con))
            {
                result = comm2.ExecuteScalar().ToString();
            }
            if (result == "yes")
            {
                MySqlCommand comm = new MySqlCommand();
                comm.Connection = con;
                comm.CommandText = "INSERT INTO `final`.`tran` (`number`,`p_id`,`p_name`, `order_id`,`quantity`,`price`) " +
                      "VALUES " + "(@No,@p_id,@p_name, @order_id,@quantity,@price);";
                comm.Parameters.AddWithValue("@No", null);
                comm.Parameters.AddWithValue("@p_id", 18);
                comm.Parameters.AddWithValue("@p_name", null);
                comm.Parameters.AddWithValue("@order_id", null);
                comm.Parameters.AddWithValue("@quantity", 1);
                comm.Parameters.AddWithValue("@price", null);
                try
                {
                    int rowsAffected = comm.ExecuteNonQuery();
                    //MessageBox.Show("Save Data Completed!");

                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message);
                }
            }
            con.Close();
        }

        private void button21_Click(object sender, EventArgs e)
        {
            //  ram 4     p_id = 12   price = 299

            con.Open();
            string result = "";
            using (MySqlCommand comm2 = new MySqlCommand("select final.checkrepeatorder(12)", con))
            {
                result = comm2.ExecuteScalar().ToString();
            }
            if (checkstock(12))
            {
                if (result == "yes")
                {
                    MySqlCommand comm = new MySqlCommand();
                    var keep = comboBox11.SelectedIndex;
                    var quan = keep.ToString();
                    comm.Connection = con;
                    comm.CommandText = "INSERT INTO `final`.`tran` (`number`,`p_id`,`p_name`, `order_id`,`quantity`,`price`) " +
                          "VALUES " + "(@No,@p_id,@p_name, @order_id,@quantity,@price);";
                    comm.Parameters.AddWithValue("@No", null);
                    comm.Parameters.AddWithValue("@p_id", 12);
                    comm.Parameters.AddWithValue("@p_name", null);
                    comm.Parameters.AddWithValue("@order_id", null);
                    comm.Parameters.AddWithValue("@quantity", quan);
                    comm.Parameters.AddWithValue("@price", null);
                    try
                    {
                        int rowsAffected = comm.ExecuteNonQuery();
                        //MessageBox.Show("Save Data Completed!");

                    }
                    catch (Exception ex)
                    {
                        MessageBox.Show(ex.Message);
                    }
                }

            }
            else
            {
                MessageBox.Show("Out of Stock !!");
            }
            con.Close();
        }

        private void button22_Click(object sender, EventArgs e)
        {
            //  ram 8    p_id = 11   price = 499

            con.Open();
            string result = "";
            using (MySqlCommand comm2 = new MySqlCommand("select final.checkrepeatorder(11)", con))
            {
                result = comm2.ExecuteScalar().ToString();
            }
            if (checkstock(11))
            {
                if (result == "yes")
                {
                    MySqlCommand comm = new MySqlCommand();
                    var keep = comboBox12.SelectedIndex;
                    var quan = keep.ToString();
                    comm.Connection = con;
                    comm.CommandText = "INSERT INTO `final`.`tran` (`number`,`p_id`,`p_name`, `order_id`,`quantity`,`price`) " +
                          "VALUES " + "(@No,@p_id,@p_name, @order_id,@quantity,@price);";
                    comm.Parameters.AddWithValue("@No", null);
                    comm.Parameters.AddWithValue("@p_id", 11);
                    comm.Parameters.AddWithValue("@p_name", null);
                    comm.Parameters.AddWithValue("@order_id", null);
                    comm.Parameters.AddWithValue("@quantity", quan);
                    comm.Parameters.AddWithValue("@price", null);
                    try
                    {
                        int rowsAffected = comm.ExecuteNonQuery();
                        //MessageBox.Show("Save Data Completed!");

                    }
                    catch (Exception ex)
                    {
                        MessageBox.Show(ex.Message);
                    }
                }

            }
            else
            {
                MessageBox.Show("Out of Stock !!");
            }
            con.Close();
        }

        private void button23_Click(object sender, EventArgs e)
        {
            //  Red&Yuri    p_id =28    price = 399 
            con.Open();
            string result = "";
            using (MySqlCommand comm2 = new MySqlCommand("select final.checkrepeatorder(28)", con))
            {
                result = comm2.ExecuteScalar().ToString();
            }
            if (result == "yes")
            {
                MySqlCommand comm = new MySqlCommand();
                comm.Connection = con;
                comm.CommandText = "INSERT INTO `final`.`tran` (`number`,`p_id`,`p_name`, `order_id`,`quantity`,`price`) " +
                      "VALUES " + "(@No,@p_id,@p_name, @order_id,@quantity,@price);";
                comm.Parameters.AddWithValue("@No", null);
                comm.Parameters.AddWithValue("@p_id", 28);
                comm.Parameters.AddWithValue("@p_name", null);
                comm.Parameters.AddWithValue("@order_id", null);
                comm.Parameters.AddWithValue("@quantity", 1);
                comm.Parameters.AddWithValue("@price", null);
                try
                {
                    int rowsAffected = comm.ExecuteNonQuery();
                    //MessageBox.Show("Save Data Completed!");

                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message);
                }
            }
            con.Close();
        }

        private void button24_Click(object sender, EventArgs e)
        {
            //  ssd 250     p_id = 15   price = 1399

            con.Open();
            string result = "";
            using (MySqlCommand comm2 = new MySqlCommand("select final.checkrepeatorder(15)", con))
            {
                result = comm2.ExecuteScalar().ToString();
            }
            if (checkstock(15))
            {
                if (result == "yes")
                {
                    MySqlCommand comm = new MySqlCommand();
                    var keep = comboBox13.SelectedIndex;
                    var quan = keep.ToString();
                    comm.Connection = con;
                    comm.CommandText = "INSERT INTO `final`.`tran` (`number`,`p_id`,`p_name`, `order_id`,`quantity`,`price`) " +
                          "VALUES " + "(@No,@p_id,@p_name, @order_id,@quantity,@price);";
                    comm.Parameters.AddWithValue("@No", null);
                    comm.Parameters.AddWithValue("@p_id", 15);
                    comm.Parameters.AddWithValue("@p_name", null);
                    comm.Parameters.AddWithValue("@order_id", null);
                    comm.Parameters.AddWithValue("@quantity", quan);
                    comm.Parameters.AddWithValue("@price", null);
                    try
                    {
                        int rowsAffected = comm.ExecuteNonQuery();
                        //MessageBox.Show("Save Data Completed!");

                    }
                    catch (Exception ex)
                    {
                        MessageBox.Show(ex.Message);
                    }
                }

            }
            else
            {
                MessageBox.Show("Out of Stock !!");
            }
            con.Close();
        }

        private void button25_Click(object sender, EventArgs e)
        {
            //  SSD 500     p_id = 16   price = 2599

            con.Open();
            string result = "";
            using (MySqlCommand comm2 = new MySqlCommand("select final.checkrepeatorder(16)", con))
            {
                result = comm2.ExecuteScalar().ToString();
            }
            if (checkstock(16))
            {
                if (result == "yes")
                {
                    MySqlCommand comm = new MySqlCommand();
                    var keep = comboBox14.SelectedIndex;
                    var quan = keep.ToString();
                    comm.Connection = con;
                    comm.CommandText = "INSERT INTO `final`.`tran` (`number`,`p_id`,`p_name`, `order_id`,`quantity`,`price`) " +
                          "VALUES " + "(@No,@p_id,@p_name, @order_id,@quantity,@price);";
                    comm.Parameters.AddWithValue("@No", null);
                    comm.Parameters.AddWithValue("@p_id", 16);
                    comm.Parameters.AddWithValue("@p_name", null);
                    comm.Parameters.AddWithValue("@order_id", null);
                    comm.Parameters.AddWithValue("@quantity", quan);
                    comm.Parameters.AddWithValue("@price", null);
                    try
                    {
                        int rowsAffected = comm.ExecuteNonQuery();
                        //MessageBox.Show("Save Data Completed!");

                    }
                    catch (Exception ex)
                    {
                        MessageBox.Show(ex.Message);
                    }
                }

            }
            else
            {
                MessageBox.Show("Out of Stock !!");
            }
            con.Close();
        }

        private void button26_Click(object sender, EventArgs e)
        {
            // The Sim    p_id = 10    price = 399 
            con.Open();
            string result = "";
            using (MySqlCommand comm2 = new MySqlCommand("select final.checkrepeatorder(10)", con))
            {
                result = comm2.ExecuteScalar().ToString();
            }
            if (result == "yes")
            {
                MySqlCommand comm = new MySqlCommand();
                comm.Connection = con;
                comm.CommandText = "INSERT INTO `final`.`tran` (`number`,`p_id`,`p_name`, `order_id`,`quantity`,`price`) " +
                      "VALUES " + "(@No,@p_id,@p_name, @order_id,@quantity,@price);";
                comm.Parameters.AddWithValue("@No", null);
                comm.Parameters.AddWithValue("@p_id", 10);
                comm.Parameters.AddWithValue("@p_name", null);
                comm.Parameters.AddWithValue("@order_id", null);
                comm.Parameters.AddWithValue("@quantity", 1);
                comm.Parameters.AddWithValue("@price", null);
                try
                {
                    int rowsAffected = comm.ExecuteNonQuery();
                    //MessageBox.Show("Save Data Completed!");

                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message);
                }
            }
            con.Close();
        }

        private void button27_Click(object sender, EventArgs e)
        {
            //  vga amd     p_id = 4  price = 2010

            con.Open();
            string result = "";
            using (MySqlCommand comm2 = new MySqlCommand("select final.checkrepeatorder(4)", con))
            {
                result = comm2.ExecuteScalar().ToString();
            }
            if (checkstock(4))
            {
                if (result == "yes")
                {
                    MySqlCommand comm = new MySqlCommand();
                    var keep = comboBox15.SelectedIndex;
                    var quan = keep.ToString();
                    comm.Connection = con;
                    comm.CommandText = "INSERT INTO `final`.`tran` (`number`,`p_id`,`p_name`, `order_id`,`quantity`,`price`) " +
                          "VALUES " + "(@No,@p_id,@p_name, @order_id,@quantity,@price);";
                    comm.Parameters.AddWithValue("@No", null);
                    comm.Parameters.AddWithValue("@p_id", 4);
                    comm.Parameters.AddWithValue("@p_name", null);
                    comm.Parameters.AddWithValue("@order_id", null);
                    comm.Parameters.AddWithValue("@quantity", quan);
                    comm.Parameters.AddWithValue("@price", null);
                    try
                    {
                        int rowsAffected = comm.ExecuteNonQuery();
                        //MessageBox.Show("Save Data Completed!");

                    }
                    catch (Exception ex)
                    {
                        MessageBox.Show(ex.Message);
                    }
                }

            }
            else
            {
                MessageBox.Show("Out of Stock !!");
            }
            con.Close();
        }

        private void button28_Click(object sender, EventArgs e)
        {
            //  vga nvidia     p_id = 3   price = 2100

            con.Open();
            string result = "";
            using (MySqlCommand comm2 = new MySqlCommand("select final.checkrepeatorder(3)", con))
            {
                result = comm2.ExecuteScalar().ToString();
            }
            if (checkstock(3))
            {
                if (result == "yes")
                {
                    MySqlCommand comm = new MySqlCommand();
                    var keep = comboBox16.SelectedIndex;
                    var quan = keep.ToString();
                    comm.Connection = con;
                    comm.CommandText = "INSERT INTO `final`.`tran` (`number`,`p_id`,`p_name`, `order_id`,`quantity`,`price`) " +
                          "VALUES " + "(@No,@p_id,@p_name, @order_id,@quantity,@price);";
                    comm.Parameters.AddWithValue("@No", null);
                    comm.Parameters.AddWithValue("@p_id", 3);
                    comm.Parameters.AddWithValue("@p_name", null);
                    comm.Parameters.AddWithValue("@order_id", null);
                    comm.Parameters.AddWithValue("@quantity", quan);
                    comm.Parameters.AddWithValue("@price", null);
                    try
                    {
                        int rowsAffected = comm.ExecuteNonQuery();
                        //MessageBox.Show("Save Data Completed!");

                    }
                    catch (Exception ex)
                    {
                        MessageBox.Show(ex.Message);
                    }
                }

            }
            else
            {
                MessageBox.Show("Out of Stock !!");
            }
            con.Close();
        }

        private void button29_Click(object sender, EventArgs e)
        {
            //  witcher    p_id = 8    price = 369 
            con.Open();
            string result = "";
            using (MySqlCommand comm2 = new MySqlCommand("select final.checkrepeatorder(8)", con))
            {
                result = comm2.ExecuteScalar().ToString();
            }
            if (result == "yes")
            {
                MySqlCommand comm = new MySqlCommand();
                comm.Connection = con;
                comm.CommandText = "INSERT INTO `final`.`tran` (`number`,`p_id`,`p_name`, `order_id`,`quantity`,`price`) " +
                      "VALUES " + "(@No,@p_id,@p_name, @order_id,@quantity,@price);";
                comm.Parameters.AddWithValue("@No", null);
                comm.Parameters.AddWithValue("@p_id", 8);
                comm.Parameters.AddWithValue("@p_name", null);
                comm.Parameters.AddWithValue("@order_id", null);
                comm.Parameters.AddWithValue("@quantity", 1);
                comm.Parameters.AddWithValue("@price", null);
                try
                {
                    int rowsAffected = comm.ExecuteNonQuery();
                    //MessageBox.Show("Save Data Completed!");

                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message);
                }
            }
            con.Close();
        }

        private void button30_Click(object sender, EventArgs e)
        {
            //  Zuma    p_id = 22    price = 145 
            con.Open();
            string result = "";
            using (MySqlCommand comm2 = new MySqlCommand("select final.checkrepeatorder(22)", con))
            {
                result = comm2.ExecuteScalar().ToString();
            }
            if (result == "yes")
            {
                MySqlCommand comm = new MySqlCommand();
                comm.Connection = con;
                comm.CommandText = "INSERT INTO `final`.`tran` (`number`,`p_id`,`p_name`, `order_id`,`quantity`,`price`) " +
                      "VALUES " + "(@No,@p_id,@p_name, @order_id,@quantity,@price);";
                comm.Parameters.AddWithValue("@No", null);
                comm.Parameters.AddWithValue("@p_id", 22);
                comm.Parameters.AddWithValue("@p_name", null);
                comm.Parameters.AddWithValue("@order_id", null);
                comm.Parameters.AddWithValue("@quantity", 1);
                comm.Parameters.AddWithValue("@price", null);
                try
                {
                    int rowsAffected = comm.ExecuteNonQuery();
                    //MessageBox.Show("Save Data Completed!");

                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message);
                }
            }
            con.Close();
        }
    }
}
