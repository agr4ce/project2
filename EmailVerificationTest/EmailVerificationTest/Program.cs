using System.Net.Mail;
using System.Net;

// адрес smtp-сервера и порт, с которого будем отправлять письмо
SmtpClient smtp = new SmtpClient
{
    Host = "smtp.gmail.com",
    Port = 25,
    EnableSsl = true,
    DeliveryMethod = SmtpDeliveryMethod.Network,
    UseDefaultCredentials = false,
    Credentials = new NetworkCredential("PcsGroupProjectCloudService@gmail.com", "srcg iirf ejlg wlph"),
    Timeout = 20000
};

// отправитель - устанавливаем адрес и отображаемое в письме имя
MailAddress from = new MailAddress("PcsGroupProjectCloudService@gmail.com", "Pcs-01 Group Cloud Service E-mail verification");
// кому отправляем
MailAddress to = new MailAddress("mainmailsewyx@gmail.com");

// создаем объект сообщения
MailMessage m = new MailMessage(from, to);
// тема письма
m.Subject = "E-mail verification";
// текст письма
Random r = new Random();
int rInt = r.Next(1000, 9999);

m.Body = $"<h2>Код подтверждения: {rInt}</h2>";

// письмо представляет код html
m.IsBodyHtml = true;

// отправляем письмо
try
{
    smtp.Send(m);
}
catch (Exception ex)
{
    Console.WriteLine(ex);
}

Console.WriteLine("Письмо отправлено успешно.");

Console.ReadKey();