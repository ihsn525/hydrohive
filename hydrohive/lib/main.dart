import 'package:flutter/material.dart';
import 'features/hub/presentation/hub_screen.dart';
import 'features/wallet/presentation/wallet_screen.dart';
import 'features/settings/presentation/settings_screen.dart';
import 'common/theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HydroHive',
      theme: appTheme,
      home: const AppRoot(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class AppRoot extends StatefulWidget {
  const AppRoot({super.key});
  @override
  State<AppRoot> createState() => _AppRootState();
}

class _AppRootState extends State<AppRoot> {
  int currentIndex = 0;
  static final List<Widget> pages = [
    HubScreen(),       // index 0
    WalletScreen(),    // index 1
    Placeholder(),     // index 2 (Challenges: add if needed)
    SettingsScreen(),    // index 3
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xFF233244),
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.white70,
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Hub'),
          BottomNavigationBarItem(icon: Icon(Icons.wallet), label: 'Wallet'),
          BottomNavigationBarItem(icon: Icon(Icons.emoji_events), label: 'Challenges'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Player'),
        ],
      ),
    );
  }
}
