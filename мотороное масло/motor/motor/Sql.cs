using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MySql.Data.MySqlClient;

namespace motor
{

        public class Sql
        {
        static string connectionString = "server=127.0.0.1;user=root;database=motornoe_maslo;password=123456";

        static public MySqlConnection Connection = new MySqlConnection(connectionString);

            public void ConectionBD()
            {
                Connection.Open();
            }
        }  
}
