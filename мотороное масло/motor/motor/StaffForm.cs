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
    public partial class StaffForm : Form
    {
        public StaffForm()
        {
            InitializeComponent();
        }

        private void StaffForm_Load(object sender, EventArgs e)
        {
            Sql.Connection.Open();

            string SqlStr = "select * from product_a_import";
            MySqlCommand command = new MySqlCommand(SqlStr, Sql.Connection);




            MySqlDataReader reader = command.ExecuteReader();
            List<string[]> data = new List<string[]>();
            while (reader.Read())
            {
                data.Add(new string[7]);

                data[data.Count - 1][0] = reader[0].ToString();
                data[data.Count - 1][1] = reader[1].ToString();
                data[data.Count - 1][2] = reader[2].ToString();
                data[data.Count - 1][3] = reader[3].ToString();
                data[data.Count - 1][4] = reader[4].ToString();
                data[data.Count - 1][5] = reader[5].ToString();
                data[data.Count - 1][6] = reader[6].ToString();
            }
            reader.Close();

            dataGridView1.Columns.Add("Column1", "ID");
            dataGridView1.Columns.Add("Column2", "Наименование товара");
            dataGridView1.Columns.Add("Column3", "Главное изображение");
            dataGridView1.Columns.Add("Column4", "Производитель");
            dataGridView1.Columns.Add("Column5", "Активен?");
            dataGridView1.Columns.Add("Column6", "Цена");
            dataGridView1.Columns.Add("Column7", "Описание");
            foreach (string[] s in data)
                dataGridView1.Rows.Add(s);


            Sql.Connection.Close();
        }
    }
}
