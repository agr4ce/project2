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
using GroupProject;

using MySql.Data.MySqlClient;

namespace WpfApplication1.Pages
{
    /// <summary>
    /// Логика взаимодействия для AuthorizatonPage.xaml
    /// </summary>
    public partial class AuthorizatonPage : Page
    {
        public AuthorizatonPage()
        {
            InitializeComponent();
        }

        private void SignUpLabel_MouseEnter(object sender, MouseEventArgs e)
        {
            SignUpLabel.FontWeight = FontWeights.Bold;
        }

        private void SignUpLabel_MouseLeave(object sender, MouseEventArgs e)
        {
            SignUpLabel.FontWeight = FontWeights.Normal;
        }

        private void ForgotPasswordLabel_MouseEnter(object sender, MouseEventArgs e)
        {
            ForgotPasswordLabel.FontWeight = FontWeights.Bold;
        }

        private void ForgotPasswordLabel_MouseLeave(object sender, MouseEventArgs e)
        {
            ForgotPasswordLabel.FontWeight = FontWeights.Normal;
        }

        private void SignInButton_Click(object sender, RoutedEventArgs e)
        {
            Database database = new Database();
            database.OpenConnection();

            if (database.UserExist(UserTextBox.Text, PasswordBox.Password))
            {
                MainWindow window = new MainWindow();
                window.UserName = UserTextBox.Text;
                window.Show();
                database.CloseConnection();
                Application.Current.MainWindow.Close();

            }
            else
            { 
                MessageWindow message = new("Incorrect login or password");
                message.Show();
            }
        }

        private void SignUpLabel_MouseLeftButtonUp(object sender, MouseButtonEventArgs e)
        {
            GroupProject.Pages.SignUpPage registrationPage = new GroupProject.Pages.SignUpPage();
            NavigationService.Navigate(registrationPage);
        }

        private void ForgotPasswordLabel_MouseLeftButtonUp(object sender, MouseButtonEventArgs e)
        {
            ResetPasswordPage resetPasswordPage = new ResetPasswordPage();
            NavigationService.Navigate(resetPasswordPage);
        }
    }
}
