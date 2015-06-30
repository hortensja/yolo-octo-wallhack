using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;



namespace SwietnyProjektNaGitHubie
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var fromAddress = new MailAddress("swietnyprojekt@gmail.com");//, "Hortensja");
            var toAddress = new MailAddress(TextBox1.Text, "Szanowny Gość");
            const string fromPassword = "yoloyolo";
            const string subject = "Wiadomość ze świetnej strony";



            string wiadomosc = "Dzień dobry, Wasza ";

            switch (ListBox1.SelectedIndex)
            {
                case 1:
                    wiadomosc += "Ekscelencjo";
                    break;
                case 2:
                    wiadomosc += "Magnificencjo";
                    break;
                case 3:
                    wiadomosc += "Eminencjo";
                    break;
                case 4:
                    wiadomosc += "Królewskość";
                    break;
                case 5:
                    wiadomosc += "Szlachetność";
                    break;
                case 6:
                    wiadomosc += "Miłość";
                    break;
                case 0:
                    wiadomosc += "Wspaniałość";
                    break;
                default:
                    wiadomosc += "Wysokość";
                    break;
            }

            DateTime data = Calendar1.SelectedDate;

            if (data>DateTime.Now)
                wiadomosc += "!\nWybrałeś w kalendarzu zacną przyszłą datę ";
            else if (data < DateTime.Now)
                wiadomosc += "!\nWybrałeś w kalendarzu zacną przeszłą datę ";
            else
                wiadomosc += "!\nWybrałeś w kalendarzu zacną dzisiejszą datę ";


           // const string body = wiadomosc;


            wiadomosc += data.Day.ToString();
            wiadomosc += ".";
            wiadomosc += data.Month.ToString();
            wiadomosc += ".";
            wiadomosc += data.Year.ToString();
            wiadomosc += " roku.\n";

            wiadomosc += "Ten Projekt stanowczo zasługuje na najwyższą ocenę, ponieważ ";

            switch (ListBox2.SelectedIndex)
            {
                case 1:
                    wiadomosc += "wspaniale wysyła maile, więc spełnia wszystkie kryteria";
                    break;
                case 2:
                    wiadomosc += "jego głównym kolorem jest Hot Pink";
                    break;
                case 3:
                    wiadomosc += "wcale nie był robiony na ostatnią chwilę";
                    break;
                case 4:
                    wiadomosc += "zawiera najpiękniejszą grafikę na świecie";
                    break;
                case 5:
                    wiadomosc += "jest ciekawszy nawet niż soczewki berylowe";
                    break;
                case 0:
                    wiadomosc += "lorem ipsum dolor sit amet";
                    break;
                default:
                    wiadomosc += "jest najlepszy";
                    break;
            }

            wiadomosc += ".\nZ góry dziękuję i składam wyrazy uszanowanka.\n";
            wiadomosc += "Twórca Świetnego Projektu,\nJoanna Cichowska i spółka\n";
            wiadomosc += "PS Aby otrzymać inne wersje maila, uprasza się o wybranie innych opcji z menu!";



            var smtp = new SmtpClient
            {
                Host = "smtp.gmail.com",
                Port = 587,
                EnableSsl = true,
                DeliveryMethod = SmtpDeliveryMethod.Network,
               // UseDefaultCredentials = false,
                Credentials = new NetworkCredential(fromAddress.Address, fromPassword)
            };
            using (var message = new MailMessage(fromAddress, toAddress)
            {
                Subject = subject,
                Body = wiadomosc
            })
            try
            {
                smtp.Send(message);
            }
            catch
            {
                
            }





            Label1.Text = "Wysłano maila, Wasza Dostojność!";
        }

       

        
    }
}