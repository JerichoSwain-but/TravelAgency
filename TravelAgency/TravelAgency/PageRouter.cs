using System.Collections.Generic;
using System.Windows.Controls;

namespace TravelAgency
{
    class PageRouter
    {
        private static PageRouter _instance;
        private Frame _mainFrame;
        private Page _currentPage;
        private Page _prevPage;

        public static PageRouter Instance
        {
            get
            {
                if (_instance == null)
                    _instance = new PageRouter();
                return _instance;
            }
        }
        public Frame MainFrame { get { return _mainFrame; } set { _mainFrame = value; } }

        public void ChangePage(Page page)
        {
            if (page == _currentPage)
                return;
            _prevPage = _currentPage;
            _currentPage = page;

            MainFrame.Navigate(page);
        }
        public void GoBack()
        {

            ChangePage(_prevPage);
        }
    }
}
