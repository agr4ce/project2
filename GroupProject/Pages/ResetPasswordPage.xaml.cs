using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Effects;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

using System.Net.Mail;
using System.Net;
using GroupProject;
using System.Text.RegularExpressions;

namespace WpfApplication1.Pages
{
    /// <summary>
    /// Логика взаимодействия для ResetPasswordPage.xaml
    /// </summary>
    public partial class ResetPasswordPage : Page
    {
        public ResetPasswordPage()
        {
            InitializeComponent();
        }

        public string SendedCode
        {
            get; set;
        }

        private void SendCodeButton_Click(object sender, RoutedEventArgs e)
        {
            Regex regex = new Regex(@"^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$");

            Match match = regex.Match(EmailTextBox.Text);

            if (match.Success)
            {
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
                MailAddress to = new MailAddress(EmailTextBox.Text);

                // создаем объект сообщения
                MailMessage m = new MailMessage(from, to);
                // тема письма
                m.Subject = "E-mail verification";
                // текст письма
                Random r = new Random();
                int rInt = r.Next(1000, 9999);
                SendedCode = rInt.ToString();

                m.Body = $"<h2>Код подтверждения: {rInt}</h2>";

                // письмо представляет код html
                m.IsBodyHtml = true;

                // отправляем письмо
                try
                {
                    smtp.Send(m);
                }
                catch (Exception)
                {
                    MessageWindow message = new("Something went wrong :(");
                    message.Show();
                }
            }
            else
            {
                MessageWindow message = new("incorrect email");
                message.Show();
            }
        }

        private void SignInButton_Click(object sender, RoutedEventArgs e)
        {
            if (SendedCode == CodeTextBox.Text)
            {
                SetNewPasswordPage setNewPasswordPage = new SetNewPasswordPage();
                setNewPasswordPage.Email = EmailTextBox.Text;
                NavigationService.Navigate(setNewPasswordPage);
            }
            else
            {
                MessageWindow message = new("Incorrect Code");
                message.Show();
            }
        }

        private void BackButton_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.GoBack();
        }
    }
}
