using GroupProject;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Navigation;

namespace WpfApplication1.Pages
{
    /// <summary>
    /// Логика взаимодействия для SetNewPasswordPage.xaml
    /// </summary>
    public partial class SetNewPasswordPage : Page
    {
        public SetNewPasswordPage()
        {
            InitializeComponent();
        }

        public string Email
        {
            get; set;
        }

        private void SignInButton_Click(object sender, RoutedEventArgs e)
        {
            if (PasswordBox.Password == ConfirmPasswordBox.Password)
            {
                GroupProject.Database database = new GroupProject.Database();

                database.OpenConnection();
                database.UpdateUserPassword(PasswordBox.Password, Email);
                database.CloseConnection();

                AuthorizatonPage authorizatonPage = new AuthorizatonPage();
                NavigationService.Navigate(authorizatonPage);
            }
            else
            {
                MessageWindow message = new("passwords don't match");
                message.Show();
            }
        }

        private void BackButton_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.GoBack();
        }
    }

}
