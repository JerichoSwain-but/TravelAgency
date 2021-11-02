using System;
using System.Text;
using System.Windows;
using System.Windows.Controls;

namespace TravelAgency
{
    /// <summary>
    /// Логика взаимодействия для HotelDeleteWindow.xaml
    /// </summary>
    public partial class HotelDeletionPage : Page
    {
        private readonly Hotel _currentHotel;
        public HotelDeletionPage(Hotel hotel)
        {
            InitializeComponent();
            _currentHotel = hotel;
        }

        private void BtnDelete_Click(object sender, RoutedEventArgs e)
        {
            StringBuilder errors = new StringBuilder();

            // Проверка пользовательского ввода на коррект. данных.
            if (string.IsNullOrEmpty(TBName.Text)) 
                errors.Append("Введите название отеля");
            if (TBName.Text != _currentHotel.Name)
                errors.Append("Неверное название отеля");

            if (errors.Length != 0)
            {
                MessageBox.Show(errors.ToString(), "Ошибка", MessageBoxButton.OK, MessageBoxImage.Error);
                return;
            }

            // Показ диалогового окна с выбором для пользователя.
            if (MessageBox.Show($"Вы точно хотите удалить запись об отеле {_currentHotel.Name}", "Удаление отеля", MessageBoxButton.YesNo) == MessageBoxResult.Yes)
            {
                try
                {
                    // Удаление и сохранение изменений.
                    TravelAgencyEntities.Context.Hotel.Remove(_currentHotel); 
                    TravelAgencyEntities.Context.SaveChanges();

                    // Отображение сообщения пользователю.
                    MessageBox.Show("Отель успешно удален"); 
                    PageRouter.Instance.GoBack();
                }
                catch (Exception ex)
                {
                    MessageBox.Show($"Во время удаления отеля произошла ошибка:\n{ex.Message}", "Ошибка!", MessageBoxButton.OK, MessageBoxImage.Error);
                }
            }


        }
    }
}
