   M S B A M L   `   `   `  ����N  JWpf Custom Combobox, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null9!clr-namespace:Wpf_Custom_ComboboxWpf_Custom_Combobox  5      )    #Wpf_Custom_Combobox.AutoCompleteBox   5      W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      3local!clr-namespace:Wpf_Custom_Combobox     5        �� 
IsEditable$
  True��6;   ���	#10FFFFFF$��50��5      $	��200��6(    �� MaxDropDownHeight$	 170��5	       � 	Resources 5
         ComboBoxToggleButton �� 
TargetType � ColumnDefinitions ��Name �� CornerRadius F�Name  ComboBoxTextBox �� 
TargetType	 �� Property
 �� Value �� Padding J� SnapsToDevicePixels �� Triggers P� Property P� Value �� 
TargetName��%i  &	        &	 �    '�� �    �� 5   
   " d�67   .R�5      �  5      �� 5      �� 5      $��20 �6'   .+�5      �� $ Border��6   $��2��5      $ 4��5      #��z��5      $��0q�5      F� 5      $ Arrow��6   $��1��5      ���#eee$��Center=�5      $��Center=�5      =����        �    �� � 	= ��[ � z �� � z     � 	=  	= 	5      5      5+      �� 5-   
   " ��62   .R�5.      �� $ PART_ContentHost��6   $|�False��6/   #��z��6A   5/      �� 52   
   " ��6.   .�53      �� 	 �@J�SnapsToDevicePixels$

 true��64   �� 54      	 � ��

 �����6+   �� 55      	 �@�OverridesDefaultStyle$

 true��66   �� 56      	 � ��
 57      �� 58      " ��6&   .R�59      �� $��Border��6!   $	 4,6q�5:   !   $
 true��5;   !   ._�5<      �� 5=       5>      P� 5?       �@��IsHighlighted$
 true��6?   . �5@   "   �� $ Border��6)   	 � ��
 �	#FF4F4F4F6S   5A      P� 5B       � {�$ false��6;   . �5C   "   �� 	 � ��
 �#8888886?   5D      5F      5H      5I      5J       � DataContext 5K      2   ,Wpf_Custom_Combobox.AutoCompleteBoxViewModel  5L   
   ��5N      �� 5O   
   " ��6   .�5P      �� 	 �@J�SnapsToDevicePixels$

 true��64   �� 5Q      	 �@�OverridesDefaultStyle$

 true��66   �� 5R      	 � ��$

 Auto=�6K   �� 5S      	 � ��$

 Auto=�6I   �� 5T      	 � ��$

 true��6>   �� 5U      	 �@��
IsEditable$

 True��6+   �� 5V      	 � ��$	
 120��6)   �� 5W      	 � ��$
 20��6*   �� 5X      	 � ��
 �#eee6+   �� 5Y      	 �@��Text
 6%   �� *Text+�� 5Z      	 �@��IsTextSearchEnabled$

 True��64   �� 5[      	 � ��
 5\      �� 5]      " ��6&   .R�5^      � .+�5_      d� $��ToggleButton��6+   #��z��5`   +   #��[  5a   +   $��2��5b   +   $|�false��5c   +    �� 	ClickMode$ Press=�5e   +    d� 	IsChecked 5d   +   ��  �� Path$ IsDropDownOpen� �� Mode$ TwoWay=� �� RelativeSource �� *TemplatedParent+5f      �� 5g      $��ContentSite��6/    J� IsHitTestVisible$ False��6B    �� SelectionBoxItem#��z 6\    �� SelectionBoxItemTemplate#��z 5h   /   #��z��5i   /   $��3,3,23,3q�5j   /   $��Center=�5k   /   $
��Left=�5l   /   �� 5m       ��Name$ PART_EditableTextBox��6&   #��[ 5o   &   $
��Left=�5p   &   $��Center=�5q   &   $��3,3,23,3q�5r   &   $
|�True��5s   &   
������  �� 
CaretBrush �#eee���#eee$y�Hidden=�5w   &    �� 
IsReadOnly �� 
IsReadOnly# z 5x   &   ��5n   &   Z� 5x   &   � 5y      $��Popup��6$   $��Bottom=�5z   $    �� IsDropDownOpen#��z 5{   $    � AllowsTransparency$
 True��5|   $   $|�False��5}   $   $
��Fade=�5~   $   .��5�   "   � $��DropDown��6'   $
 True��5�   '     � ActualWidth#��z  5�   '   #��z 5�   '   .+�5�   &   �� $ DropDownBorder��6-   $ 50��5�   -   $��0q�5�   -   ��5�   -   ��  �� ! �� Mode$! TemplatedParent=�$ 	DefaultBg�5�   -   �� 5�   &   $��4,6,4,6q�63   $
 True��6D   .��5�   *   �� " K� IsItemsHost$
" True��65   -  'System.Windows.Input.KeyboardNavigation#   DirectionalNavigation$# 	Contained=�6H   5�   '   5�   #   5�      5�       5�      P� 5�       �@��HasItems$ false��6:   . �5�   "   �� $ DropDownBorder��6)   	 � ��$
 0��6Z   5�      P� 5�       � {�$ false��6;   . �5�   "   �� 	 � ��
 �#8888886?   5�      P� 5�       �@��
IsGrouping$
 true��6<   . �5�   "   �� 	 � ��$
 false��6R   5�      P� 5�      $ P� 
SourceName$$ Popup��6&    �@�AllowsTransparency$
 true��6]   . �5�   "   �� $ DropDownBorder��6)   	 �@��CornerRadius$
 0��6]   �� 5�   "   $ DropDownBorder��6)   	 � ��$
 0,2,0,0q�6W   5�      P� 5�       �@��
IsEditable$
 true��6=   . �5�   "   �� 	 � ��$
 false��6>   �� 5�   "   $ PART_EditableTextBox��6)   	 � y�$
 Visible=�6a   �� 5�   "   $ ContentSite��6)   	 � y�$
 Hidden=�6X   5�      5�      5�      5�      5�      