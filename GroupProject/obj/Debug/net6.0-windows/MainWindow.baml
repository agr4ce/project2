   M S B A M L   `   `   `  ����  GroupProject    GroupProject.MainWindow   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   _ [MaterialDesignThemes.Wpf, Version=4.9.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   :d2http://schemas.microsoft.com/expression/blend/2008  5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   -   5          � Title$  MWindow��5   	   $	��720��6   $
��1280��6&   $	��720��5	   	   $
��1280��6      MaterialDesignBody#���   5   	   
�������$��Medium"�5   	   $��14(�5   	   ��5   	   :  4MaterialDesignThemes.Wpf.MaterialDesignFontExtension  .��5      �  � ColumnDefinitions 5   
   �� 5      $
��125* �6   �� 5      $
��264* �6   �� 5      $
��502* �6   �� 5      $
��389* �6    � RowDefinitions 5   
   �� 5      $	��110 �6   �� 5      .+�5   
   �� 
������� K� ZIndex$ 1��5      $��28(�5      $��Center=�5       $��Center=�5!      $��1��5"      ��5#      �� 5$       �� 
TargetType" ��6    �� Triggers 5%      �� 5&       �� Binding 6&   ��  �� ElementName$ MyCloudRadioButton�� �� Path$ 	IsChecked�	 �� Value	 True6i   .a�5'      �� 
 �� Property
 � �� �� Value 5(   "   ]� 5)   &   $
��Left=�60   .+�5*   *   '  !MaterialDesignThemes.Wpf.PackIcon     Kind$ Cloud=�6B   $��30��6O   $��30��6Z   $��Center=�6f   �� 5+   *   $��	 My Cloud��64   $��Center=�6E   5,   '   5.      5/      �� 50       6&   �� $ LocalDriveRadioButton��$ 	IsChecked�	 True6l   .a�51      �� 
 � �� 52   "   ]� 53   &   $
��Left=�60   .+�54   *     $ Harddisk=�6B   $��30��6R   $��30��6]   $��Center=�6i   �� 55   *   $�� Local Drive��64   $��Center=�6H   6e   56   '   58      59      �� 5:       6&   �� $ TrashRadioButton��$ 	IsChecked�	 True6g   .a�5;      �� 
 � �� 5<   "   ]� 5=   &   $
��Left=�60   .+�5>   *     $ TrashCanOutline=�6B   $��30��6Y   $��30��6d   $��Center=�6p   �� 5?   *   $�� Trash��64   $��Center=�6B   6_   5@   '   5B      5C      5E      5G      ]� 5I   
   $��Center=�5J      $��Center=�5K      $ 1��5L      $��2��6%   .+�5N      �� -   5         ��Name$ SearchTextBox��5N      $	��450��5P      $��50��5Q      )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Search��5R       �� 	MaxLength$ 50��5V      
�������  MaterialDesignFilledTextBox#��[ 5X      .  (MaterialDesignThemes.Wpf.TextFieldAssist!   CharacterCounterVisibility 5S      �� *	IsChecked+   BooleanToVisibilityConverter �� 	Converter# [ $2 ,MaterialDesignFilledTextBoxTextCountComboBox��5X      �� 5Z       �� Orientation$ 
Horizontal=�6   $��Bottom=�62   .+�5[      '  !MaterialDesignThemes.Wpf.PopupBox     	StaysOpen$
 True��5^   *      PlacementMode$ LeftAndAlignTopEdges=�5_   *   {�5[   *   �� *DataContext.ControlsEnabled+ �� RelativeSource �� *FindAncestor+ �� AncestorType
 Window   ToggleContent 5`        5a      $ Filter=�62   
�������$��20��6S   $��20��6^   6l      PopupContent. 5d      � $	��450��6   $	��340��6'    5e      �� 5f      $��5* �6,   �� 5g      $��5* �6,   �� 5h      $��2* �6,   �� 5i      $��5* �6,   �� 5j      $��5* �6,   �� 5k      $��4* �6,    5m      �� 5n      $��1* �6/   �� 5o      $��2* �6/   .+�5r      �� $��14(�6$   $��0��5s   $   $��Center=�5t   $   $
��Left=�5u   $   $��40 0 0 0q�5v   $   Type6<   �� 5w      $��14(�6$   $��3��5x   $   $��Center=�5y   $   $
��Left=�5z   $   $��40 0 0 0q�5{   $   
Modified6@   �� 5}      -   5         ��Name$ TypeComboBox��5}   #   $	��200��5~   #   $
��Left=�5   #   $��1��5�   #   $��0��5�   #   $
 Type��5�   #    " MaterialDesignOutlinedComboBox#��[ 5�   #   .@�5�      �� .��6+   Text61   �� 5�      .��6+   Image62   �� 5�      .��6+   Audio62   �� 5�      .��6+   Video62   5�      �� 5�      -   5        $ DateModifiedComboBox��5�   #   $	��200��5�   #   $
��Left=�5�   #   $��3��5�   #   $��1��5�   #   $ DateModified��5�   #   #��[ 5�   #   .@�5�      �� .��6+   Today62   �� 5�      .��6+   	Yesterday66   �� 5�      .��6+   	Last week66   �� 5�      .��6+   
Last month67   5�      ]� 5�      $��1��6$   $��4��5�   $   $��Stretch=�5�   $   .+�5�      (  "System.Windows.Controls.DatePicker  -   5          Name$ AfterDatePicker��5�   )   $	��130��5�   )   $
��Left=�5�   )   $ 
After date��5�   )   $��0 0 0 0q�5�   )    $  MaterialDesignOutlinedDatePicker#��[ 5�   )   $y�Hidden=�5�   )     5�      -   5        $ BeforeDatePicker��5�   )   $��10 0 0 0q�5�   )   $	��130��5�   )   $ Before date��5�   )   $
��Left=�5�   )   #��[ 5�   )   $y�Hidden=�5�   )   5�      ]� 5�      $��1��6$   $��5��5�   $   $��Right=�5�   $   $��Bottom=�5�   $   $��0 0 20 5q�5�   $   .+�5�      �� -   5         ��Name$ ResetButton��5�   %   $��Reset��5�   %      MaterialDesignFlatDarkButton#��[ 5�   %    � ToolTip$ MaterialDesignFlatButton��5�   %   {�5�   %   �� *DataContext.ControlsEnabled+ �� *FindAncestor+
 Window5�   %   �� 5�      -   5        $ SearchButton��5�   %   $��80��5�   %   $��Search��5�   %    " MaterialDesignRaisedDarkButton#��[ 5�   %   $8 2Resource name: MaterialDesignRaisedLightDarkButton��5�   %   {�5�   %   �� *DataContext.ControlsEnabled+ �� *FindAncestor+
 Window5�   %   5�      5�      5�      5�      5�      )  #MaterialDesignThemes.Wpf.DrawerHost  5�   
   -	   5          Name$ 
DrawerHost��5�   $   $��2��5�   $   $��4��5�   $     SecondaryHueLightBrush   BottomDrawerBackground# �  5�   $      BottomDrawerCornerRadius 	20 20 0 05�   $   $ 1��5�   $   ��5�      �� 5�      "  6     �� BasedOn#  [B 5�       5�      �� 5�       6&   �� *	IsChecked+$ BackgroundToggle��	 True6c   .a�5�      �� 
 �@ OverlayBackground  PrimaryHueMidBrush# �  6C   5�      5�      !   LeftDrawerContent! 5�      �� 5�      .+�5�      �� $��50��6   $��Stretch=�5�      "   CloseDrawerCommand#��Z" 5�      "  System.Windows.Controls.Dock#   Left#��Z# 5�       	 MaterialDesignFlatButton#��[	 5�      .��5�      ]� $
��Left=�6$   .+�5�        $ ChevronLeft=�66   $��30��6I   $��30��6T   $��Center=�6`   $
��Left=�6{   �� 5�      $
��Menu��6(   $��Center=�64   $��Right=�6O   $��0 0 10 0q�6k   5�      5�      �� 5�      -
   5        $ UploadFileButton��5�      $��	0 20 0 20q�5�       8
 4MaterialDesignFloatingActionMiniSecondaryLightButton#��[
 5�      $9 3MaterialDesignFloatingActionMiniSecondaryDarkButton��5�      {�5�      �� *DataContext.ControlsEnabled+ �� *FindAncestor+
 Window.��5�        $��30��62   $��30��5�   2   $ FileUploadOutline=�5�   2   5�      	� 5�      -   5        $ 	�Name$$ MyCloudRadioButton��5�   "   $��Stretch=�5�   "   % d� 	IsChecked$
% TrueY�5�   "   $��	30 5 30 0q�5�   "    . *MaterialDesignChoiceChipPrimaryRadioButton#��[ 5�   "   .��5�      ]� $
��Left=�6$   .+�5�        $ Cloud=�66   $��30��6C   $��30��6N   $��Center=�6Z   �� 5�      $��	 My Cloud��6(   $��Center=�69   5�      5�      	� 5�      -   5        $$ LocalDriveRadioButton��5�   "   $��	30 5 30 0q�5�   "   $��Stretch=�5   "   #��[ 5  "   .��5     ]� $
��Left=�6$   .+�5       $ Harddisk=�66   $��30��6F   $��30��6Q   $��Center=�6]   �� 5     $�� Local Drive��6(   $��Center=�6<   6Y   5     5     �� 5     & �� CornerRadius$& 12��6   ���#534bae$��10q�6D   $��Bottom=�6P   ._�5	     �� .+�5
     � $��10��6*   ' � Value$' 25Q�66   $��10q�6A   $	��Top=�6M   �� 5     
�������$��10 0 0 0q�6;   Free:6T   �� 5     
�������$��10 0 0 0q�6;   7.5 GB out of 10 GB6b   �� 5     $��10 15 10 10q�6%   $��2 GB for 300$��5  '    , (MaterialDesignRaisedSecondaryLightButton#��[ 5  '   $= 7Resource name: MaterialDesignRaisedSecondaryLightButton��5  '   {�5  '   �� *DataContext.ControlsEnabled+ �� *FindAncestor+
 Window5  '   5     5     5     .��5     �� $	��100��6   $	��100��6"   $��5 5 0 0q�5     $	��Top=�5     $
��Left=�5     $��0q�5     (   OpenDrawerCommand#��Z( 5     #��Z# 5     $ 1��5     
������ .��5        $��40��6*   $��40��65   $
 Menu=�6A   5!     5"     &	   System.Windows.Controls.DataGrid	  5$  
   -   5        ) 	 Name$) CloudFileDataGrid��5$     $��1��5%     $��0��5&     * 	  AutoGenerateColumns$* False��5'     + 	  CanUserAddRows$+ False��5(     , 	  HeadersVisibility$	, All=�5)     $��3��5+     - �� SelectedIndex$- 2��5-     . 	  	RowHeight$. 50Q�5.     
�������/ 	  SelectionUnit/ 5*     �� $ selectionUnitComboBox��$ SelectedValue�0 	  Columns0 50     4
  .System.Windows.Controls.DataGridTemplateColumn
  51     ,  &System.Windows.Controls.DataGridColumn1   Header$1 	File Name��6)   2   Width5  /System.Windows.Controls.DataGridLengthConverter$	2 500 52  )   3 
  CellTemplate3 53     �� 54     .R�55     �� $ 
Horizontal=�6)   $��36��6B   .+�56  "     $��Center=�6:   $��30��57  :   $��30��58  :   $��Center=�59  :   $
 File=�5:  :   �� 5<  "   
���   �$
��12,0q�5>  ,   $��Center=�5?  ,   ��5=  ,   �� *Name+5?  ,   5@     5A     5C     0  *System.Windows.Controls.DataGridTextColumn  5E     $1 Creation date��5F  %   4   
IsReadOnly$
4 True��5G  %   1  +System.Windows.Controls.DataGridBoundColumn5   Binding5 5E  %   �� *Date+5G  %     5I     $1 	File size��5J  %   $
4 True��5K  %   5 5I  %   �� *
FileSize+5K  %   5M     �� 5O  
   -   5        6 ��Name$6 SplitterBorder��5T     $��1��5O     $��2��5P     $��Right=�5Q     ���#000051$��1q�5S     5T     �� 5V  
   -   5        $6 	FilePanel��5]     $��1��5V     $��3��5W     $��Center=�5X     $��Center=�5Y     $��2q�5Z     $& 12��5[     ���#000051._�5^     �� $��10q�6   $��Center=�5_     .+�5a     �� ���#3d5afe$	��200��6.   $& 12��6:   ._�5b     �� .+�5c       $
 File=�62   $	��100��5d  &   $	��100��5e  &   $��Center=�5f  &   $��Center=�5g  &   $��0 10 0 0q�5h  .   �� 5i     -   5        $ fileNameTextBlock��5i  "   $��20(�5j  $   $��Center=�5k  $   7 �� TextAlignment$7 Center=�5l  $   $��10q�5m  $   $�� ��5n  $   8 �� TextWrapping$
8 Wrap=�5o  $   $|�False��5p  $   $��0q�5q  $   �� 5r     -   5        9 ��Name$9 fileDateTextBlock��5r  $   $��20(�5s  $   $��Center=�5t  $   $��0 0 0 10q�5u  $   Date6<   �� 5v     -   5        $9 fileSizeTextBlock��5v  $   $��20(�5w  $   $��Center=�5x  $   $��0 0 0 10q�5y  $   Size6<   5z     5{     ]� 5}     $��10q�6   $��Center=�5~     $��Center=�5     .+�5�     �� -   5        $��DeleteButton��5�     $��50��5�     $��70��5�     $ Delete��5�     #��[ 5�     .��5�       $ Delete=�62   $��40��6A   $��40��6M   $��Center=�6X   $��Center=�6u   5�     �� 5�     -   5        $ RenameButton��5�     $��50��5�     $��70��5�     #��[ 5�     $ Rename��5�     .��5�       -   5        :  Name$: RenameButtonIcon��5�  2   $ Rename=�6L   $��40��6[   $��40��6g   $��Center=�6s   $��Center=�6�   5�     �� 5�     -   5        $ DownloadButton��5�     $��50��5�     $��70��5�     #��[ 5�     $ Download��5�     .��5�       $ Download=�62   $��40��6C   $��40��6O   $��Center=�6[   $��Center=�6x   5�     5�     5�     5�     �� 5�  
   $& 25��6   ���#408400$ 1��5�     $��3��5�     $
��Left=�5�     $��
209,33,0,0q�5�     $��50��5�     $	��Top=�5�     ._�5�     ]� $��	10 0 10 0q�6   .+�5�     �� -   5        $9 userNameTextBlock��5�     $��USERNAME��67   $��Center=�6G   
�������6b   �� 5�     $ 
Horizontal=�6   .+�5�       $
 True��5�  .   $ BottomAndAlignRightEdges=�5�  .   {�5�  .   �� *DataContext.ControlsEnabled+ �� *FindAncestor+
 Window 5�       5�     $ Account=�66   $��40��6E   $��40��6Q   
�������6\   5      5     5     5     �� 5  
   -   5        $ 
infoButton��5
     
������ 
�������$��30��5     $��30��5     $��0q�5	      " MaterialDesignFlatAccentButton#��[ 5     $ 1��5     $
��Left=�5     $��3��5     $��349,43,0,37q�5     ; � Cursor$
; Hand��5  *   .��5       $
 info=�6&   $��25��5  &   $��26��5  &   $��Center=�5  &   $	��-13q�5  &   5     �� 5  
   $��4��6   $��0��6%   ���#1a237e62   5     5     