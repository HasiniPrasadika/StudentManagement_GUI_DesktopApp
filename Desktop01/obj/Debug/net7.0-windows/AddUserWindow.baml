   M S B A M L   `   `   `  ����D  @Desktop01, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null%clr-namespace:Desktop01	Desktop01  5   	       Desktop01.AddUserWindow   5   	   W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   )localclr-namespace:Desktop01     5   	     � WindowStartupLocation$  CenterScreen=�5   	   $	��450��5	   E   $	��800��6R    � Title 6	   �� *Title+ �� UpdateSourceTrigger$ PropertyChanged=� � DataContext 5
         Desktop01.AddUserVM  5   
   .��5      � ���#d1a77d � ColumnDefinitions 5   
   �� 5      $	��20* �6   �� 5      $	��20* �6   �� 5      $	��65* �6   �� 5      $	��20* �6    � RowDefinitions 5   
   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $
��auto �6   .+�5    
   �� $��2��6   $��0��6$   $��20 40 20 30q�61    �� TextAlignment$ Center=�5!      $��Center=�5#      $	��200��61   $��20(�6=   $
��Bold"�6K   ��5"      �� *Title+$ PropertyChanged=�5#   K   �� 5%   
   $��First Name:��6   $��1��6'   $��1��5&      $
��Left=�6!   $��16(�6<   $��10q�5'      $��Medium"�6    �� 5(   
   $��5q�5)      $
��Left=�6   $��Center=�6?   $��1��6a   $��2��6n   ��5(      �� *	Firstname+$ PropertyChanged=�5)   n   �� 5,   
   $��
Last Name:��6   $��1��6&   $��2��5-      $
��Left=�6!   $��10q�6<   $��16(�5.      $��Medium"�6"   �� 5/   
   $��5q�50      $
��Left=�6   $��Center=�6?   $��2��6a   $��2��6n   ��5/      �� *
Lastname+$ PropertyChanged=�50   n   �� 53   
   $
��Age:��6   $��1��6    $��3��54      $
��Left=�6!   $��10q�6<   $��16(�55      $��Medium"�6"   �� 56   
   $��5q�57      $
��Left=�6   $��Center=�6?   $��3��6a   $��2��6n   ��56      �� *Age+$ PropertyChanged=�57   n   �� 5;   
   $��DateOfBirth:��6   $��1��6(   $��4��5<      $
��Left=�6!   $��10q�6<   $��16(�5=      $��Medium"�6"   �� 5>   
   $��5q�5?      $
��Left=�6   $��Center=�6?   $��4��6a   $��2��6n   ��5>      �� *Dateofbirth+$ PropertyChanged=�5?   n   �� 5C   
   $
��GPA:��6   $��1��6    $��5��5D      $
��Left=�6!   $��10q�6<   $��16(�5E      $��Medium"�6"   �� 5F   
   $��5q�5G      $
��Left=�6   $��Center=�6?   $��5��6a   $��2��6n   ��5F      �� *Gpa+$ PropertyChanged=�5G   n   �� 5J   
   $��Insert Picture��6   $	��100��6+   $��Center=�67   $��10q�6{   $��6��6�   $��Bottom=�6�   $��2��6�   ��6T   �� *UploadPhotoCommand+6�   �� 5K   
   $��40��6   $
��Left=�6   $	��100��67   $	��Top=�6C   $��
120 12 0 0q�6[   ��6o   �� *SelectedImage+$ PropertyChanged=��� 5M   
   $
��Save��6   $��70��6    $
��0 10q�6K   $��7��6Y   $��Bottom=�6f   $��2��6�   ��6+   �� *SaveCommand+6�   5R      5S      