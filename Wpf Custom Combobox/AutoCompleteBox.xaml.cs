using System.Collections;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Diagnostics;
using System.Globalization;
using System.Runtime.CompilerServices;
using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace Wpf_Custom_Combobox;

public partial class AutoCompleteBox : ComboBox
{
    public SolidColorBrush DefaultBg
    {
        get { return (SolidColorBrush)GetValue(DefaultBgProperty); }
        set { SetValue(DefaultBgProperty, value); }
    }

    public static readonly DependencyProperty DefaultBgProperty =
        DependencyProperty.Register("DefaultBg", typeof(SolidColorBrush), typeof(AutoCompleteBox), new PropertyMetadata(new BrushConverter().ConvertFromString("#10FFFFFF")));

    public string HoverBg
    {
        get { return (string)GetValue(HoverBgProperty); }
        set { SetValue(HoverBgProperty, value); }
    }

    public static readonly DependencyProperty HoverBgProperty =
        DependencyProperty.Register("HoverBg", typeof(string), typeof(AutoCompleteBox), new PropertyMetadata("#30FFFFFF"));

    public IEnumerable ItemsSource1
    {
        get { return (IEnumerable)GetValue(ItemsSource1Property); }
        set { SetValue(ItemsSource1Property, value); }
    }

    public static readonly DependencyProperty ItemsSource1Property =
        DependencyProperty.Register("ItemsSource1", typeof(IEnumerable), typeof(AutoCompleteBox), new PropertyMetadata(Array.Empty<string>()));

    public AutoCompleteBox()
    {
        InitializeComponent();
        MouseEnter += ME;
        MouseLeave += ML;

        
    }

    private void ME(object sender, System.Windows.Input.MouseEventArgs e)
    {
        DefaultBg = (SolidColorBrush)Background.Clone();
        Background.BeginAnimation(SolidColorBrush.ColorProperty, new ColorAnimation((Color)ColorConverter.ConvertFromString(HoverBg), TimeSpan.FromMilliseconds(100)));
    }

    private void ML(object sender, System.Windows.Input.MouseEventArgs e)
    {
        Background.BeginAnimation(SolidColorBrush.ColorProperty, new ColorAnimation(DefaultBg.Color, TimeSpan.FromMilliseconds(100)));
    }
}

public class AutoCompleteBoxViewModel : INotifyPropertyChanged
{
    public event PropertyChangedEventHandler? PropertyChanged;

    //public ICommand StartCommand
    //{
    //    get
    //    {
    //        _start ??= new RelayCommand(
    //                p => true,
    //                p => Start());
    //        return _start;
    //    }
    //}

    private string tbSelection;

    public string TbSelection
    {
        get { return tbSelection; }
        set
        {
            tbSelection = value;
            NotifyPropertyChanged();
        }
    }


    private string text;

    public string Text
    {
        get { return text; }
        set 
        {
            text = value;
            TextChanged();
            NotifyPropertyChanged();
        }
    }
    

    private List<string> items;

    public List<string> Items
    {
        get { return items; }
        set 
        {
            items = value;
            NotifyPropertyChanged();
        }
    }


    public AutoCompleteBoxViewModel()
    {
    }

    private void TextChanged()
    {
    }

    private void NotifyPropertyChanged([CallerMemberName] string name = null)
    {
        PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(name));
    }
}