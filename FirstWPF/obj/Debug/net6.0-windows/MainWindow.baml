   M S B A M L   `   `   `  ����C  ?FirstWPF, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:FirstWPFFirstWPF  5   	       FirstWPF.MainWindow   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   (localclr-namespace:FirstWPF     5   	   -   5          �Name$  	tb_output��5   	    � Title$ 
MainWindow��5   	   $	��450��6   $	��800��6)   .��5	      � .+�5
   
   �� $Q��Khttps://img.freepik.com/premium-vector/binary-code-background_88211-416.jpg��6   $��UniformToFill=�6e   �� 5   
   -   5         ��Name$ btn_encrypt��5      $��Encrypt��6&   $
��Left=�68   $��29��6S   $��100,168,0,0q�6_   $	��Top=�6t   $	��120��6�    J� RenderTransformOrigin$ 
0.54,1.277&�6�   �� 5   
   -   5         ��Name$ 
tb_message��5      $
��Left=�6&   $��42��6A   $��	98,67,0,0q�6M    �� TextWrapping$
 Wrap=�6`   $	��Top=�6t   $	��611��6�   6�   �� 5   
   -   5        $ btn_reverse��5      $��Reverse��6&   $
��Left=�68   $��28��6S   $��
587,30,0,0q�6_   $	��Top=�6s   $	��122��6�   6�   �� 5   
   -   5         ��Name$ text1��5      $
��Left=�6#   $��18��6>   $��	98,44,0,0q�6J   $
��Wrap=�6]   $"��Enter message to be encoded:��6q   $	��Top=�6�   $	��182��6�   
���  ��6�   �� 5   
   -   5        $ 
tb_output1��5      $
��Left=�6&   $��30��6A   $��253,167,0,0q�6M   $
 Wrap=�6b   $	��Top=�6v   $	��456��6�   �� 5   
   -   5        $ btn_decrypt��5      $��Decrypt��6&   $
��Left=�68   $��30��6S   $��100,217,0,0q�6_   $	��Top=�6t   $	��122��6�   $ 0.428,2.345&�6�   6�   �� 5   
   $
��Left=�6   $��22��6/   $��100,125,0,0q�6;   $
��Wrap=�6P   $��Enter shift value:��6d   $	��Top=�6~   $	��237��6�   
���  ��6�   �� 5   
   -   5        $ tb_shift��5      $
��Left=�6$   $��22��6?   $��202,125,0,0q�6K   $
 Wrap=�6`   $	��Top=�6t   $��33��6�   .��6�   ��5      �� 5       �� Path$ IntegerInput�6    �� UpdateSourceTrigger$ PropertyChanged=�6.   	 �� ValidationRules	 5      5  /System.Windows.Controls.ExceptionValidationRule  5      5      .��5      5      �� 5   
   -	   5        $ 
tb_output2��5      $
��Left=�6&   $��30��6A   $��253,217,0,0q�6M   $
 Wrap=�6b   $	��Top=�6v   $	��456��6�   5      5      