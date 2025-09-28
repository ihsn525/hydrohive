import 'package:flutter/material.dart';
import '../../../common/theme.dart';

class EventCard extends StatelessWidget {
  final String title;
  final String time;
  final int players;
  final bool isLive;
  final int xp;
  const EventCard({
    super.key,
    required this.title,
    required this.time,
    required this.players,
    required this.isLive,
    required this.xp,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.card,
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Row(
          children: [
            Icon(
              isLive ? Icons.flash_on : Icons.leaderboard,
              color: isLive ? Colors.redAccent : Colors.blueAccent,
              size: 32,
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
                  const SizedBox(height: 4),
                  Text(time, style: const TextStyle(color: Colors.white70, fontSize: 13)),
                  const SizedBox(height: 4),
                  Text('Participants: $players', style: const TextStyle(color: Colors.white54, fontSize: 12)),
                ],
              ),
            ),
            Column(
              children: [
                Icon(Icons.water_drop, color: Colors.lightBlueAccent, size: 20),
                Text('+$xp', style: const TextStyle(color: Colors.orangeAccent, fontWeight: FontWeight.bold)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
