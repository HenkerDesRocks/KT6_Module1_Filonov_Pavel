﻿#pragma checksum "..\..\..\Pages\AdminLKPage.xaml" "{8829d00f-11b8-4213-878b-770e8597ac16}" "B3DA012669D234FF009E341FDFA653E4FE88251FAC047D6398D3AB57B691286C"
//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан программой.
//     Исполняемая версия:4.0.30319.42000
//
//     Изменения в этом файле могут привести к неправильной работе и будут потеряны в случае
//     повторной генерации кода.
// </auto-generated>
//------------------------------------------------------------------------------

using PetShop.Pages;
using System;
using System.Diagnostics;
using System.Windows;
using System.Windows.Automation;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Ink;
using System.Windows.Input;
using System.Windows.Markup;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Media.Effects;
using System.Windows.Media.Imaging;
using System.Windows.Media.Media3D;
using System.Windows.Media.TextFormatting;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Shell;


namespace PetShop.Pages {
    
    
    /// <summary>
    /// AdminLKPage
    /// </summary>
    public partial class AdminLKPage : System.Windows.Controls.Page, System.Windows.Markup.IComponentConnector {
        
        
        #line 19 "..\..\..\Pages\AdminLKPage.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.RadioButton SortUp;
        
        #line default
        #line hidden
        
        
        #line 20 "..\..\..\Pages\AdminLKPage.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.RadioButton SortDown;
        
        #line default
        #line hidden
        
        
        #line 21 "..\..\..\Pages\AdminLKPage.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.ComboBox ManufactureList;
        
        #line default
        #line hidden
        
        
        #line 24 "..\..\..\Pages\AdminLKPage.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.ListView productList;
        
        #line default
        #line hidden
        
        
        #line 53 "..\..\..\Pages\AdminLKPage.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button BackBtn;
        
        #line default
        #line hidden
        
        
        #line 54 "..\..\..\Pages\AdminLKPage.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button AddBtn;
        
        #line default
        #line hidden
        
        
        #line 55 "..\..\..\Pages\AdminLKPage.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button EditBtn;
        
        #line default
        #line hidden
        
        private bool _contentLoaded;
        
        /// <summary>
        /// InitializeComponent
        /// </summary>
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        public void InitializeComponent() {
            if (_contentLoaded) {
                return;
            }
            _contentLoaded = true;
            System.Uri resourceLocater = new System.Uri("/PetShop;component/pages/adminlkpage.xaml", System.UriKind.Relative);
            
            #line 1 "..\..\..\Pages\AdminLKPage.xaml"
            System.Windows.Application.LoadComponent(this, resourceLocater);
            
            #line default
            #line hidden
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Never)]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Design", "CA1033:InterfaceMethodsShouldBeCallableByChildTypes")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Maintainability", "CA1502:AvoidExcessiveComplexity")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1800:DoNotCastUnnecessarily")]
        void System.Windows.Markup.IComponentConnector.Connect(int connectionId, object target) {
            switch (connectionId)
            {
            case 1:
            this.SortUp = ((System.Windows.Controls.RadioButton)(target));
            
            #line 19 "..\..\..\Pages\AdminLKPage.xaml"
            this.SortUp.Checked += new System.Windows.RoutedEventHandler(this.SortUp_Checked);
            
            #line default
            #line hidden
            return;
            case 2:
            this.SortDown = ((System.Windows.Controls.RadioButton)(target));
            
            #line 20 "..\..\..\Pages\AdminLKPage.xaml"
            this.SortDown.Checked += new System.Windows.RoutedEventHandler(this.SortUp_Checked);
            
            #line default
            #line hidden
            return;
            case 3:
            this.ManufactureList = ((System.Windows.Controls.ComboBox)(target));
            return;
            case 4:
            this.productList = ((System.Windows.Controls.ListView)(target));
            return;
            case 5:
            this.BackBtn = ((System.Windows.Controls.Button)(target));
            
            #line 53 "..\..\..\Pages\AdminLKPage.xaml"
            this.BackBtn.Click += new System.Windows.RoutedEventHandler(this.BackBtn_Click);
            
            #line default
            #line hidden
            return;
            case 6:
            this.AddBtn = ((System.Windows.Controls.Button)(target));
            
            #line 54 "..\..\..\Pages\AdminLKPage.xaml"
            this.AddBtn.Click += new System.Windows.RoutedEventHandler(this.AddBtn_Click);
            
            #line default
            #line hidden
            return;
            case 7:
            this.EditBtn = ((System.Windows.Controls.Button)(target));
            
            #line 55 "..\..\..\Pages\AdminLKPage.xaml"
            this.EditBtn.Click += new System.Windows.RoutedEventHandler(this.Edit_Click);
            
            #line default
            #line hidden
            return;
            }
            this._contentLoaded = true;
        }
    }
}

