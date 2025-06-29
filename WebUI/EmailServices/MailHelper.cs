using System.Net;
using System.Net.Mail;

namespace WebUI.EmailServices
{
    public class MailHelper
    {
        //Her mail sağlayıcının kullanıcılarının kullanımına açtığı mail almak için:POP3, mail gönderimi için:SMTP(Simple Mail Transfer Protocol) servisleri vardır.
        //Email servisi olarak Gmail'e ait SMTP servisini kullanacağız.

        public static bool SendMail(string body, string to, string subject, bool isHtml = true)
        {
            return SendMail(body, new List<string> { to }, subject, isHtml);
        }

        public static bool SendMail(string body, List<string> to, string subject, bool isHtml = true)
        {
            bool result = false;

            try
            {
                var message = new MailMessage();

                message.Subject = subject;

                to.ForEach(x => //altanemre@gmail.com,yusuf@gmail.com
                {
                    message.To.Add(new MailAddress(x));
                });
                message.From = new MailAddress("test.altanemre1989@gmail.com");
                message.Body = body;
                message.IsBodyHtml = isHtml;

                using (var smtp = new SmtpClient())
                {
                    smtp.Host = "smtp.gmail.com";
                    smtp.EnableSsl = true;
                    smtp.Port = 587;
                    smtp.Credentials = new NetworkCredential("test.altanemre1989@gmail.com", "qzdx vnwz zanj hnrh");

                    smtp.Send(message);

                    result = true;
                }

            }

            catch (Exception)
            {

            }

            return result;
        }


    }

}
