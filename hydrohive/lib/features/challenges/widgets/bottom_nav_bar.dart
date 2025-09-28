import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  final int selectedTab;
  const BottomNavBar({super.key, required this.selectedTab});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: const Color(0xFF233244),
      selectedItemColor: Colors.orangeAccent,
      unselectedItemColor: Colors.white70,
      currentIndex: selectedTab,
      type: BottomNavigationBarType.fixed,
      onTap: (index) {
        switch (index) {
          case 0:
            Navigator.pushReplacementNamed(context, '/hub');
            break;
          case 1:
            Navigator.pushReplacementNamed(context, '/missions');
            break;
          case 2:
            Navigator.pushReplacementNamed(context, '/wallet');
            break;
          case 3:
            Navigator.pushReplacementNamed(context, '/challenges');
            break;
          case 4:
            Navigator.pushReplacementNamed(context, '/settings');
            break;
        }
      },
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Hub'),
        BottomNavigationBarItem(icon: Icon(Icons.water_drop), label: 'Missions'),
        BottomNavigationBarItem(icon: Icon(Icons.wallet), label: 'Wallet'),
        BottomNavigationBarItem(icon: Icon(Icons.flag), label: 'Challenges'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
      ],
    );
  }
}
