import 'package:flutter/material.dart';
import 'event_card.dart';

class QuestLinesTab extends StatelessWidget {
  const QuestLinesTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: const [
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
          progress: 0.00,
          skills: ['Arc Welding', 'Safety Protocols', 'Metal Preparation'],
          actionText: 'Start Learning',
        ),
        EventCard(
          title: 'Mobile Device Repair Specialist',
          level: 'Advanced',
          description:
              'Become an expert in smartphone and tablet repair techniques',
          duration: '8 weeks',
          learners: 12300,
          xp: 1200,
          progress: 0.75,
          skills: [
            'Hardware Diagnosis',
            'Screen Replacement',
            'Micro Soldering',
          ],
          actionText: 'Continue Learning',
        ),
        EventCard(
          title: 'Digital Marketing Basics',
          level: 'Beginner',
          description:
              'Learn essential digital marketing skills for the modern economy',
          duration: '3 weeks',
          learners: 25600,
          xp: 400,
          progress: 0.00,
          skills: ['Social Media', 'Content Creation', 'Analytics'],
          actionText: 'Locked',
          isLocked: true,
        ),
      ],
    );
  }
}
