﻿using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


namespace Assignment_04_C_sharp_Code
{
    internal class Program
    {
        static void Main(string[] args)
        {
            try
            {
                string connection = @"Data Source=INLPF3KTP43\MSSQLSERVER1;Initial Catalog=nisha;trusted_connection=true";

                SqlConnection conn = new SqlConnection(connection) ;
                conn.Open();

                Console.WriteLine("Enter the Name:");
                string name = Console.ReadLine();

              

                SqlCommand cmd = new SqlCommand("p2",conn);
              
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
               
                cmd.Parameters.Add("@d_s_name", System.Data.SqlDbType.VarChar).Value = name;
               
                SqlDataReader reader = cmd.ExecuteReader();

                Console.WriteLine();
                while (reader.Read())
                {
                    
                    Console.Write("\n"+reader[0] + "  ");
                    Console.Write(reader[1] + "  ");
                    Console.WriteLine();

                }
                reader.Close();

                Console.WriteLine("Code Running Successfully successfully");
              
                conn.Close();
            }
            catch (SqlException exp)
            {
                Console.WriteLine(exp.Message);
                Console.WriteLine("SQL Based Error!!");
            }
            catch (Exception ep)
            {
                Console.WriteLine(ep.Message);
                Console.WriteLine("C-Sharp Based Error!!");
            }
        }
    }
}