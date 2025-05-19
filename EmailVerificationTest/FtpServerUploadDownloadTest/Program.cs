using System.Text.RegularExpressions;

FtpServerUploadDownloadTest.Client client = new FtpServerUploadDownloadTest.Client("ftp://141.8.192.82", "a0885391", "maepsiugur");

string chose = "0";
Console.WriteLine("1 download file\n2 upload file\n3 file list\n ");
chose = Console.ReadLine();

switch (chose)
{
    case "1":
        try
        {
            client.DownloadFile("test/test.txt", "downloadTest.txt");
            Console.WriteLine("Успех");
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.Message);
        }
        break;

    case "2":
        try
        {
            client.UploadFile("uploadTest.txt", "test/uploadTest.txt");
            Console.WriteLine("Успех");
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.Message);
        }
        break;

    case "3":
        Regex regex = new Regex(@"^([d-])([rwxt-]{3}){3}\s+\d{1,}\s+.*?(\d{1,})\s+(\w+\s+\d{1,2}\s+(?:\d{4})?)(\d{1,2}:\d{2})?\s+(.+?)\s?$",
                    RegexOptions.Compiled | RegexOptions.Multiline | RegexOptions.IgnoreCase | RegexOptions.IgnorePatternWhitespace);

        // Получаем список корневых файлов и папок
        // Используется LINQ to Objects и регулярные выражения
        List<FtpServerUploadDownloadTest.FileDirectoryInfo> lists = client.ListDirectoryDetails()
                                             .Select(s =>
                                             {
                                                 Match match = regex.Match(s);
                                                 if (match.Length > 5)
                                                 {
                                                             // Устанавливаем тип, чтобы отличить файл от папки (используется также для установки рисунка)
                                                     string type = match.Groups[1].Value == "d" ? "DIR.png" : "FILE.png";

                                                             // Размер задаем только для файлов, т.к. для папок возвращается
                                                             // размер ярлыка 4кб, а не самой папки
                                                     string size = "";
                                                     if (type == "FILE.png")
                                                         size = (Int32.Parse(match.Groups[3].Value.Trim()) / 1024).ToString() + " кБ";

                                                     return new FtpServerUploadDownloadTest.FileDirectoryInfo(size, type, match.Groups[6].Value, match.Groups[4].Value, client.uri);
                                                 }
                                                 else return new FtpServerUploadDownloadTest.FileDirectoryInfo();
                                             }).ToList();

        // Добавить поле, которое будет возвращать пользователя на директорию выше
        lists.Add(new FtpServerUploadDownloadTest.FileDirectoryInfo("", "DEFAULT.png", "...", "", client.uri));
        lists.Reverse();

        // Отобразить список в ListView
        foreach (var list in lists) 
        {
            Console.WriteLine(list.fileInfoToString());
        }
        break;

    default:
        Console.WriteLine("код, выполняемый если выражение не имеет ни одно из выше указанных значений"); 
        break;
}


