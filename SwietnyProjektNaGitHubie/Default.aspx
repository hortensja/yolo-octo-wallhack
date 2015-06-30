<%@ Page Title="Strona główna" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="SwietnyProjektNaGitHubie._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1><span style="color: hotpink">Witamy Wasze Magnificencje</span></h1>
        <p class="lead">Zachęcamy do wypróbowania poniższych przycisków.<br />
            Ewentualnie wybrawszy uprzednio datę z kalendarza oraz inne opcje. 
        </p>

        
        <div class="row">
        <div class="col-md-4">
           
        <p>
            <asp:Calendar ID="Calendar1" runat="server" CellPadding="1" Height="200px" OnSelectionChanged="Calendar1_SelectionChanged" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Width="220px">
                <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                <OtherMonthDayStyle ForeColor="#999999" />
                <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                <WeekendDayStyle BackColor="#CCCCFF" />
            </asp:Calendar>
        </p>
        </div>
        <div class="col-md-4">
             <p>
                 <br />
            <asp:ListBox ID="ListBox1" runat="server" BackColor="#9999FF" Font-Names="Verdana" Font-Size="Small">
                <asp:ListItem>Powitanie 1</asp:ListItem>
                <asp:ListItem>Powitanie 2</asp:ListItem>
                <asp:ListItem>Powitanie 3</asp:ListItem>
                <asp:ListItem>Powitanie 4</asp:ListItem>
                <asp:ListItem>Powitanie 5</asp:ListItem>
                <asp:ListItem>Powitanie 6</asp:ListItem>
                <asp:ListItem>Powitanie 7</asp:ListItem>
            </asp:ListBox>
        </p>
        </div>

        <div class="col-md-4">
             <p>
                 <br />
            <asp:ListBox ID="ListBox2" runat="server" BackColor="#9999FF" Font-Names="Verdana" Font-Size="Small">
                <asp:ListItem>Powód 1</asp:ListItem>
                <asp:ListItem>Powód 2</asp:ListItem>
                <asp:ListItem>Powód 3</asp:ListItem>
                <asp:ListItem>Powód 4</asp:ListItem>
                <asp:ListItem>Powód 5</asp:ListItem>
                <asp:ListItem>Powód 6</asp:ListItem>
            </asp:ListBox>
                 <br />

        </p>
        </div>
    </div>


    <div class="row">
        <div class="col-md-4">
            <h2><span style="color: hotpink">Podaj e-mail na gmailu</span></h2>
            <p>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </p>
            <p>
                
                <asp:Button ID="Button1" runat="server" Text="Wyślij &raquo;" OnClick="Button1_Click" />
                
            </p>
            <p>
                
                <asp:Label ID="Label1" runat="server" BackColor="HotPink"></asp:Label>
                
            </p>
        </div>
        <div class="col-md-4">
            <h2><span style="color: hotpink">Możesz też wybrać mail poniżej</span></h2>
            <p>
                <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                    <asp:ListItem Value="hortensja.p@gmail.com">hortensja</asp:ListItem>
                    <asp:ListItem Value="treemasterwizard@gmail.com">Tree Master Wizard</asp:ListItem>
                    <asp:ListItem Value="przedmioty.jasik@gmail.com">ta opcja spamuje</asp:ListItem>
                    <asp:ListItem Value="cichowskaj@gmail.com">hortensja, tylko oficjalnie</asp:ListItem>
                    <asp:ListItem Value="tkunikowska@gmail.com">Babuszka</asp:ListItem>
                </asp:RadioButtonList>
            </p>
            <h4><span style="color: hotpink">(ciąg dalszy obok...)</span></h4>
          
        </div>
        <div class="col-md-4">
              <h4><span style="color: hotpink">...oraz się zalogować do gmaila</span></h4>
            <p>
                <asp:Label ID="Label3" runat="server" Text="Login    "></asp:Label>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <asp:Button ID="Button3" runat="server" Text="dodaj @gmail.com" OnClick="Button3_Click" />
                <br /> <br />
                <asp:Label ID="Label4" runat="server" Text="Hasło    " ToolTip="nie bawimy się w jakieś tam gwiazdki" BorderStyle="Dotted" BorderWidth="1"></asp:Label>
                <asp:TextBox ID="TextBox3" runat="server" Width="171px"></asp:TextBox>
            </p>
                <h4><span style="color: hotpink">a tu wpisz wiadomość</span></h4>
              <p>
                  <asp:TextBox ID="TextBox4" runat="server" Rows="8" BorderStyle="Double" MaxLength="10000" TextMode="MultiLine" Width="333px"></asp:TextBox>
              </p>
            <p>
                
                <asp:Button ID="Button2" runat="server" Text="Wyślij &raquo;" OnClick="Button2_Click" />
                
            </p>
            <p>
                
                <asp:Label ID="Label2" runat="server" BackColor="HotPink"></asp:Label>
                
            </p>
        </div>
    </div>

</div>
</asp:Content>
