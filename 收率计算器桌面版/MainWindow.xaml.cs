using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

using retiredmask;

namespace 收率计算器桌面版
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {


        public MainWindow()
        {
            InitializeComponent();
        }

        double[] retired_mask_mass_perday;
        int[] retired_mask_amount_perday;
        double[] qualified_mask_mass_perday;
        double retired_material_mass_amount;
        private void Button_Click(object sender, RoutedEventArgs e)
        {
            RetiredMask calculator = new RetiredMask(System.Convert.ToDouble(material_mass_text_box.Text), System.Convert.ToInt32(qualified_mask_amount_textbox.Text), System.Convert.ToInt32(day_textbox.Text));
            qualified_mask_mass_perday = calculator.qualified_mask_mass_perday;
            retired_mask_mass_perday = calculator.retired_matereial_mass_perday;
            retired_mask_amount_perday = calculator.retired_mask_amount_perday;
            retired_material_mass_amount = calculator.retired_material;
            string qulified_mask_perday_string="";
            for(int index=0;index<qualified_mask_mass_perday.Length;index++)
            {
                qulified_mask_perday_string += qualified_mask_mass_perday[index].ToString()+Environment.NewLine;
            }
            string retired_mask_mass_perday_string = "";
            for (int index = 0; index < retired_mask_mass_perday.Length; index++)
            {
                retired_mask_mass_perday_string += retired_mask_mass_perday[index].ToString() + Environment.NewLine;
            }
            string retired_mask_amount_perday_string = "";
            for (int index = 0; index < retired_mask_amount_perday.Length; index++)
            {
                retired_mask_amount_perday_string += retired_mask_amount_perday[index].ToString() + Environment.NewLine;
            }
            output_label_qualified_mass_perday.Content = qulified_mask_perday_string;
            output_retired_mask_mass.Content = retired_mask_mass_perday_string;
            retired_mask_mass_perday_output.Content = retired_mask_amount_perday_string;
            output_retired_material_mass_amount.Content = retired_material_mass_amount;
            output_retired_mask_mass_amount.Content = calculator.retired_mask_mass_total;
            output_qualified_mask_mass_amount.Content = calculator.qualified_mask_mass_amount;
            output_retired_mask_amount.Content = calculator.retired_mask_total_amount;

        }
    }
}
