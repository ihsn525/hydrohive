import 'package:flutter/material.dart';
import 'event_card.dart';

class RecommendedTab extends StatelessWidget {
  const RecommendedTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: const [
        Text(
          '💡 Recommended Quests 🎯',
          style: TextStyle(
            color: Colors.yellowAccent,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        SizedBox(height: 6),
        Text(
          'Based on your playstyle and skill level ✨',
          style: TextStyle(color: Colors.yellowAccent, fontSize: 14),
        ),
        SizedBox(height: 16),
        EventCard(
          title: 'Solar Panel Installation Mastery',
          level: 'Intermediate',
          description:
              'Learn to install, maintain, and troubleshoot solar energy systems',
          duration: '6 weeks',
          learners: 15420,
          xp: 850,
          progress: 0.35,
          skills: ['Solar Installation', 'Electrical Safety', 'System Design'],
          actionText: 'Continue Learning',
        ),
        EventCard(
          title: 'Welding Fundamentals',
          level: 'Beginner',
          description: 'Master basic welding techniques for metal fabrication',
          duration: '4 weeks',
          learners: 8900,
          xp: 600,
          progress: 0,
          skills: ['Arc Welding', 'Safety Protocols', 'Metal Preparation'],
          actionText: 'Start Learning',
        ),
      ],
    );
  }
}
