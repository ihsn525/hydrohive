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
  const AchievementCard({
    super.key,
    required this.xp,
    required this.achievements,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.card,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      margin: const EdgeInsets.symmetric(vertical: 12),
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Achievement Unlocked!',
                style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 8),
            Text('You earned $xp XP',
                style: const TextStyle(color: Colors.orange, fontWeight: FontWeight.bold)),
            const SizedBox(height: 12),
            Wrap(
              spacing: 16,
              children: achievements.map((a) => Column(
                children: [
                  Icon(
                    a.unlocked ? Icons.emoji_events : Icons.lock_outline,
                    color: a.unlocked ? Colors.amber : Colors.grey,
                    size: 32,
                  ),
                  const SizedBox(height: 4),
                  Text(a.name, style: const TextStyle(color: Colors.white)),
                  Text('+${a.xp} XP', style: const TextStyle(color: Colors.amberAccent, fontSize: 12)),
                ],
              )).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
