using System;
using System.Collections;
using System.Reflection.Metadata.Ecma335;

namespace retiredmask
{
    public class RetiredMask
    {
        public double material_amount;
        public int qualified_mask_amount;
        public int day;
        public double retired_mask_material_amount;
        public double average_material_perday;
        public double average_mask_perday;
        public int retired_mask_total_amount;
        public int mask_total_amount;
        public int[] qualified_mask_amount_perday;
        public double[] qualified_mask_mass_perday;
        public double[] retired_matereial_mass_perday;
        public double retired_material_mass_total;
        public double retired_mask_mass_total;
        public double retired_material;
        public RetiredMask(double material_amount, int qualified_mask_amount, int day)
        {
            this.material_amount = material_amount;
            this.qualified_mask_amount = qualified_mask_amount;
            this.day = day;
            //start to code the main logic process
            this.mask_total_amount = calculate_mask_total_ammount(this.material_amount);

            this.qualified_mask_amount_perday = calculater_qualified_mask_amount_perday(this.qualified_mask_amount, this.day);
            this.qualified_mask_mass_perday = calculate_qualified_mask_mass_perday(this.qualified_mask_amount_perday);
            this.retired_material_mass_total = calculate_retired_material_total_amount(this.material_amount, this.qualified_mask_mass_perday);
            this.retired_material = calculater_retired_material_amount(this.retired_material_mass_total);
            this.retired_mask_mass_total = calculater_retired_maske_mass_amount(this.retired_material_mass_total, this.retired_material);
            this.retired_matereial_mass_perday = calculater_retired_material_perday(this.retired_mask_mass_total, this.day);
            this.calculate_retired_mask_amount_perday(this.retired_matereial_mass_perday, this.retired_mask_total_amount);
        }
        public int calculate_mask_total_ammount(double material_amount)
        {
            double mask_total_amount_double = material_amount / 0.003;
            int mask_total_amount = (int)mask_total_amount_double;
            Console.WriteLine("本批物料理论上可以生产：" + mask_total_amount.ToString() + "只");
            return mask_total_amount;
        }

        public int calculate_reitred_mask_amount(int mask_total_amount, int qualified_amount)
        {
            int retired_mask_amount = mask_total_amount - qualified_amount;
            Console.WriteLine("本批报废口罩总数为：" + retired_mask_amount.ToString() + "只");
            return retired_mask_amount;
        }

        public int[] calculater_qualified_mask_amount_perday(int qualified_mask_amount, int day)
        {
            //calculate average yield at first and creat a random number to creat the amount of mask yield perday
            int average_mask_yield = (int)(qualified_mask_amount / day);
            Console.WriteLine("本批物料日平均产量为：" + average_mask_yield.ToString() + "只");
            ArrayList mask_list = new ArrayList();
            int total = 0;
            for (int index = 0; index < (day - 1); index++)
            {
                int mask_amount = new Random().Next((int)(average_mask_yield * 0.9), (int)(average_mask_yield * 1.1));
                //Console.WriteLine(mask_amount);
                mask_list.Add(mask_amount);
                total += mask_amount;
            }

            mask_list.Add((int)(qualified_mask_amount - total));
            //Console.WriteLine(mask_list);
            int[] mask_array = (int[])mask_list.ToArray(typeof(int));
            Console.WriteLine("本批日产量为：");
            for (int index = 0; index < mask_array.Length; index++)
            {
                Console.WriteLine(mask_array[index]);
            }
            return mask_array;
        }

        public double[] calculate_qualified_mask_mass_perday(int[] mask_array)
        {
            ArrayList mass_list = new ArrayList();
            for (int index = 0; index < mask_array.Length; index++)
            {
                mass_list.Add(Math.Round((mask_array[index] * 0.003), 1));
            }
            double[] mass_array = (double[])mass_list.ToArray(typeof(double));
            Console.WriteLine("本批日生产质量为：");
            for (int index = 0; index < mass_array.Length; index++)
            {
                Console.WriteLine(mass_array[index]);
            }
            return mass_array;
        }

        public double calculate_retired_material_total_amount(double total_material_amount, double[] mass_array)
        {
            double qualified_mask_mass = 0;
            for (int index = 0; index < mass_array.Length; index++)
            {
                qualified_mask_mass += mass_array[index];
            }
            double retired_material_total_amount = Math.Round((total_material_amount - qualified_mask_mass), 1);
            Console.WriteLine("本批报废物料总量为：" + retired_material_total_amount.ToString() + "Kg");
            return retired_material_total_amount;
        }

        public double calculater_retired_material_amount(double retired_material_total_amount)
        {
            //for the experience there will be about 60 percent of total retired material become retied_material
            double retired_material = Math.Round((double)(retired_material_total_amount * 0.6), 1);
            Console.WriteLine("本批废料量为：" + retired_material.ToString() + "Kg");
            return retired_material;
        }

        public double calculater_retired_maske_mass_amount(double retired_material_total_amount, double retired_material_mass)
        {
            double retired_material = Math.Round((retired_material_total_amount - retired_material_mass), 1);
            Console.WriteLine("本批不合格口罩总质量为：" + retired_material.ToString() + "Kg");
            return retired_material;
        }

        public double[] calculater_retired_material_perday(double retired_mask_material_total_amount, int day)
        {
            ArrayList material_list = new ArrayList();
            double average = retired_mask_material_total_amount / day;
            //Console.WriteLine(average);
            double amount = 0;
            for (int index = 0; (index < day - 1); index++)
            {
                double amount_perday;
                if ((new Random().NextDouble()) > 0.5)
                {
                    amount_perday = Math.Round((average + (new Random().NextDouble()*0.5)), 1);
                }
                else
                {
                    amount_perday = Math.Round((average - (new Random().NextDouble()*0.5)), 1);
                }
                material_list.Add(amount_perday);
                amount += amount_perday;
            }
            material_list.Add(Math.Round((retired_mask_material_total_amount - amount), 1));
            double[] material_array = (double[])material_list.ToArray(typeof(double));
            Console.WriteLine("本批每日不合格口罩质量为：");
            for (int index = 0; index < material_array.Length; index++)
            {
                Console.WriteLine(material_array[index]);
            }
            return material_array;
        }

        int[] calculate_retired_mask_amount_perday(double[] material_array, int retired_mask_amount)
        {
            ArrayList retired_mask_amount_perday_list = new ArrayList();
            int amount = 0;
            for (int index = 0; index < (material_array.Length); index++)
            {
                int amount_perday = (int)(material_array[index] / 0.003);
                int amount_perday_random = new Random().Next((int)(amount_perday * 0.9), (int)(amount_perday * 1.1));
                amount += amount_perday;
                retired_mask_amount_perday_list.Add(amount_perday_random);
            }
            int[] retired_mask_perday_array = (int[])retired_mask_amount_perday_list.ToArray(typeof(int));
            Console.WriteLine("本批次每日不合格口罩数量依次为：");
            for (int index = 0; index < retired_mask_perday_array.Length; index++)
            {
                Console.WriteLine("" + retired_mask_perday_array[index] + "");
            }
            return retired_mask_perday_array;
        }
    }
}
