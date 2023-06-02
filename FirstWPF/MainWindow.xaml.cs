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

namespace FirstWPF
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        private void TextBox_TextChanged(object sender, TextChangedEventArgs e)
        {

        }

        private void btn_reverse_Click(object sender, RoutedEventArgs e)
        {
            string str = tb_message.Text;
            str = ReverseString(str);
            tb_message.Text = str;
        }

        private void btn_ceasar_Click(object sender, RoutedEventArgs e)
        {
            tb_output1.Foreground = Brushes.Black;
            string str = tb_message.Text;
            try
            {
                string shift_str = tb_shift.Text;
                int shift = int.Parse(shift_str);
                str = str.ToUpper();
                str = Encrypt(str, shift).ToLower();
                tb_output1.Text = str;
            }
            catch
            {
                tb_output1.Foreground = Brushes.Red;
                tb_output1.Text = "ENTER SHIFT VALUE";
            }

        }

        private void btn_decrypt_Click(object sender, RoutedEventArgs e)
        {
            tb_output2.Foreground = Brushes.Black;
            string str = tb_message.Text;
            try
            {
                string shift_str = tb_shift.Text;
                int shift = int.Parse(shift_str);
                str = str.ToUpper();
                str = Decrypt(str, shift).ToLower();
                tb_output2.Text = str;
            }
            catch (Exception ex)
            {
                tb_output2.Foreground = Brushes.Red;
                tb_output2.Text = "ENTER SHIFT VALUE";
            }
        }



        // my little reverse string method
        private static string ReverseString(string input)
        {
            char[] charArray = input.ToCharArray();
            Array.Reverse(charArray);
            return new string(charArray);
        }

        // my little caesar encryption method
        private static string Encrypt(string plaintext, int key) {
            string ciphertext = "";
            while (key < 0) {
                key += 26;
            }

            foreach (char c in plaintext) {
                if (Char.IsLetter(c)) {
                    char shifted = (char)(((c - 'A') + key) % 26 + 'A');
                    ciphertext += shifted;
                }
                else {
                    ciphertext += c;
                }
            }

            return ciphertext;
        }

        // my little decryption method
        private static string Decrypt(string ciphertext, int key) {
            string decrypted = "";
            while (key < 0) {
                key += 26;
            }

            foreach (char c in ciphertext) {
                if (Char.IsLetter(c)) {
                    char shifted = (char)(((c - 'A') - key + 26) % 26 + 'A');
                    decrypted += shifted;
                }
                else {
                    decrypted += c;
                }
            }
            return decrypted;
        }
    }
}
