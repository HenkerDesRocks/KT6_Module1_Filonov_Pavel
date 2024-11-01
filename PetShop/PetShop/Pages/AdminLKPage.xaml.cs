﻿using System;
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

namespace PetShop.Pages
{
    /// <summary>
    /// Логика взаимодействия для AdminLKPage.xaml
    /// </summary>
    public partial class AdminLKPage : Page
    {
        public AdminLKPage()
        {
            InitializeComponent();
        }

        private void AddBtn_Click(object sender, RoutedEventArgs e)
        {
            Classes.Manager.MainFrame.Navigate(new Pages.AddPage());
        }

        private void BackBtn_Click(object sender, RoutedEventArgs e)
        {
            Classes.Manager.MainFrame.Navigate(new Pages.Authorization());
            
        }

        private void Edit_Click(object sender, RoutedEventArgs e)
        {
            Classes.Manager.MainFrame.Navigate(new Pages.EditPage());
            
        }

        private void Delete_Click(object sender, RoutedEventArgs e)
        {
            
            
        }

        private void SortUp_Checked(object sender, RoutedEventArgs e)
        {

        }
    }
}
