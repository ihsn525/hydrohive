import 'package:flutter/material.dart';
import '../../../common/theme.dart';

class Trophy {
  final String name;
  final int xp;
  final IconData icon;
  final bool unlocked;
  Trophy(this.name, this.xp, this.icon, this.unlocked);
}

class TrophyCollection extends StatelessWidget {
  final List<Trophy> trophies;
  const TrophyCollection({super.key, required this.trophies});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.card,
      margin: const EdgeInsets.symmetric(vertical: 16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(children: [
              Icon(Icons.emoji_events, color: Colors.yellow.shade700),
              const SizedBox(width: 8),
              const Text('Trophy Collection', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
              const SizedBox(width: 8),
              Icon(Icons.star, size: 17, color: Colors.yellow.shade600),
            ]),
            const SizedBox(height: 6),
            const Text('Your legendary water-saving achievements!', style: TextStyle(color: Colors.yellowAccent, fontSize: 13)),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: trophies.map((t) => Expanded(
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 7),
                  decoration: BoxDecoration(
                    color: t.unlocked ? Colors.blueAccent.shade100 : Colors.grey.shade600,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    children: [
                      Icon(t.icon, color: t.unlocked ? Colors.lightBlueAccent : Colors.grey, size: 36),
                      const SizedBox(height: 6),
                      Text(t.name, style: TextStyle(color: t.unlocked ? Colors.white : Colors.black54)),
                      const SizedBox(height: 3),
                      Text('${t.xp} XP', style: const TextStyle(fontSize: 13, color: Colors.white, fontWeight: FontWeight.bold)),
                      if (t.unlocked)
                        const Icon(Icons.check_circle, color: Colors.green, size: 18),
                    ],
                  ),
                ),
              )).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
