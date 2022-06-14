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
    public partial class RegistrationForm : Form
    {
        public RegistrationForm()
        {
            InitializeComponent();
        }
        MySqlCommand cmd;




        string SqlStr;
        string AddSqlStr;



        private void button1_Click_1(object sender, EventArgs e)
        {
            Sql.Connection.Open();
            radioButton1.Checked = true;
            if (radioButton1.Checked)
            {
                SqlStr = $"insert into users( Login, Password, User_type) values('{textBox2.Text}','{textBox3.Text}', 'Staff')";
                AddSqlStr = $"insert into staff( ФИО, Серия_паспорта," +
                    $" Номер_паспорта, Код_подразделения, Дата_рождения) values ('{textBox4.Text}','{textBox5.Text}'" +
                    $",'{textBox7.Text}','{textBox8.Text}','{dateTimePicker1.Value.ToString("yyyy-MM-dd")}')";
            }
            else if (radioButton2.Checked)
            {
                SqlStr = $"insert into users( Login, Password, User_type) values" +
                    $"('{textBox2.Text}','{textBox3.Text}', 'Client')";
                AddSqlStr = $"insert into clients( ФИО, Дата_рождения, Телефон, Электронная_почта, Дата_регистрации ) " +
                    $"values ('{textBox6.Text}','{dateTimePicker2.Value.ToString("yyyy-MM-dd")}'," +
                    $"'{textBox9.Text}','{textBox10.Text}','{DateTime.Now.ToString("yyyy-MM-dd")}')";
            }

            cmd = new MySqlCommand(SqlStr, Sql.Connection);
            cmd.ExecuteNonQuery();
            cmd = new MySqlCommand(AddSqlStr, Sql.Connection);
            cmd.ExecuteNonQuery();
            this.Close();
            Sql.Connection.Close();
        }

        private void RegistrationForm_Load_1(object sender, EventArgs e)
        {
            Sql.Connection.Open();
            SqlStr = "select count(*) from users";
            cmd = new MySqlCommand(SqlStr, Sql.Connection);
            Sql.Connection.Close();
        }

        private void radioButton1_CheckedChanged_1(object sender, EventArgs e)
        {
            label1.Show();
            label2.Show();
            label3.Show();
            label4.Show();
            label5.Show();
            dateTimePicker1.Show();
            textBox4.Show();
            textBox5.Show();
            textBox7.Show();
            textBox8.Show();

            label6.Hide();
            label7.Hide();
            label8.Hide();
            label9.Hide();
            textBox6.Hide();
            textBox9.Hide();
            textBox10.Hide();
            dateTimePicker2.Hide();
        }

        private void radioButton2_CheckedChanged_1(object sender, EventArgs e)
        {


            label6.Show();
            label7.Show();
            label8.Show();
            label9.Show();
            textBox6.Show();
            textBox9.Show();
            textBox10.Show();
            dateTimePicker2.Show();

            label1.Hide();
            label2.Hide();
            label3.Hide();
            label4.Hide();
            label5.Hide();
            dateTimePicker1.Hide();
            textBox4.Hide();
            textBox5.Hide();
            textBox7.Hide();
            textBox8.Hide();

        }
    }
}
