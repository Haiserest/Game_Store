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
    public partial class game_Form : Form
    {
        MySqlConnection con = new MySqlConnection("host=localhost;user=root;password=;database=final");
        public game_Form()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            //  Animal Crossing    p_id = 21    price = 1499 
            con.Open();
            int x = 23;
            string result = "";
            using (MySqlCommand comm2 = new MySqlCommand("select final.checkrepeatorder(21)", con))
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
                comm.Parameters.AddWithValue("@p_id", 21);
                comm.Parameters.AddWithValue("@p_name", null);
                comm.Parameters.AddWithValue("@order_id", null);
                comm.Parameters.AddWithValue("@quantity", 1);
                comm.Parameters.AddWithValue("price", null);

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
            else
            {

            }
            con.Close();
        }

        private void button2_Click(object sender, EventArgs e)
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
                comm.Parameters.AddWithValue("price", null);

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
            else
            {

            }
            con.Close();
        }

        private void button3_Click(object sender, EventArgs e)
        {
            //  DOOM    p_id = 25    price = 1199 
            con.Open();
            int x = 23;
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
                comm.Parameters.AddWithValue("price", null);

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
            else
            {

            }
            con.Close();
        }

        private void button4_Click(object sender, EventArgs e)
        {
            //  Final Fantasy    p_id = 20    price = 1399 
            con.Open();
            int x = 23;
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
                comm.Parameters.AddWithValue("price", null);

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
            else
            {

            }
            con.Close();
        }

        private void button5_Click(object sender, EventArgs e)
        {
            //  gear war    p_id = 9    price = 1699 
            con.Open();
            int x = 23;
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
                comm.Parameters.AddWithValue("price", null);

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
            else
            {

            }
            con.Close();
        }

        private void button6_Click(object sender, EventArgs e)
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
                comm.Parameters.AddWithValue("price", null);

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
            else
            {

            }
            con.Close();
        }
        private int norepeat(int id)
        {
          
            //string find = "select final.checkrepeatorder(pid)";
            int x = 0,y=id;
            MySqlCommand comm = new MySqlCommand("select final.checkrepeatorder(y)", con);
            
            if(comm.ExecuteScalar() =="no")
            {
                x = 1;
            }
            return x;
        }

        private void button7_Click(object sender, EventArgs e)
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
                comm.Parameters.AddWithValue("price", null);

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
            else
            {

            }
            con.Close();
        }

        private void button8_Click(object sender, EventArgs e)
        {
            //  Monster Hunt    p_id = 27    price = 1299 
            con.Open();
          
            string result = "";
            using (MySqlCommand comm2 = new MySqlCommand("select final.checkrepeatorder(27)", con))
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
                comm.Parameters.AddWithValue("@p_id", 27);
                comm.Parameters.AddWithValue("@p_name", null);
                comm.Parameters.AddWithValue("@order_id", null);
                comm.Parameters.AddWithValue("@quantity", 1);
                comm.Parameters.AddWithValue("price", null);

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
            else
            {

            }
            con.Close();
        }

        private void button9_Click(object sender, EventArgs e)
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
                comm.Parameters.AddWithValue("price", null);

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
            else
            {

            }
            con.Close();
        }

        private void button10_Click(object sender, EventArgs e)
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
                comm.Parameters.AddWithValue("price", null);

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
            else
            {

            }
            con.Close();
        }

        private void button11_Click(object sender, EventArgs e)
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
                comm.Parameters.AddWithValue("price", null);

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
            else
            {

            }
            con.Close();
        }

        private void button12_Click(object sender, EventArgs e)
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
                comm.Parameters.AddWithValue("price", null);

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
            else
            {

            }
            con.Close();
        }

        private void button13_Click(object sender, EventArgs e)
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
                comm.Parameters.AddWithValue("price", null);

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
            else
            {

            }
            con.Close();
        }

        private void button14_Click(object sender, EventArgs e)
        {
            //  Zuma    p_id = 22    price = 145 
            con.Open();
            int x = 23;
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
                comm.Parameters.AddWithValue("price", null);

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
            else
            {

            }
            con.Close();
        }
    }
}
