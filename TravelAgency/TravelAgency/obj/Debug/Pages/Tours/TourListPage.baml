   M S B A M L   `   `   `  ����G  CTravelAgency, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:TravelAgencyTravelAgency  5          TravelAgency.TourList   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      ,localclr-namespace:TravelAgency     5        N� Title$  Список туров��5	      .��5      �  � RowDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $	��67* �6   .+�5   
   �  � Orientation$ 
Horizontal=�6   $��Stretch=�6-   
������� � 	Resources 5       �� 
TargetType   	BaseStyle �� BasedOn �� Property �� Value��%\   '��       7   �� 5      " ��6   8   .�5      ��  � ��$	 200��6.   5      5      .+�5      ��  �� Orientation$ 
Horizontal=�6   .+�5      �� $:��4Введите название для поиска:��6   	 �� TextAlignment$	 Right=�5      �� 5      -   5        
 ��Name$
 
TBoxSearch��5      6.   5      �� 5      $ 
Horizontal=�6   .+�5      �� $��Выберите тип:��6   $	 Right=�5      �� 5      -   5         ��Name$ CBoxType��5       �� DisplayMemberPath$
 Name��6Z   5      �� 5       $ 
Horizontal=�6   .+�5!      �� $3��-Сортировка по стоимости:��6   $	 Right=�5"      �� 5#      -   5        $ CBoxPriceSort��5#      5%      5&      �� 5(      -   5         ��Name$ ChBoxActual��5(      $E��?Показывать только актуальные туры��5)      5+   9   5-      �� 5.   
   -   5         ��Name$ 
LViewTours��5.   )   $��1��6=   $��Disabled=�6J   $��Center=�6�   ��6   Z� ��5/      �� 50      .R�51      � $ 
Horizontal=�66   $��Center=�6O   ��6    Z� 6n   52      ��54      �� 55      .R�56      � $��10q�6   $��Stretch=�6'    57      �� 58      $��1* �6,   �� 59      $��4* �6,   �� 5:      $��1* �6,   �� 5;      $��1* �6,   .+�5>      ��  ��Name$ 
TitleLabel��6$   $��0��5?   $   $��Center=�5A   $   $
��Bold"�5B   $   $��20(�5C   $   ��5@   $   �� *Name+5C   $   �� 5E      $��1��6    $	��400��6-   $��UniformToFill=�69   ��5F      �� 5G   "    �� Path$ ImagePreview�6*    �� TargetNullValue 5H   &   ��5I   *   73/TravelAgency;component/Resources/dummy_picture.png��6k   5K   #   5M      �� 5N      $ 
PriceLabel��61   $��2��6$   $
��Bold"�5P   $   $��Center=�5Q   $   $��18(�5R   $   ��5O   $   �� *Price+ �� StringFormat$ {0:N2} РУБ��5R   $   � 5T      $��3��6   ��6,   Z�  � ColumnDefinitions 5U      �� 5V   "   �� 5W   "   .+�5Z      �� $ RelevanceLabel��5[   (   $��0��5Z   (   
��� � �$
��Left=�5^   (   $��16(�5_   (   ��5\   (   �� *
ActualText+5_   (   �� 5a      $ TicketCountLabel��5b   (   $��1��5a   (   $��Right=�5c   (   $��16(�5e   (   ��5d   (   �� *TicketCount+$* $Билетов осталось: {0}��5e   (   5h      5j      5k      5m      5n      5o      