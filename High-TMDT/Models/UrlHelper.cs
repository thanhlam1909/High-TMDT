using System.Globalization;
using System.Text;
using System.Text.RegularExpressions;

namespace High_Webbanquanao.Models
{
    public class UrlHelper
    {
        public static string GenerateUrlFriendlyString(string input)
        {
            // Replace spaces with hyphens
            string urlFriendly = input.Replace(" ", "-");

            // Remove special characters
            urlFriendly = RemoveDiacritics(urlFriendly);

            // Remove non-alphanumeric and non-hyphen characters
            urlFriendly = Regex.Replace(urlFriendly, "[^a-zA-Z0-9-]", "");

            // Convert to lowercase
            urlFriendly = urlFriendly.ToLower();

            return urlFriendly;
        }

        // Function to remove diacritics (accents) from a string
        private static string RemoveDiacritics(string input)
        {
            string normalizedString = input.Normalize(NormalizationForm.FormD);
            StringBuilder stringBuilder = new StringBuilder();

            foreach (char c in normalizedString)
            {
                UnicodeCategory unicodeCategory = CharUnicodeInfo.GetUnicodeCategory(c);
                if (unicodeCategory != UnicodeCategory.NonSpacingMark)
                {
                    stringBuilder.Append(c);
                }
            }

            return stringBuilder.ToString().Normalize(NormalizationForm.FormC);
        }
    }
}
