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
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      margin: const EdgeInsets.symmetric(vertical: 12),
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Row(
          children: [
            Icon(
              isLive ? Icons.live_tv : Icons.event,
              color: isLive ? Colors.red : Colors.blue,
              size: 32,
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 16)),
                  const SizedBox(height: 4),
                  Text(time, style: const TextStyle(color: Colors.amberAccent, fontSize: 12)),
                  const SizedBox(height: 4),
                  Text('Players: $players', style: const TextStyle(color: Colors.white70, fontSize: 12)),
                ],
              ),
            ),
            const SizedBox(width: 16),
            Column(
              children: [
                Text('+$xp XP', style: const TextStyle(color: Colors.orange, fontWeight: FontWeight.bold)),
                const SizedBox(height: 8),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: AppColors.accent, shape: const StadiumBorder()),
                  onPressed: () {},
                  child: const Text('Join', style: TextStyle(color: Colors.white)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
