   M S B A M L   `   `   `  ����G  CTravelAgency, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:TravelAgencyTravelAgency  5          TravelAgency.HotelsTable   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      ,localclr-namespace:TravelAgency     5      -   5          N� Title$!  Таблица отелей��5	      .��5      � $��1��6    � RowDefinitions 5   
   �� 5      �� 5      $
��Auto �6   .+�5   
   &   System.Windows.Controls.DataGrid  -   5          Name$ DGridHotels��5      $��0��5         
IsReadOnly .    AutoGenerateColumns .     Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$ Название��6%      Width5  /System.Windows.Controls.DataGridLengthConverter$ 4* 5   %   1  +System.Windows.Controls.DataGridBoundColumn   Binding 5   %   �� *Name+5   %     5      $% Количество звезд��6%   $ 2* 5   %    5   %   �� *CountOfStars+5   %     5      $ Страна��6%   $ 4* 5   %    5   %   �� *Country.Name+5   %     5      $% Количество туров��6%   $ 2* 5!   %    5    %   �� *
Tour.Count+5!   %   4  .System.Windows.Controls.DataGridTemplateColumn  5"      $ 1* 6*   	   CellTemplate	 5#      �� 5$      .R�5%      �� 
 ��Name$
 BtnEdit��6H   -   5           	RedButton#��[  5%   %   $	��✎��6Y   6}   5&      5(        5)      $ 1* 6*   	 5*      �� 5+      .R�5,      �� $
 	BtnDelete��6H   -   5        #��[  5,   %   $	��✖��6[   6�   5-      5/      52      � 54   
   $��1��6   
������� � 	Resources 56       �� 
TargetType �� BasedOn �� Property �� Value��%�   '��       7   �� 57      " ��6   8   .�58      ��  � ��$ 14(�61   �� 59       � ��$ 0��61   �� 5:       � ��$
 Auto��6.   5;      5<      .+�5>      ��  �� Orientation$ 
Horizontal=�6   .+�5?      �� $D��>Количество элементов на странице:��6   $��14(�6E   �� 5@      -   5         ��Name$ CBoxHotelCount��5@      $��14(�63   6A   �� 5B      -   5        $
 BtnAdd��5B      $!��Добавить отель��6)   6B   5C      �� 5D      $ 
Horizontal=�6   $��Right=�63   .+�5F      �� -   5        $
 BtnPrev��5F      $��Предыдущая��6*   �� 5G      -   5        $
 BtnNext��5G      $��Следующая��6*   �� 5H      -	   5        $
 BtnFirst��5H      $��Первая��6+   �� 5I      -
   5        $
 BtnLast��5I      $��Последняя��6*   5K      5L      5M      5N      