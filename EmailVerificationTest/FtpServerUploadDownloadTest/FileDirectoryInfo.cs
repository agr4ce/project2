using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FtpServerUploadDownloadTest
{
    internal class FileDirectoryInfo
    {
        string fileSize;
        string type;
        string name;
        string date;
        public string adress;

        public string FileSize
        {
            get { return fileSize; }
            set { fileSize = value; }
        }

        public string Type
        {
            get { return type; }
            set { type = value; }
        }

        public string Name
        {
            get { return name; }
            set { name = value; }
        }

        public string Date
        {
            get { return date; }
            set { date = value; }
        }

        public FileDirectoryInfo() { }

        public FileDirectoryInfo(string fileSize, string type, string name, string date, string adress)
        {
            FileSize = fileSize;
            Type = type;
            Name = name;
            Date = date;
            this.adress = adress;
        }

        public string fileInfoToString() 
        {
            string fileInfo = this.FileSize + " " + this.type + " " + this.name + " " + this.date + " " + this.adress + "\n";
            return fileInfo;
        }
    }
}
