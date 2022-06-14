using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using MySql.Data.MySqlClient;

namespace motor
{
    public partial class lolo : UserControl
    {
        public lolo(string filename, string productName, string price, string active)
        {

            InitializeComponent();
            
                label1.Text = productName;
                label2.Text = price + " рублей";
                label3.Text = "Активен: " + active;
                pictureBox1.Image = Image.FromFile($@"{Environment.CurrentDirectory}\{filename}");

      
            if (active == " нет")
            {
                this.BackColor = System.Drawing.Color.Gray;
            }
                      
        }
        private void lolo_Load(object sender, EventArgs e)
        {

        }

        private void label1_Click(object sender, EventArgs e)
        {

        }
    }
}
