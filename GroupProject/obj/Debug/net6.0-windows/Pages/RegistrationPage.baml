   M S B A M L   `   `   `  ����G  CGroupProject, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:GroupProject.PagesGroupProject.Pages  5      )    #GroupProject.Pages.RegistrationPage   5      W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      2local clr-namespace:GroupProject.Pages     5      _ [MaterialDesignThemes.Wpf, Version=4.9.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5
        N� Title$  RegistrationPage��5	         MaterialDesignBody#���   5   	   $��Medium"�5   	   $��14(�5   	     MaterialDesignPaper N� 
Background# �  5   	    N� 
FontFamily 5   	   :  4MaterialDesignThemes.Wpf.MaterialDesignFontExtension  .��5      �� $��Center=�6   
������ $��Center=�5      $	��260��5      .+�5   
   �� $��Sign Up��6   $��Center=�5      $��18(�5      $
��Bold"�5      $��0 0 0 10q�5      �� 5   
   -   5         ��Name$ LoginTextBox��5      $��	0 10 0 10q�5      $	��Top=�5      )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Login��5       ! MaterialDesignOutlinedTextBox#��[ 5       .��6I   5!      G� 5#   
   -   5         G�Name$ PasswordBox��5#      $��0 0 0 10q�5$      $ Password��5%       + 'MaterialDesignOutlinedRevealPasswordBox#��[ 5'      {�5&      ��  �� ElementName$# RevealPasswordOutlinedEnabled�� �� Path$ 	IsChecked�5'      G� 5)   
   -   5        $ ConfirmPasswordBox��5)      $��0 0 0 10q�5*      $ Confirm password��5+      #��[ 5-      {�5,      �� $# RevealPasswordOutlinedEnabled��$ 	IsChecked�5-      �� 5/   
   -   5        $ EmailTextBox��5/      $��0 0 0 10q�50      $	��Top=�51      $ Email��52      #��[ 53      .��6I   54      ]� 58   
   .+�59      �� -   5        $ CodeTextBox��59      $��0 0 0 10q�5:      $��Center=�5;      $��Center=�5<      $	��100��5=      $
 Code��5>      #��[ 5?      $y�Hidden=�5@      �� 5C      -   5         ��Name$ SendCodeButton��5C      $��Right=�5E      $��Center=�5F      $��35��5G      $	��100��5H      $��10 0 0 0q�5I      +  %MaterialDesignThemes.Wpf.ButtonAssist	   CornerRadius$	 10��5J        MaterialDesignRaisedButton#��[ 5L      {�5K      �� *DataContext.ControlsEnabled+
 �� RelativeSource
 �� *FindAncestor+ �� AncestorType
 Window.��5M      �� $��	Send Code��6   5N      5O      �� 5Q   
   -   5        $ SignInButton��5Q      $��Center=�5S      $��Center=�5T      $��35��5U      $	��100��5V      $��	10 10 0 0q�5W      $	 10��5X      #��[ 5Z      {�5Y      �� *DataContext.ControlsEnabled+
 �� *FindAncestor+
 Window.��5[      �� $��Sign In��6   5\      �� 5^   
   -   5        $ SendedCodeTextBox��5^      $y�Hidden=�5_      5a      5c      