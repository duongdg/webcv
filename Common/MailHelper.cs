using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Configuration;
using System.Net;
using System.Net.Mail;

namespace Common
{
    public class MailHelper
    {
        public void SendMail(string ToEmailAddress, string subject, string content)
        {
            var FormEmailAddress = ConfigurationManager.AppSettings["FormEmailAddress"].ToString();
            var FormEmailDisplayName = ConfigurationManager.AppSettings["FormEmailDisplayName"].ToString();
            var FormEmailPassword = ConfigurationManager.AppSettings["FormEmailPassword"].ToString();
            var SMTPHost = ConfigurationManager.AppSettings["SMTPHost"].ToString();
            var SMTPPort = ConfigurationManager.AppSettings["SMTPPort"].ToString();
            bool EnableSSL = bool.Parse(ConfigurationManager.AppSettings["EnableSSL"].ToString());
            string body = content;
            MailMessage message = new MailMessage(new MailAddress(FormEmailAddress, FormEmailDisplayName), new MailAddress(ToEmailAddress));
            message.Subject = subject;
            message.IsBodyHtml = true;
            message.Body = body;
            var client = new SmtpClient();
            client.Credentials = new NetworkCredential(FormEmailAddress, FormEmailPassword);
            client.Host = SMTPHost;
            client.EnableSsl = EnableSSL;
            client.Port = !string.IsNullOrEmpty(SMTPPort) ? Convert.ToInt32(SMTPPort) : 0;
            client.Send(message);
        }
    }
}
