   M S B A M L   `   `   `  ����S  O收率计算器桌面版, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullC&clr-namespace:收率计算器桌面版收率计算器桌面版  5   	   )    #收率计算器桌面版.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   8local&clr-namespace:收率计算器桌面版     5   	     � Title$  
MainWindow��5   	   $	��450��6   $	��800��6)   .��5	      � .+�5
   
   �� -   5         ��Name$ qualified_mask_numb_label��5
      $&�� 口罩产量(合格口罩数量)��63   $
��Left=�6J   $��25��6e   $��	54,62,0,0q�6q   $	��Top=�6�   $	��140��6�   �� 5   
   -   5        $! material_total_amount_label��5      $��物料总质量��65   $
��Left=�6E   $��28��6`   $��
54,114,0,0q�6l   $	��Top=�6�   $��78��6�   �� 5   
   -   5        $ 	day_label��5      $��生产天数��6#   $
��Left=�62   $��30��6M   $��
54,165,0,0q�6Y   $	��Top=�6m   $��78��6�   �� 5   
   -   5         ��Name$# qualified_mask_amount_textbox��5      $
��Left=�69   $��16��6T   $��
195,66,0,0q�6`    �� TextWrapping$
 Wrap=�6t   $	��Top=�6�   $��84��6�   �� 5   
   -   5        $ material_mass_text_box��5      $
��Left=�62   $��16��6M   $��195,120,0,0q�6Y   $
 Wrap=�6n   $	��Top=�6�   $��84��6�   �� 5   
   -   5        $ day_textbox��5      $
��Left=�6'   $��16��6B   $��195,169,0,0q�6N   $
 Wrap=�6c   $	��Top=�6w   $��84��6�   �� 5   
   -   5        $��计算��5      $
��Left=�6   $��27��69   $��
54,238,0,0q�6E   $	��Top=�6Y   $��81��6q   6|   �� 5   
   -   5        $( "output_label_qualified_mass_perday��5      $
��NULL��6<   $
��Left=�6K   $	��138��6f   $��
400,62,0,0q�6s   $	��Top=�6�   $��75��6�    J� RenderTransformOrigin$ 0.333,0.781&�6�   �� 5   
   -	   5        $ output_retired_mask_mass��5      $
��NULL��62   $
��Left=�6A   $	��138��6\   $��
515,65,0,0q�6i   $	��Top=�6}   $��55��6�   �� 5   
   -
   5        $% retired_mask_mass_perday_output��5      $
��NULL��69   $
��Left=�6H   $	��138��6c   $��
660,66,0,0q�6p   $	��Top=�6�   $��40��6�   4  .System.Windows.Automation.AutomationProperties   IsColumnHeader$
 True��6�   �� 5   
   $��合格口罩总质量��6   $
��Left=�6"   $��30��6=   $��365,222,0,0q�6I   $	��Top=�6^   $	��110��6v   �� 5   
   -   5        $' !output_qualified_mask_mass_amount��5      $��Label��6;   $
��Left=�6K   $��30��6f   $��400,270,0,0q�6r   $	��Top=�6�   $��70��6�   �� 5   
   $��不合格口罩总质量��6   $
��Left=�6#   $��25��6>   $��480,220,0,0q�6J   $	��Top=�6_   $	��110��6w   �� 5   
   $��不合格口罩总数量��6   $
��Left=�6#   $��28��6>   $��614,217,0,0q�6J   $	��Top=�6_   $	��116��6w   �� 5   
   -   5        $% output_retired_mask_mass_amount��5      $��Label��69   $
��Left=�6I   $��30��6d   $��510,268,0,0q�6p   $	��Top=�6�   $��60��6�   �� 5   
   -   5        $  output_retired_mask_amount��5      $��Label��64   $
��Left=�6D   $��30��6_   $��644,266,0,0q�6k   $	��Top=�6�   $��56��6�   �� 5   
   $��每天合格口罩质量��6   $��Center=�6#   $��34��6@   $��0,23,0,0q�6L   $	��Top=�6^   $	��110��6v   �� 5   
   $��每天报废口罩质量��6   $
��Left=�6#   $��34��6>   $��
460,23,0,0q�6J   $	��Top=�6^   $	��110��6v   �� 5   
   $��每天报废口罩数量��6   $
��Left=�6#   $��34��6>   $��
598,23,0,0q�6J   $	��Top=�6^   $	��110��6v   �� 5   
   $��	废料量��6   $
��Left=�6   $��35��69   $��390,340,0,0q�6E   $	��Top=�6Z   $��75��6r   �� 5   
   -   5        $) #output_retired_material_mass_amount��5      $��Label��6=   $
��Left=�6M   $��35��6h   $��392,370,0,0q�6t   $	��Top=�6�   $��56��6�   5       5!      