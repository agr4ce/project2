   M S B A M L   `   `   `  ����G  CGroupProject, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:GroupProjectGroupProject  5   	       GroupProject.StartWindow   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   ,localclr-namespace:GroupProject     5   	   _ [MaterialDesignThemes.Wpf, Version=4.9.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	     � Title$  AuthenticationWindow��5   	   $	��650��5	   	   $	��425��6    � 
ResizeMode$ NoResize=�5
   	      MaterialDesignBody#���   5   	     MaterialDesignPaper#���  5   	   $��Medium"�5   	   $��14(�5   	   ��5   	   :  4MaterialDesignThemes.Wpf.MaterialDesignFontExtension  .��5      �  � ColumnDefinitions 5   
   �� 5      $	��77* �6    � RowDefinitions 5   
   �� 5      $
��105* �6   �� 5      $
��403* �6   �� 5      $	��26* �6   .+�5   
    � $
��Page��6     � Source$! Pages/AuthorizatonPage.xaml?�5      $��Center=�5      $��Center=�5        � NavigationUIVisibility$ Hidden=�5       $��1��5!      �� 5#   
   $
��Left=�6   $��85��5$      $��Center=�5%      $��86��5&      $��/Resources/logo.png��5'       K� ZIndex$ 1��5(      $��88,0,0,0q�5)      �� 5+   
   $��	DMN Cloud��6   $
��Left=�5,      $��Center=�5-      $��20(�5.      $
��Bold"�5/      $ 1��50      $��35��51      $	��141��6   $��	178,0,0,0q�6(   
�������52      �� 53   
   -   5         ��Name$ appInfoButton��53      $��40��54      $ 1��55      $��Right=�56      $��Center=�57      
������ 
�������$��0q�5:       " MaterialDesignFlatAccentButton#��[ 5;      .��5=      '  !MaterialDesignThemes.Wpf.PackIcon     Kind$
 Info=�6*   $��30��5>   *   $��30��5?   *   5@      �� 5A   
   ���#1a237e$��0q�6&   5D      5E      