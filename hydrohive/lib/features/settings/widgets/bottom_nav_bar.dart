import 'package:flutter/material.dart';
import '../../../common/theme.dart';

class BottomNavBar extends StatelessWidget {
  final int selectedTab;
  const BottomNavBar({super.key, required this.selectedTab});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: AppColors.card,
      selectedItemColor: AppColors.accent,
      unselectedItemColor: Colors.white70,
      currentIndex: selectedTab,
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
            Navigator.pushReplacementNamed(context, '/reports');
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
        BottomNavigationBarItem(icon: Icon(Icons.report), label: 'Reports'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
      ],
      type: BottomNavigationBarType.fixed,
    );
  }
}
