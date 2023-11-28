using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using Desktop01.Model;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Media.Imaging;

namespace Desktop01
{
    public partial class MainWindowVM : ObservableObject
    {
        [ObservableProperty]
        public ObservableCollection<User> users;
        [ObservableProperty]
        public User selectedUser = null;



        public void CloseMainWindow()
        {
            Application.Current.MainWindow.Close();
        }




        [RelayCommand]
        public void messeag()
        {

            MessageBox.Show($"{selectedUser.FirstName} GPA value must be between 0 and 4.", "Error");
        }

        [RelayCommand]
        public void AddStudent()
        {
            var vm = new AddUserVM();
            vm.title = "Add Student";
            AddUserWindow window = new AddUserWindow(vm);
            window.ShowDialog();

            if (vm.Student.FirstName != null)
            {
                users.Add(vm.Student);
            }
        }

        [RelayCommand]
        public void Delete()
        {
            if (selectedUser != null)
            {
                string name = selectedUser.FirstName;
                users.Remove(selectedUser);
                MessageBox.Show($"{name} is deleted successfuly!");

            }
            else
            {
                MessageBox.Show("Plese select the student to be deleted!", "Error");


            }
        }
        [RelayCommand]
        public void ExecuteEditStudentCommand()
        {
            if (selectedUser != null)
            {
                var vm = new AddUserVM(selectedUser);
                vm.title = "Edit Student";
                var window = new AddUserWindow(vm);

                window.ShowDialog();


                int index = users.IndexOf(selectedUser);
                users.RemoveAt(index);
                users.Insert(index, vm.Student);



            }
            else
            {
                MessageBox.Show("Please select the student to edit!", "Error");
            }
        }

        public MainWindowVM()
        {

            users = new ObservableCollection<User>();
            BitmapImage image1 = new BitmapImage(new Uri("/Image/1.png", UriKind.Relative));
            users.Add(new User(23, "Hasini", "Prasadika", "17/9/2000", image1, 3.2));
            BitmapImage image2 = new BitmapImage(new Uri("/Image/2.png", UriKind.Relative));
            users.Add(new User(22, "Prasadika", "Madhushani", "18/4/1994", image2, 2.0));
            BitmapImage image3 = new BitmapImage(new Uri("/Image/2.png", UriKind.Relative));
            users.Add(new User(24, "Avishka", "Vishvanath", "22/8/1999", image3, 3.5));



        }
    }
}