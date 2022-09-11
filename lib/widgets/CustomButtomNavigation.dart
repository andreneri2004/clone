import 'package:flutter/material.dart';

class CustomButtomNavigation extends StatelessWidget {
  const CustomButtomNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        //Para retirar os label
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.pink,
        backgroundColor: Color.fromRGBO(55, 57, 84, 1),
        unselectedItemColor: Color.fromRGBO(116, 117, 152, 1),
        //seleciona o icone
        currentIndex: 1,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today_outlined),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.bar_chart,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.supervised_user_circle_outlined,
            ),
            label: '',
          ),
        ]);
  }
}
