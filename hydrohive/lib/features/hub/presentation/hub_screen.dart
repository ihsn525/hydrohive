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
        centerTitle: true,
        title: const Text('HydroHive', style: TextStyle(color: Colors.orangeAccent, fontWeight: FontWeight.bold)),
        actions: [Icon(Icons.person, color: Colors.orangeAccent)],
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          ProgressCard(
            title: 'Daily: Take a 5-Minute Shower',
            progress: 0.6,
            onPressed: () {},
          ),
          ProgressCard(
            title: 'Weekly: Report a Leaky Tap',
            progress: 0.2,
            onPressed: () {},
          ),
          AchievementCard(
            xp: 300,
            achievements: [
              AchievementData('First Leak Report', 100, true),
              AchievementData('Greywater Reuser', 100, true),
              AchievementData('Neighborhood Hero', 200, false),
            ],
          ),
          EventCard(
            title: 'Neighborhood Leaderboard',
            time: 'This Week',
            players: 12,
            isLive: false,
            xp: 250,
          ),
          EventCard(
            title: 'Rainwater Center QR Check-in',
            time: 'Today until 6:00 PM',
            players: 5,
            isLive: true,
            xp: 100,
          ),
        ],
      ),
    );
  }
}
