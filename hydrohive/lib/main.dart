import 'package:flutter/material.dart';
import 'features/hub/presentation/hub_screen.dart';
import 'features/wallet/presentation/wallet_screen.dart';
import 'common/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HydroHive',
      theme: appTheme, // Use your custom theme from common/theme.dart
      initialRoute: '/hub', // Set the initial screen
      routes: {
        '/hub': (context) => const HubScreen(),
        '/wallet': (context) => const WalletScreen(),
        // Add other screens here as you build them
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
