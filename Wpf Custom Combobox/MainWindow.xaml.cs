using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Diagnostics;
using System.Runtime.CompilerServices;
using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace Wpf_Custom_Combobox;

public partial class MainWindow : Window
{
    public MainWindow()
    {
        InitializeComponent();
        fasz.ItemsSource = new List<string> { "Apple", "Banana", "Balfasz", "Buzi", "Kocsog1", "Apple1", "Banana1", "Balfasz1", "Buzi1", "Kocsog2", "Apple2", "Banana2", "Balfasz2", "Buzi2", "Kocsog2" };
    }
}

public class MainViewModel : INotifyPropertyChanged
{
    public event PropertyChangedEventHandler? PropertyChanged;

    public ObservableCollection<string> Items { get; set; }

    public MainViewModel()
    {
        Items = ["Apple", "Banana", "Balfasz", "Buzi", "Kocsog1", "Apple1", "Banana1", "Balfasz1", "Buzi1", "Kocsog2", "Apple2", "Banana2", "Balfasz2", "Buzi2", "Kocsog2"];
    }
}