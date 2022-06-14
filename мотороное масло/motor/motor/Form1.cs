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
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        //static string connectionString = "server=c13625814;user=dbadmin;database=motornoe_maslo;password=123456";
        static string connectionString = "server=127.0.0.1;user=root;database=motornoe_maslo;password=123456";
        static MySqlConnection Conn = new MySqlConnection(connectionString);

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            Conn.Open();
            getLolos("Select * from product_a_import");
        }

        private void getLolos(string Sql)
        {
            flowLayoutPanel1.Controls.Clear();
            MySqlCommand cmd = new MySqlCommand(Sql, Conn);
            MySqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                lolo lolo = new lolo(reader[2].ToString(), reader[1].ToString(), reader[5].ToString(), reader[4].ToString());
                flowLayoutPanel1.Controls.Add(lolo);
            }
            reader.Close();
        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {
            string select = "SELECT * FROM motornoe_maslo.product_a_import " +
                $"where `﻿Наименование_товара` like '%{textBox1.Text}%'; ";
                //$"and `Описание` like '%{textBox1.Text}%'; ";
            getLolos(select);

        }

        private void Form1_FormClosing(object sender, FormClosingEventArgs e)
        {
            Conn.Close();
        }
    }
}
