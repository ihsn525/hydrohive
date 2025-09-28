import 'package:flutter/material.dart';
import '../widgets/profile_header.dart';
import '../widgets/trophy_collection.dart';
import '../widgets/gaming_stats.dart';
import '../widgets/win_streak_card.dart';
import '../widgets/settings_panel.dart';
import '../widgets/bottom_nav_bar.dart';
import '../../../common/theme.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        elevation: 0,
        centerTitle: true,
        title: const Text('HydroHive', style: TextStyle(color: Colors.orangeAccent, fontWeight: FontWeight.bold)),
        actions: [Icon(Icons.person, color: Colors.orangeAccent)],
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          ProfileHeader(
            username: 'Alex Rivera',
            level: 12,
            badges: 2,
            trophies: 3,
            winrate: 0.95,
          ),
          TrophyCollection(
            trophies: [
              Trophy('First Drop', 50, Icons.water_drop, true),
              Trophy('Wave Rider', 200, Icons.waves, true),
              Trophy('Ocean Master', 500, Icons.pool, true),
              Trophy('Tsunami Force', 1000, Icons.surfing, false),
            ],
          ),
          GamingStats(hoursPlayed: 47, questsCompleted: 12, totalXP: 5400),
          WinStreakCard(streakDays: 7, streakXP: 70),
          SettingsPanel(),
        ],
      ),
    );
  }
}
