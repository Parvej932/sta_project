import 'package:flutter/material.dart';

import '../../../utils/app_colors.dart';

class BottomView extends StatefulWidget {
  const BottomView({super.key});

  @override
  State<BottomView> createState() => _BottomViewState();
}

class _BottomViewState extends State<BottomView> {
  int selectedIndex = 0;

  List<Widget> screens = [

    const Center(child: Text('profile')),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          selectedItemColor: AppColors.BrandColor,
          unselectedItemColor: Colors.black,
          onTap: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home') ,
            BottomNavigationBarItem(icon: Icon(Icons.add),label: 'Add Task') ,
            BottomNavigationBarItem(icon: Icon(Icons.person),label: 'Profile') ,
          ]),
    );
  }
}
