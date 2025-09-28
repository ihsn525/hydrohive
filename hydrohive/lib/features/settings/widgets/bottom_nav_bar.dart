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
        // Implement navigation logic here
        // Example:
        if (index == 0) Navigator.pushNamed(context, '/settings');
      },
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Hub'),
        BottomNavigationBarItem(icon: Icon(Icons.flag), label: 'Quests'),
        BottomNavigationBarItem(icon: Icon(Icons.wallet), label: 'Wallet'),
        BottomNavigationBarItem(icon: Icon(Icons.emoji_events), label: 'Challenges'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Player'),
      ],
      type: BottomNavigationBarType.fixed,
    );
  }
}
