   M S B A M L   `   `   `  ����G  CGroupProject, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null=#clr-namespace:WpfApplication1.PagesWpfApplication1.Pages  5      -    'WpfApplication1.Pages.ResetPasswordPage   5      W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      5local#clr-namespace:WpfApplication1.Pages     5      _ [MaterialDesignThemes.Wpf, Version=4.9.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5
        N� Title$  ResetPasswordPage��5	         MaterialDesignBody#���   5   	     MaterialDesignPaper N� 
Background# �  5   	   $��Medium"�5   	   $��14(�5   	    N� 
FontFamily 5   	   :  4MaterialDesignThemes.Wpf.MaterialDesignFontExtension  .��5      �� $��Stretch=�6   $��Stretch=�5      .+�5   
   �� -   5         ��Name$ 
BackButton��5        MaterialDesignIconButton#��[ 5      $
��Left=�5      $��5q�5      .��5      '  !MaterialDesignThemes.Wpf.PackIcon     Kind$ ArrowLeftThin=�6&   
���   �$��30��5   &   $��30��5   &   5      �� 5   
   $��Reset password��6   $��Center=�5      $��20(�5      $��10 20 10 10q�5       �� 5"   
   -   5         ��Name$ EmailTextBox��5"      $��	0 10 0 10q�5#      $	��Top=�5$      $	��260��5%      )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Email��5&       ! MaterialDesignOutlinedTextBox#��[ 5'      .��6I   5(      ]� 5*   
   $��Center=�6   .+�5+      �� -   5        $ CodeTextBox��5+      $��0 0 10 0q�5,      $��Center=�5-      $	��100��5.      $
 Code��5/      #��[ 50      $y�Visible=�51      �� 53      -   5        $ SendCodeButton��53      $��Right=�55      $��50 0 0 0q�56      $	��100��57      +  %MaterialDesignThemes.Wpf.ButtonAssist   CornerRadius$ 10��58        MaterialDesignRaisedButton#��[ 5:       � ToolTip$3 -MaterialDesignRaisedButton with Round Corners��5;      {�59      �� *DataContext.ControlsEnabled+	 �� RelativeSource	 �� *FindAncestor+
 �� AncestorType

 Window.��5<      �� $��	Send Code��6    5=      5>      �� 5@   
   -   5        $ SignInButton��5@      $��Center=�5B      $��	10 30 0 0q�5C      $	��100��5D      $ 10��5E      #��[ 5G      $3 -MaterialDesignRaisedButton with Round Corners��5H      {�5F      �� *DataContext.ControlsEnabled+	 �� *FindAncestor+

 Window.��5I      �� $��Sign In��6   5J      5L      5N      