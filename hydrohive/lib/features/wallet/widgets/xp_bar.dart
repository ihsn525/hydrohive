import 'package:flutter/material.dart';
import '../../../common/theme.dart';

class XPBar extends StatelessWidget {
  final int xp;
  final int level;
  final int winStreak;
  final int xpProgress;
  final int xpToNextLevel;
  const XPBar({super.key, required this.xp, required this.level, required this.winStreak, required this.xpProgress, required this.xpToNextLevel});

  @override
  Widget build(BuildContext context) {
    double progress = xpProgress / xpToNextLevel;
    return Card(
      color: AppColors.card,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Level $level', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                Row(
                  children: [
                    Icon(Icons.local_fire_department, color: Colors.orange, size: 20),
                    const SizedBox(width: 4),
                    Text('Streak: $winStreak', style: TextStyle(color: Colors.orangeAccent)),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 8),
            Text('XP: $xp', style: TextStyle(color: Colors.amberAccent)),
            const SizedBox(height: 8),
            LinearProgressIndicator(
              value: progress,
              color: AppColors.accent,
              backgroundColor: Colors.grey.shade800,
              minHeight: 7,
            ),
            const SizedBox(height: 4),
            Text('$xpProgress / $xpToNextLevel XP to next level', style: TextStyle(color: Colors.white70, fontSize: 12)),
          ],
        ),
      ),
    );
  }
}
