using Ionic.Zip;
using Microsoft.Win32;
using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Text.RegularExpressions;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;

namespace GroupProject
{
    /// <summary>
    /// Логика взаимодействия для MWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {


        public MainWindow()
        {
            InitializeComponent();
        }

        public string UserName
        {
            get { return userNameTextBlock.Text; }
            set { userNameTextBlock.Text = value; }
        }

        public string fileName { get; set; }

        internal List<FileDirectoryInfo> fileList { get; set; }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            GetCloudFiles();
        }

        private void CloseImage_MouseLeftButtonDown(object sender, MouseButtonEventArgs e)
        {
            this.Close();
        }

        private void LocalDriveRadioButton_Click(object sender, RoutedEventArgs e)
        {
            GetLocalFiles();
        }

        public void GetLocalFiles()
        {
            using (ZipFile zip = new ZipFile())
            {

                zip.Password = UserName;

                if (Directory.Exists(Directory.GetCurrentDirectory() + $@"\{UserName}") == false)
                {
                    Directory.CreateDirectory(UserName);
                }

                if (Directory.Exists(Directory.GetCurrentDirectory() + $@"\{UserName}_archive") == false)
                {
                    Directory.CreateDirectory(UserName + "_archive");
                }

                zip.AddDirectory(Directory.GetCurrentDirectory() + $@"\{UserName}");
                zip.Save(Directory.GetCurrentDirectory() + $@"\{UserName}_archive\{UserName}.zip");

                string[] files = Directory.GetFiles(Directory.GetCurrentDirectory() + $@"\{UserName}");

                List<FileDirectoryInfo> list = new List<FileDirectoryInfo>();
                FileDirectoryInfo fileDirectory = new FileDirectoryInfo();

                foreach (string file in files)
                {
                    FileInfo fileInfo = new FileInfo(file);

                    int fileSize = (int)fileInfo.Length;
                    fileSize = fileSize / 1024;

                    fileDirectory.Name = fileInfo.Name;
                    fileDirectory.Date = fileInfo.CreationTime.ToShortDateString();
                    fileDirectory.FileSize = fileSize.ToString() + " kB";

                    list.Add(fileDirectory);
                }

                CloudFileDataGrid.ItemsSource = list;
                fileList = list;
            }
        }

        private void MyCloudRadioButton_Click(object sender, RoutedEventArgs e)
        {
            GetCloudFiles();
        }

        private void GetCloudFiles()
        {
            FtpClient ftpClient = new FtpClient("ftp://141.8.192.82", "a0885391", "maepsiugur");
            Database database = new Database();

            Regex regex = new Regex(@"^([d-])([rwxt-]{3}){3}\s+\d{1,}\s+.*?(\d{1,})\s+(\w+\s+\d{1,2}\s+(?:\d{4})?)(\d{1,2}:\d{2})?\s+(.+?)\s?$",
                    RegexOptions.Compiled | RegexOptions.Multiline | RegexOptions.IgnoreCase | RegexOptions.IgnorePatternWhitespace);

            ftpClient.ChangeWorkingDirectory(UserName);
            List<FileDirectoryInfo> list = ftpClient.ListDirectoryDetails()
                                                 .Select(s =>
                                                 {
                                                     Match match = regex.Match(s);
                                                     if (match.Length > 5)
                                                     {

                                                         string size = "";
                                                         size = (Int32.Parse(match.Groups[3].Value.Trim()) / 1024).ToString() + " kB";

                                                         return new FileDirectoryInfo(size, match.Groups[6].Value, match.Groups[4].Value, ftpClient.uri);
                                                     }
                                                     else return new FileDirectoryInfo();
                                                 }).ToList();

            list.RemoveRange(0, 2);

            foreach (var file in list)
            {
                file.Date = ftpClient.GetDateTimestamp(file.Name).ToShortDateString();
            }

            CloudFileDataGrid.ItemsSource = list;
            CloudFileDataGrid.SelectedIndex = 0;
            fileList = list;
        }

        private void UploadFileButton_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                FtpClient ftpClient = new FtpClient("ftp://141.8.192.82", "a0885391", "maepsiugur");
                OpenFileDialog openFileDialog = new OpenFileDialog();

                if (openFileDialog.ShowDialog() == true)
                {
                    ftpClient.UploadFile(openFileDialog.FileName, $"{UserName}/{openFileDialog.SafeFileName}");
                    MessageWindow messageWindow = new MessageWindow("Success!");
                    messageWindow.Show();
                    GetCloudFiles();
                }

            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
        }

        private void CloudFileDataGrid_SelectedCellsChanged(object sender, System.Windows.Controls.SelectedCellsChangedEventArgs e)
        {
            FileDirectoryInfo item = new FileDirectoryInfo("", "", "", "");

            item = (FileDirectoryInfo)CloudFileDataGrid.SelectedItem;
            if (item != null)
            {

                fileNameTextBlock.Text = item.Name;
                fileSizeTextBlock.Text = item.FileSize;
                fileDateTextBlock.Text = item.Date;
            }
        }

        private void DeleteButton_Click(object sender, RoutedEventArgs e)
        {
            if ((bool)MyCloudRadioButton.IsChecked)
            {
                FtpClient ftpClient = new FtpClient("ftp://141.8.192.82", "a0885391", "maepsiugur");
                ftpClient.ChangeWorkingDirectory(UserName);

                ftpClient.DeleteFile(fileNameTextBlock.Text);

                GetCloudFiles();
            }
            if ((bool)LocalDriveRadioButton.IsChecked)
            {
                if (File.Exists(Directory.GetCurrentDirectory() + $@"\{UserName}\{fileNameTextBlock.Text}"))
                {
                    File.Delete(Directory.GetCurrentDirectory() + $@"\{UserName}\{fileNameTextBlock.Text}");
                }
                else
                {
                    MessageWindow messageWindow = new MessageWindow("Something went wrong...");
                }

                GetLocalFiles();
            }
        }

        private void DownloadButton_Click(object sender, RoutedEventArgs e)
        {
            using (ZipFile zip = new ZipFile())
            {
                zip.Password = UserName;

                FtpClient ftpClient = new FtpClient("ftp://141.8.192.82", "a0885391", "maepsiugur");
                ftpClient.ChangeWorkingDirectory(UserName);

                ftpClient.DownloadFile(UserName + "\\" + fileNameTextBlock.Text, Directory.GetCurrentDirectory() + $@"\{UserName}");
                zip.AddDirectory(Directory.GetCurrentDirectory() + $@"\{UserName}");
            }
        }

        private void SearchTextBox_TextChanged(object sender, TextChangedEventArgs e)
        {
            var selectedFiles = from f in fileList
                                where f.Name.ToLower().Contains(SearchTextBox.Text.ToLower())
                                orderby f.Name
                                select f;
            CloudFileDataGrid.ItemsSource = selectedFiles;
        }

        private void DateModifiedComboBox_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {

            if (DateModifiedComboBox.SelectedIndex == 4)
            {
                BeforeDatePicker.Visibility = Visibility.Visible;
                AfterDatePicker.Visibility = Visibility.Visible;
            }
            else
            {
                BeforeDatePicker.Visibility = Visibility.Hidden;
                AfterDatePicker.Visibility = Visibility.Hidden;
            }
        }

        private void InfoButton_Click(object sender, RoutedEventArgs e)
        {
            InfoWindow infoWindow = new InfoWindow();
            infoWindow.Show();
        }

        private void RenameButton_Click(object sender, RoutedEventArgs e)
        {

            if (fileNameTextBlock.Focusable == false)
            {
                fileName = fileNameTextBlock.Text;
                fileNameTextBlock.Focusable = true;
                RenameButtonIcon.Kind = MaterialDesignThemes.Wpf.PackIconKind.Check;
            }
            else
            {
                fileNameTextBlock.Focusable = false;
                RenameButtonIcon.Kind = MaterialDesignThemes.Wpf.PackIconKind.Rename;
                if (MyCloudRadioButton.IsChecked == true)
                {
                    FtpClient client = new("ftp://141.8.192.82", "a0885391", "maepsiugur");
                    client.ChangeWorkingDirectory(UserName);
                    client.Rename(fileName, fileNameTextBlock.Text);
                    GetCloudFiles();
                }
                else
                {
                    File.Move(Directory.GetCurrentDirectory() + $@"\{UserName}\{fileName}", Directory.GetCurrentDirectory() + $@"\{UserName}\{fileNameTextBlock.Text}");
                    GetLocalFiles();
                }
            }
        }

        private void ResetButton_Click(object sender, RoutedEventArgs e)
        {
            DateModifiedComboBox.SelectedIndex = -1;
            TypeComboBox.SelectedIndex = -1;
            CloudFileDataGrid.ItemsSource = fileList;

            MessageBox.Show(DateTime.Now.AddDays(-1).ToShortDateString());
        }

        private void SearchButton_Click(object sender, RoutedEventArgs e)
        {
            
            if (TypeComboBox.SelectedIndex == 0)
            {
                var selectedFiles = from f in fileList
                                    where (f.Name.ToLower().EndsWith(".txt")) || (f.Name.ToLower().EndsWith(".doc")) || (f.Name.ToLower().EndsWith(".docx")) || (f.Name.ToLower().EndsWith(".rtf")) || (f.Name.ToLower().EndsWith(".odt"))
                                    orderby f.Name
                                    select f;
                CloudFileDataGrid.ItemsSource = selectedFiles; 
            }
            else if (TypeComboBox.SelectedIndex == 1)
            {
                var selectedFiles = from f in fileList
                                    where (f.Name.ToLower().EndsWith(".jpg")) || (f.Name.ToLower().EndsWith(".jpeg")) || (f.Name.ToLower().EndsWith(".png")) || (f.Name.ToLower().EndsWith(".bmp")) || (f.Name.ToLower().EndsWith(".gif"))
                                    orderby f.Name
                                    select f;
                CloudFileDataGrid.ItemsSource = selectedFiles;
            }
            else if (TypeComboBox.SelectedIndex == 2)
            {
                var selectedFiles = from f in fileList
                                    where (f.Name.ToLower().EndsWith(".wav")) || (f.Name.ToLower().EndsWith(".mp3")) || (f.Name.ToLower().EndsWith(".midi")) || (f.Name.ToLower().EndsWith(".kar"))
                                    orderby f.Name
                                    select f;
                CloudFileDataGrid.ItemsSource = selectedFiles;
            }
            else if (TypeComboBox.SelectedIndex == 3)
            {
                var selectedFiles = from f in fileList
                                    where (f.Name.ToLower().EndsWith(".asf")) || (f.Name.ToLower().EndsWith(".flv")) || (f.Name.ToLower().EndsWith(".mkv")) || (f.Name.ToLower().EndsWith(".mp4"))
                                    orderby f.Name
                                    select f;
                CloudFileDataGrid.ItemsSource = selectedFiles;
            }


            if (DateModifiedComboBox.SelectedIndex == 0)
            {
                var selectedFiles = from f in fileList
                                    where (f.Date == (DateTime.Now.ToShortDateString()))
                                    orderby f.Name
                                    select f;
                CloudFileDataGrid.ItemsSource = selectedFiles;
            }
            if (DateModifiedComboBox.SelectedIndex == 1)
            {
                var selectedFiles = from f in fileList
                                    where (f.Date == (DateTime.Now.AddDays(-1).ToShortDateString()))
                                    orderby f.Name
                                    select f;
                CloudFileDataGrid.ItemsSource = selectedFiles;
            }
            if (DateModifiedComboBox.SelectedIndex == 1)
            {
                var selectedFiles = from f in fileList
                                    where (f.Date == (DateTime.Now.ToShortDateString()) 
                                           || f.Date == (DateTime.Now.AddDays(-1).ToShortDateString())
                                           || f.Date == (DateTime.Now.AddDays(-2).ToShortDateString())
                                           || f.Date == (DateTime.Now.AddDays(-3).ToShortDateString())
                                           || f.Date == (DateTime.Now.AddDays(-4).ToShortDateString())
                                           || f.Date == (DateTime.Now.AddDays(-5).ToShortDateString())
                                           || f.Date == (DateTime.Now.AddDays(-6).ToShortDateString()))
                                    orderby f.Name
                                    select f;
                CloudFileDataGrid.ItemsSource = selectedFiles;
            }
        }
    }
}
