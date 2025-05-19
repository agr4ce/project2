using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GroupProject
{
    class Database
    {
        public const string connectionString = "server=141.8.192.82;uid=a0885391;" + "pwd=maepsiugur;database=a0885391_fileManager";
        MySqlConnection connection = new MySqlConnection(connectionString);

        public void OpenConnection()
        {
            if (connection.State == System.Data.ConnectionState.Closed)
            {
                connection.Open();
            }
        }

        public void CloseConnection()
        {
            if (connection.State == System.Data.ConnectionState.Open)
            {
                connection.Close();
            }
        }

        public MySqlConnection GetConnection()
        {
            return connection;
        }

        public bool UserExist(string name, string password) 
        {
            string query = $"Select Name From User WHERE Name = '{name}' AND Password = '{password}'";
            MySqlCommand command = new MySqlCommand(query, connection);
            try
            {
                if (command.ExecuteScalar() != null)
                    return true;
                else if (command.ExecuteScalar() == null)
                    return false;
                else
                    return false;
            }
            catch (Exception)
            {
                return false;
            }
        }

        public void CreateUser(string name, string password, string email)
        {
            string query = $"INSERT User (Name,Password,Email,idRole) " +
                           $"VALUES('{name}', '{password}', '{email}', 1)";
            MySqlCommand command = new MySqlCommand(query, connection);
            command.ExecuteNonQuery();
        }

        public void UpdateUserPassword(string password, string email)
        {
            string query = $"UPDATE User SET Password = '{password}' WHERE Email = '{email}'";
            MySqlCommand command = new MySqlCommand(query, connection);
            command.ExecuteNonQuery();
        }
    }
}
