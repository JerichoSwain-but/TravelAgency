   M S B A M L   `   `   `  ����G  CTravelAgency, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:TravelAgencyTravelAgency  5   	   $    TravelAgency.HotelDeletionPage   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   ,localclr-namespace:TravelAgency     5   	     N� Title$!  Удаление отеля��5   	   $
��Auto��6    $
��Auto��6.   .��5	      �  � RowDefinitions 5
   
   �� 5      $��1* �6   �� 5      $��3* �6   .+�5   
   �    CommonBackgroundStyle#��[  6   .+�5      �� $<��6Подтверждение удаления отеля��6   5      � 5   
   $��1��6    5      �� 5      $	��17* �6    �� 5      $��60 �6    .+�5      �� $��Center=�6   .+�5      �� $��Center=�6    �� Orientation$ 
Horizontal=�6:   .+�5      �� $1��+Введите названия отеля:��6    �� 5      -   5         ��Name$ TBName��5      5      5      � 5      $��1��6   
�������.+�5      �� -   5         ��Name$ 	BtnDelete��5      $��1��6,   $��Удалить��5        	RedButton#��[ 5       
�������$
��Bold"�5!   (   $
��Auto��6R   $��Stretch=�6`   5"      5#      5$      5%      