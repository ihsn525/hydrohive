import 'package:flutter/material.dart';

class WinStreakCard extends StatelessWidget {
  final int streakDays;
  final int streakXP;
  const WinStreakCard({ super.key, required this.streakDays, required this.streakXP });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 14),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      color: Colors.transparent,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 22.0),
        child: Column(
          children: [
            Text(
              '$streakDays Days',
              style: const TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.bold,
                fontSize: 28,
              ),
            ),
            const SizedBox(height: 6),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text('Current Conservation Streak', style: TextStyle(color: Colors.redAccent)),
                SizedBox(width: 4),
                Icon(Icons.local_fire_department, color: Colors.orange),
              ],
            ),
            Text('Streak Bonus: +$streakXP XP/day', style: TextStyle(color: Colors.amber, fontSize: 13)),
          ],
        ),
      ),
    );
  }
}
