import 'package:flutter/material.dart';
import '../widgets/progress_card.dart';
import '../widgets/achievement_card.dart';
import '../widgets/event_card.dart';
import '../widgets/bottom_nav_bar.dart';

class HubScreen extends StatelessWidget {
  const HubScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF232b3d),
      appBar: AppBar(
        backgroundColor: const Color(0xFF232b3d),
        elevation: 0,
        title: const Text('HydroHive', style: TextStyle(color: Colors.orangeAccent, fontWeight: FontWeight.bold)),
        actions: [Icon(Icons.person, color: Colors.orangeAccent)],
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          // Add your custom widgets here
          ProgressCard(title: 'Solar Panel Installation Mastery', progress: 0.35, onPressed: () {}),
          ProgressCard(title: 'Mobile Device Repair Specialist', progress: 0.78, onPressed: () {}),
          AchievementCard(xp: 150, achievements: [
            AchievementData('First Drop', 50, true),
            AchievementData('Wave Rider', 200, true),
            AchievementData('Ocean Master', 500, false),
          ]),
          EventCard(title: 'Live Welding Boss Battle', time: 'Today at 3:00 PM', players: 25, isLive: true, xp: 500),
        ],
      ),
      bottomNavigationBar: const BottomNavBar(selectedTab: 0),
      floatingActionButton: FloatingActionButton(onPressed: () {}),
    );
  }
}
