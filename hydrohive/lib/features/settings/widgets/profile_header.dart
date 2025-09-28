import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  final String username;
  final int level;
  final int badges;
  final int trophies;
  final double winrate;
  const ProfileHeader({
    super.key,
    required this.username,
    required this.level,
    required this.badges,
    required this.trophies,
    required this.winrate,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.orangeAccent,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            CircleAvatar(
              backgroundColor: Colors.white,
              radius: 36,
              child: Icon(Icons.videogame_asset, size: 38, color: Colors.orange),
            ),
            const SizedBox(height: 8),
            Text(username, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white)),
            Text('Elite Gamer • Level $level', style: TextStyle(color: Colors.white)),
            const SizedBox(height: 18),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _MiniStat(value: badges.toString(), label: 'Badges', icon: Icons.emoji_events_outlined),
                _MiniStat(value: trophies.toString(), label: 'Trophies', icon: Icons.workspace_premium),
                _MiniStat(value: '${(winrate * 100).toInt()}%', label: 'Win Rate', icon: Icons.insights),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _MiniStat extends StatelessWidget {
  final String value;
  final String label;
  final IconData icon;
  const _MiniStat({required this.value, required this.label, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, color: Colors.white, size: 24),
        const SizedBox(height: 3),
        Text(value, style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold)),
        Text(label, style: TextStyle(color: Colors.white)),
      ],
    );
  }
}
