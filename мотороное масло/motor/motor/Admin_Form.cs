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
    public partial class Admin_Form : Form
    {
        public Admin_Form()
        {
            InitializeComponent();
        }


        private void Admin_Form_Load(object sender, EventArgs e)
        {
            Sql.Connection.Open();

            string SqlStr = "select * from users";
            MySqlCommand command = new MySqlCommand(SqlStr, Sql.Connection);

           


            MySqlDataReader reader = command.ExecuteReader();
            List<string[]> data = new List<string[]>();
            while(reader.Read())
            {
                data.Add(new string[4]);

                data[data.Count - 1][0] = reader[0].ToString();
                data[data.Count - 1][1] = reader[1].ToString();
                data[data.Count - 1][2] = reader[2].ToString();
                data[data.Count - 1][3] = reader[3].ToString();
            }
            reader.Close();

            dataGridView1.Columns.Add("Column1", "User_ID");
            dataGridView1.Columns.Add("Column2", "Login");
            dataGridView1.Columns.Add("Column3", "Password");
            dataGridView1.Columns.Add("Column4", "User_type");
            foreach (string[] s in data)
                dataGridView1.Rows.Add(s);


            Sql.Connection.Close();

        }

        private void Admin_Form_Leave(object sender, EventArgs e)
        {
            //Sql.Connection.Open();
            //string SqlUp = $"insert into users(User_ID, Login, Password,User_type) values(" +
            //    $"'{dataGridView1.Columns[0].ToString()}','{dataGridView1.Columns[1].ToString()}'," +
            //    $"'{dataGridView1.Columns[2].ToString()}','{dataGridView1.Columns[3].ToString()}')";

            //MySqlDataAdapter adapter = new MySqlDataAdapter(SqlUp, Sql.Connection);
            //MySqlCommandBuilder commandBuilder = new MySqlCommandBuilder(adapter);

            //DataTable dataTable = new DataTable();
            //adapter.Fill(dataTable);


            //adapter.Update(dataTable);

            //Sql.Connection.Close();

        }
    }
}
