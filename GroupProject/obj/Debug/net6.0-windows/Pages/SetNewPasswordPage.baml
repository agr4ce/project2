   M S B A M L   `   `   `  ����G  CGroupProject, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null=#clr-namespace:WpfApplication1.PagesWpfApplication1.Pages  5      .    (WpfApplication1.Pages.SetNewPasswordPage   5      W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      5local#clr-namespace:WpfApplication1.Pages     5      _ [MaterialDesignThemes.Wpf, Version=4.9.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5
        N� Title$  SetNewPasswordPage��5	         MaterialDesignBody#���   5        MaterialDesignPaper N� 
Background# �  5      $��Medium"�5      $��14(�5       N� 
FontFamily 5      :  4MaterialDesignThemes.Wpf.MaterialDesignFontExtension  .��5      �� $��Stretch=�6   $��Stretch=�5      .+�5   
   �� -   5         ��Name$ 
BackButton��5   	     MaterialDesignIconButton#��[ 5      $
��Left=�5   	   $��5q�5   	   .��5      '  !MaterialDesignThemes.Wpf.PackIcon     Kind$ ArrowLeftThin=�6&   
���   �$��30��5      $��30��5      5      �� 5   
   $��Set new password��6   $��Center=�5      $��20(�5      $��10 20 10 20q�5       G� 5"   
   -   5         G�Name$ PasswordBox��5"      $��
10 0 10 10q�5#      )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Password��5$       + 'MaterialDesignOutlinedRevealPasswordBox#��[ 5&      $	��260��6W   {�5%      ��  �� ElementName$# RevealPasswordOutlinedEnabled�� �� Path$ 	IsChecked�5&   W   G� 5(   
   -   5        $ ConfirmPasswordBox��5(      $��
10 0 10 10q�5)      $ Confirm password��5*      #��[ 5,      $	��260��6W   {�5+      �� $# RevealPasswordOutlinedEnabled��$ 	IsChecked�5,   W   �� 5.   
   -   5        $ SignInButton��5.      $��Center=�50      $��10q�51      $��35��52      +  %MaterialDesignThemes.Wpf.ButtonAssist	   CornerRadius$	 10��53        MaterialDesignRaisedButton#��[ 55      
 � ToolTip$3
 -MaterialDesignRaisedButton with Round Corners��56      {�54      �� *DataContext.ControlsEnabled+ �� RelativeSource �� *FindAncestor+ �� AncestorType
 Window.��57      �� $��Confirm��6   58      59      5:      