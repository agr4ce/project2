   M S B A M L   `   `   `  ����G  CGroupProject, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:GroupProject.PagesGroupProject.Pages  5      #    GroupProject.Pages.SignUpPage   5      W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      2local clr-namespace:GroupProject.Pages     5      _ [MaterialDesignThemes.Wpf, Version=4.9.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5
        N� Title$  RegistrationPage��5	         MaterialDesignBody#���   5   	   $��Medium"�5   	   $��14(�5   	     MaterialDesignPaper N� 
Background# �  5   	    N� 
FontFamily 5   	   :  4MaterialDesignThemes.Wpf.MaterialDesignFontExtension  .��5      �� $��Stretch=�6   
������ $��Center=�5      .+�5   
   �� -   5         ��Name$ 
BackButton��5        MaterialDesignIconButton#��[ 5      $
��Left=�5      $��5q�5      .��5      '  !MaterialDesignThemes.Wpf.PackIcon     Kind$ ArrowLeftThin=�6&   
���   �$��30��5      $��30��5      5      �� 5   
   $��Sign Up��6   $��Center=�5       $��18(�5!      $
��Bold"�5"      $��0 0 0 10q�5#      �� 5%   
   -   5         ��Name$ LoginTextBox��5%      $��	0 10 0 10q�5&      $	��Top=�5'      )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Login��5(       ! MaterialDesignOutlinedTextBox#��[ 5)      $	��260��6I   .��6U   5*      G� 5,   
   -   5         G�Name$ PasswordBox��5,      $��0 0 0 10q�5-      $ Password��5.       + 'MaterialDesignOutlinedRevealPasswordBox#��[ 50      $	��260��6W   {�5/      ��  �� ElementName$# RevealPasswordOutlinedEnabled��	 �� Path$	 	IsChecked�50   W   G� 52   
   -   5        $ ConfirmPasswordBox��52      $��0 0 0 10q�53      $ Confirm password��54      #��[ 56      $	��260��6W   {�55      �� $# RevealPasswordOutlinedEnabled��$	 	IsChecked�56   W   �� 58   
   -   5        $ EmailTextBox��58      $��0 0 0 10q�59      $	��Top=�5:      $ Email��5;      #��[ 5<      $	��260��6I   .��6U   5=      ]� 5A   
   $��Center=�6   .+�5B      �� -   5        $ CodeTextBox��5B      $��0 0 0 0q�5C      $��Center=�5D      $��Center=�5E      $	��100��5F      $
 Code��5G      #��[ 5H      $y�Visible=�5I      �� 5L      -   5        $ SendCodeButton��5L      $��Right=�5N      $��Center=�5P      $��35��5Q      $	��100��5R      $��60 0 0 0q�5S      +  %MaterialDesignThemes.Wpf.ButtonAssist
   CornerRadius$
 10��5T        MaterialDesignRaisedButton#��[ 5V      {�5U      �� *DataContext.ControlsEnabled+ �� RelativeSource �� *FindAncestor+ �� AncestorType
 Window.��5W      �� $��	Send Code��6   5X      5Y      �� 5[   
   -   5        $ SignInButton��5[      $��Center=�5]      $��Center=�5^      $��35��5_      $	��100��5`      $��	10 10 0 0q�5a      $
 10��5b      #��[ 5d      {�5c      �� *DataContext.ControlsEnabled+ �� *FindAncestor+
 Window.��5e      �� $��Sign In��6   5f      �� 5h   
   -	   5        $ SendedCodeTextBox��5h      $y�Hidden=�5i      5k      5m      