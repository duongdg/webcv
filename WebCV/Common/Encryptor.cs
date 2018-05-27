using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;

namespace WebCV.Common
{
    public static class Encryptor
    {
        public static string MD5Hash(string text)
        {
            MD5 md5 = new MD5CryptoServiceProvider();

            //compute hash from the bytes of text
            md5.ComputeHash(ASCIIEncoding.ASCII.GetBytes(text));

            //get hash result after compute it
            byte[] result = md5.Hash;

            StringBuilder strBuilder = new StringBuilder();
            for (int i = 0; i < result.Length; i++)
            {
                //change it into 2 hexadecimal digits
                //for each byte
                strBuilder.Append(result[i].ToString("x2"));
            }

            return strBuilder.ToString();
        }
        //public static string Encode(string input)
        //{
        //    byte[] data;
        //    data = MD5.Create().ComputeHash(Encoding.UTF8.GetBytes(input));
        //    StringBuilder sBuilder = new StringBuilder();
        //    for (int i = 0; i < data.Length; i++)
        //    {
        //        sBuilder.Append(data[i].ToString("x2"));
        //    }
        //    return sBuilder.ToString();
        //}
    }
}