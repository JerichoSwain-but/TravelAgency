using System.Collections.ObjectModel;
using System.Linq;
using System.Windows;
using System.Windows.Controls;

namespace TravelAgency
{
    /// <summary>
    /// Логика взаимодействия для TourList.xaml
    /// </summary>
    public partial class TourList : Page
    {
        private readonly ObservableCollection<string> PriceSort = new ObservableCollection<string>()
        {
            "По возрастанию",
            "По убыванию"
        };

        public TourList()
        {
            InitializeComponent();

            var allTypes = TravelAgencyEntities.Context.Type.ToList();
            allTypes.Insert(0, new Type { Name = "Все типы" });
            CBoxType.ItemsSource = allTypes;
            CBoxType.SelectedIndex = 0;

            ChBoxActual.IsChecked = true;

            CBoxPriceSort.ItemsSource = PriceSort;
            CBoxPriceSort.SelectedIndex = 0;

            UpdateTours();
        }
        /// <summary>
        /// Фильтрация данных.
        /// </summary>
        private void UpdateTours()
        {
            var currentTours = TravelAgencyEntities.Context.Tour.ToList();

            if (CBoxType.SelectedIndex != 0)
            {
                currentTours = currentTours.Where(tour => tour.Type.Contains(CBoxType.SelectedItem as Type)).ToList();
            }

            currentTours = currentTours.Where(tour => tour.Name.ToLower().Contains(TBoxSearch.Text.ToLower())).ToList();

            if (ChBoxActual.IsChecked.Value == true)
            {
                currentTours = currentTours.Where(tour => tour.isActual == true).ToList();
            }

            if (CBoxPriceSort.SelectedIndex == 0)
            {
                currentTours = currentTours.OrderBy(tour => tour.Price).ToList();

            }
            else if (CBoxPriceSort.SelectedIndex == 1)
            {
                currentTours = currentTours.OrderByDescending(tour => tour.Price).ToList();
            }

            LViewTours.ItemsSource = currentTours;
        }

        private void TBoxSearch_TextChanged(object sender, TextChangedEventArgs e)
        {
            UpdateTours();
        }

        private void CBoxType_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            UpdateTours();
        }

        private void ChBoxActual_Checked(object sender, RoutedEventArgs e)
        {
            UpdateTours();
        }

        private void CBoxPriceSort_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            UpdateTours();
        }
    }
}
