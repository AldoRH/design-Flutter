import 'package:flutter/material.dart';

class CustomBottomNavigation extends StatelessWidget {
  const CustomBottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedItemColor: Colors.pink,
      backgroundColor: Color.fromRGBO(55, 57, 84, 1),
      unselectedItemColor: Color.fromRGBO(116, 117, 152, 1),
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.calendar_month_outlined), 
          label: 'Calendario',
          ),
        BottomNavigationBarItem(
          icon: Icon(Icons.pie_chart_outline),
           label: 'Grafica'
           ),
        BottomNavigationBarItem(
          icon: Icon(Icons.supervised_user_circle_outlined),
          label: 'Usuario'
          ),
      ],
      onTap: (int index) {
        switch (index) {
          case 0:
            Navigator.pushNamed(context, 'home_screen');
            break;
          case 1:
            Navigator.pushNamed(context, 'scroll_screen');
            break;
          case 2:
            Navigator.pushNamed(context, 'basic_design');
            break;
        }
      }
      );
  }
}