   M S B A M L   `   `   `  ���� S  O收率计算器桌面版, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullC&clr-namespace:收率计算器桌面版收率计算器桌面版  )    #收率计算器桌面版.MainWindow   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     8local&clr-namespace:收率计算器桌面版       � Title$  
MainWindow��$	��450��$	��800��.��� .+��� -    ��Name$ qualified_mask_numb_label��$&�� 口罩产量(合格口罩数量)��$
��Left=�$��25��$��	54,62,0,0q�$	��Top=�$	��140���� -   $! material_total_amount_label��$��物料总质量��$
��Left=�$��28��$��
54,114,0,0q�$	��Top=�$��78���� -   $ 	day_label��$��生产天数��$
��Left=�$��30��$��
54,165,0,0q�$	��Top=�$��78���� -    ��Name$# qualified_mask_amount_textbox��$
��Left=�$��16��$��
195,66,0,0q� �� TextWrapping$
 Wrap=�$	��Top=�$��84���� -   $ material_mass_text_box��$
��Left=�$��16��$��195,120,0,0q�$
 Wrap=�$	��Top=�$��84���� -   $ day_textbox��$
��Left=�$��16��$��195,169,0,0q�$
 Wrap=�$	��Top=�$��84���� -   $��计算��$
��Left=�$��27��$��
54,238,0,0q�$	��Top=�$��81���� -   $( "output_label_qualified_mass_perday��$
��NULL��$
��Left=�$	��138��$��
400,62,0,0q�$	��Top=�$��75�� J� RenderTransformOrigin$ 0.333,0.781&��� -	   $ output_retired_mask_mass��$
��NULL��$
��Left=�$	��138��$��
515,65,0,0q�$	��Top=�$��55���� -
   $% retired_mask_mass_perday_output��$
��NULL��$
��Left=�$	��138��$��
660,66,0,0q�$	��Top=�$��40��4  .System.Windows.Automation.AutomationProperties   IsColumnHeader$
 True���� $��合格口罩总质量��$
��Left=�$��30��$��365,222,0,0q�$	��Top=�$	��110���� -   $' !output_qualified_mask_mass_amount��$��Label��$
��Left=�$��30��$��400,270,0,0q�$	��Top=�$��70���� $��不合格口罩总质量��$
��Left=�$��25��$��480,220,0,0q�$	��Top=�$	��110���� $��不合格口罩总数量��$
��Left=�$��28��$��614,217,0,0q�$	��Top=�$	��116���� -   $% output_retired_mask_mass_amount��$��Label��$
��Left=�$��30��$��510,268,0,0q�$	��Top=�$��60���� -   $  output_retired_mask_amount��$��Label��$
��Left=�$��30��$��644,266,0,0q�$	��Top=�$��56���� $��每天合格口罩质量��$��Center=�$��34��$��0,23,0,0q�$	��Top=�$	��110���� $��每天报废口罩质量��$
��Left=�$��34��$��
460,23,0,0q�$	��Top=�$	��110���� $��每天报废口罩数量��$
��Left=�$��34��$��
598,23,0,0q�$	��Top=�$	��110���� $��	废料量��$
��Left=�$��35��$��390,340,0,0q�$	��Top=�$��75���� -   $) #output_retired_material_mass_amount��$��Label��$
��Left=�$��35��$��392,370,0,0q�$	��Top=�$��56��