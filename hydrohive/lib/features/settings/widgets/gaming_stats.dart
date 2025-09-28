import 'package:flutter/material.dart';
import '../../../common/theme.dart';

class GamingStats extends StatelessWidget {
  final int hoursPlayed;
  final int questsCompleted;
  final int totalXP;
  const GamingStats({
    super.key, required this.hoursPlayed, required this.questsCompleted, required this.totalXP });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.card,
      margin: const EdgeInsets.symmetric(vertical: 16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: [
          Row(children: [
            Icon(Icons.bar_chart, color: Colors.orangeAccent),
            const SizedBox(width: 8),
            Text('Gaming Stats', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
          ]),
          const SizedBox(height: 10),
          Row(
            children: [
              Expanded(child: _StatBox(
                value: hoursPlayed.toString(),
                label: 'Hours Played',
                color: Colors.greenAccent,
                icon: Icons.timer,
              )),
              Expanded(child: _StatBox(
                value: questsCompleted.toString(),
                label: 'Quests Completed',
                color: Colors.blueAccent,
                icon: Icons.task_alt,
                subtitle: '+$totalXP Total XP',
              )),
            ],
          ),
        ],
      ),
    );
  }
}

class _StatBox extends StatelessWidget {
  final String value;
  final String label;
  final String? subtitle;
  final Color color;
  final IconData icon;
  const _StatBox({required this.value, required this.label, required this.color, required this.icon, this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: Colors.transparent,
        border: Border.all(color: color, width: 2),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: color, size: 20),
          const SizedBox(height: 3),
          Text(value, style: TextStyle(
            color: color, fontSize: 28, fontWeight: FontWeight.bold)),
          Text(label, style: TextStyle(color: Colors.white)),
          if (subtitle != null)
            Padding(
              padding: const EdgeInsets.only(top: 4),
              child: Text(
                subtitle!,
                style: const TextStyle(color: Colors.amberAccent, fontSize: 12),
              ),
            ),
        ],
      ),
    );
  }
}
