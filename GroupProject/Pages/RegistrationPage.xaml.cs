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
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Media.Effects;

using System.Net.Mail;
using System.Net;
using System.Text.RegularExpressions;

namespace GroupProject.Pages
{
    /// <summary>
    /// Логика взаимодействия для RegistrationPage.xaml
    /// </summary>
    public partial class RegistrationPage : Page
    {
        public RegistrationPage()
        {
            InitializeComponent();

            Random r = new Random();
            int rInt = r.Next(1000, 9999);
            string v = rInt.ToString();

            SendedCodeTextBox.Text = v;
        }

        public string SendedCode 
        {
            set { SendedCode = value; }
            get { return SendedCode; }
        }

        public void SendCodeButton_Click(object sender, RoutedEventArgs e)
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
                m.Body = $"<h1>Код подтверждения: {SendedCodeTextBox.Text}</h1>";

                // письмо представляет код html
                m.IsBodyHtml = true;

                // отправляем письмо
                try
                {
                    smtp.Send(m);
                }
                catch (Exception)
                {
                    MessageBox.Show("что-то пошло не так...");
                }

                CodeTextBox.Visibility = Visibility.Visible;
            }
            else
                MessageBox.Show("некорректный email");
        }

        public void SignInButton_Click(object sender, RoutedEventArgs e)
        {
            if (LoginTextBox.Text.Length > 0 || PasswordBox.Password.Length > 0)
            {
                if (PasswordBox.Password == ConfirmPasswordBox.Password)
                {
                    if (SendedCodeTextBox.Text  == CodeTextBox.Text)
                    {
                        Database database = new Database();
                        FtpClient ftpClient = new FtpClient("ftp://141.8.192.82", "a0885391", "maepsiugur");
                        database.OpenConnection();
                        database.CreateUser(LoginTextBox.Text, PasswordBox.Password, EmailTextBox.Text);
                        database.CloseConnection();

                        ftpClient.MakeDirectory(LoginTextBox.Text);

                        WpfApplication1.Pages.AuthorizatonPage authorizatonPage = new WpfApplication1.Pages.AuthorizatonPage();
                        NavigationService.Navigate(authorizatonPage);
                    }
                    else
                        MessageBox.Show("Код из письма введен неверно");
                }
                else
                    MessageBox.Show("Пароли не совпадают");
            }
            else
                MessageBox.Show("Не заполнен логин или пароль");
        }
    }
}
