import 'package:flutter/material.dart';

class RecommendedTab extends StatelessWidget {
  const RecommendedTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        const Text(
          '💡 Recommended Water Missions 🎯',
          style: TextStyle(
            color: Colors.yellowAccent,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        const SizedBox(height: 6),
        const Text(
          'Based on your conservation habits and impact ✨',
          style: TextStyle(color: Colors.yellowAccent, fontSize: 14),
        ),
        const SizedBox(height: 16),
        _buildMissionCard(
          title: 'Rainwater Harvesting Setup',
          level: 'Advanced',
          description: 'Set up a rainwater harvesting system at home.',
          duration: '4 weeks',
          learners: 1800,
          xp: 400,
          progress: 0.7,
          skills: ['Rainwater Collection', 'DIY Installation'],
          actionText: 'Continue Mission',
        ),
        _buildMissionCard(
          title: 'Water-Saving Challenge',
          level: 'Beginner',
          description: 'Reduce daily water usage by 10%.',
          duration: '1 week',
          learners: 5000,
          xp: 150,
          progress: 0.0,
          skills: ['Conservation', 'Habit Change'],
          actionText: 'Start Challenge',
        ),
      ],
    );
  }

  static Widget _buildMissionCard({
    required String title,
    required String level,
    required String description,
    required String duration,
    required int learners,
    required int xp,
    required double progress,
    required List<String> skills,
    required String actionText,
  }) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.only(bottom: 16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.water_drop, color: Colors.blueAccent),
                const SizedBox(width: 8),
                Text(title, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                const Spacer(),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                  decoration: BoxDecoration(
                    color: Colors.orangeAccent.withAlpha((0.3 * 255).toInt()),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(level, style: const TextStyle(color: Colors.orangeAccent, fontWeight: FontWeight.bold)),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Text(description, style: const TextStyle(color: Colors.black87)),
            const SizedBox(height: 8),
            Row(
              children: [
                Icon(Icons.schedule, size: 16, color: Colors.grey),
                const SizedBox(width: 4),
                Text(duration, style: const TextStyle(color: Colors.grey)),
                const SizedBox(width: 16),
                Icon(Icons.people, size: 16, color: Colors.grey),
                const SizedBox(width: 4),
                Text('$learners joined', style: const TextStyle(color: Colors.grey)),
                const SizedBox(width: 16),
                Icon(Icons.star, size: 16, color: Colors.amber),
                const SizedBox(width: 4),
                Text('+$xp XP', style: const TextStyle(color: Colors.amber)),
              ],
            ),
            const SizedBox(height: 8),
            LinearProgressIndicator(
              value: progress,
              backgroundColor: Colors.grey[300],
              color: Colors.blueAccent,
              minHeight: 6,
            ),
            const SizedBox(height: 8),
            Wrap(
              spacing: 8,
              children: skills.map((s) => Chip(label: Text(s))).toList(),
            ),
            const SizedBox(height: 8),
            Align(
              alignment: Alignment.centerRight,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                ),
                child: Text(actionText),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
