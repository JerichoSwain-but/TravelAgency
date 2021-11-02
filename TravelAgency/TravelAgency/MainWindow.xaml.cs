using System.Windows;

namespace TravelAgency
{
    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();

            PageRouter.Instance.MainFrame = MainFrame;
            PageRouter.Instance.ChangePage(new TourList());
        }

        private void MenuItem_HotelTabel_Click(object sender, RoutedEventArgs e)
        {
            PageRouter.Instance.ChangePage(new HotelsTable());
        }

        private void MenuItem_TourList_Click(object sender, RoutedEventArgs e)
        {
            PageRouter.Instance.ChangePage(new TourList());
        }

        private void Button_Back_Click(object sender, RoutedEventArgs e)
        {
            PageRouter.Instance.GoBack();
        }
    }
}
