using Microsoft.AspNetCore.Http;
using System;
using System.IO;

namespace High_TMDT.Models
{
    public class UploadHinh
    {
        public string Upload(IFormFile filehinh, string folderName)
        {
            try
            {
                if (filehinh == null || filehinh.Length == 0)
                {
                    // Handle invalid file
                    return string.Empty;
                }

                // Validate file type, size, etc. here if needed

                var fileName = $"{DateTime.Now.Ticks}_{filehinh.FileName}";
                var fullPath = Path.Combine(Directory.GetCurrentDirectory(), "wwwroot", folderName, fileName);

                // Ensure the destination folder exists
                var folderPath = Path.Combine(Directory.GetCurrentDirectory(), "wwwroot", folderName);
                if (!Directory.Exists(folderPath))
                {
                    Directory.CreateDirectory(folderPath);
                }

                using (var myFile = new FileStream(fullPath, FileMode.Create))
                {
                    filehinh.CopyTo(myFile);
                }

                return fileName;
            }
            catch (Exception ex)
            {
                // Log the exception or handle it more gracefully
                Console.WriteLine($"Error uploading file: {ex.Message}");
                return string.Empty;
            }
        }
    }
}
