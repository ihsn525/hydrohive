import 'package:flutter/material.dart';
import '../../../common/theme.dart';

class AchievementData {
  final String name;
  final int xp;
  final bool unlocked;
  AchievementData(this.name, this.xp, this.unlocked);
}

class AchievementCard extends StatelessWidget {
  final int xp;
  final List<AchievementData> achievements;
  const AchievementCard({super.key, required this.xp, required this.achievements});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.card,
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.emoji_events, color: Colors.yellow.shade700),
                const SizedBox(width: 8),
                Text('Achievements', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                const Spacer(),
                Text('XP: $xp', style: const TextStyle(color: Colors.orangeAccent, fontWeight: FontWeight.bold)),
              ],
            ),
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: achievements.map((a) => Column(
                children: [
                  Icon(
                    a.unlocked ? Icons.verified : Icons.lock_outline,
                    color: a.unlocked ? Colors.lightBlueAccent : Colors.grey,
                    size: 32,
                  ),
                  const SizedBox(height: 4),
                  Text(a.name, style: TextStyle(color: a.unlocked ? Colors.white : Colors.grey)),
                  Text('+${a.xp} XP', style: TextStyle(fontSize: 12, color: Colors.orangeAccent)),
                ],
              )).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
