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

namespace motor
{
    public partial class Authorization : Form
    {
        public Authorization()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            RegistrationForm registrationForm = new RegistrationForm();
            registrationForm.Show();
        }
        string SqlStr;
        string role;

        private void button2_Click(object sender, EventArgs e)
        {
            Sql.Connection.Open();
            SqlStr = $"select * from motornoe_maslo.users where Login='{textBox1.Text}' and Password='{textBox2.Text}';";
            MySqlCommand cmd = new MySqlCommand(SqlStr, Sql.Connection);
            MySqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                role = reader[3].ToString();
            }

            reader.Close();
            Sql.Connection.Close();
            if (role == "Admin")
            {
                MessageBox.Show($"Вход выполнен успешно", "Success");
                Admin_Form newForm = new Admin_Form();
                newForm.Show();
            }
            if (role == "Client")
            {
                MessageBox.Show($"Вход выполнен успешно", "Success");
                Form1 newForm = new Form1();
                newForm.Show();
            }
            if (role == "Staff")
            {
                MessageBox.Show($"Вход выполнен успешно", "Success");
                StaffForm newForm = new StaffForm();
                newForm.Show();
            }


            this.Hide();
            Sql.Connection.Close();
        }
    }
}
