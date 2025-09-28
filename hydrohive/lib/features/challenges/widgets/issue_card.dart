// ignore_for_file: deprecated_member_use, unnecessary_string_interpolations

import 'package:flutter/material.dart';

class IssueCard extends StatelessWidget {
  final String title;
  final String distance;
  final String reportedTime;
  final String priority;
  final int rewardXP;
  final String actionText;
  final Color actionColor;
  final IconData actionIcon;

  const IssueCard({
    super.key,
    required this.title,
    required this.distance,
    required this.reportedTime,
    required this.priority,
    required this.rewardXP,
    required this.actionText,
    required this.actionColor,
    required this.actionIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: actionColor),
        gradient: LinearGradient(
          colors: [actionColor.withOpacity(0.3), actionColor.withOpacity(0.1)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      child: Row(
        children: [
          _buildIcon(actionColor),
          const SizedBox(width: 12),
          Expanded(child: _buildInfoSection()),
          ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
              backgroundColor: actionColor,
              foregroundColor: Colors.white,
              minimumSize: const Size(120, 40),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            ),
            icon: Icon(actionIcon, size: 18),
            label: Text(actionText),
            onPressed: () {},
          ),
        ],
      ),
    );
  }

  Widget _buildIcon(Color color) {
    IconData iconData;
    switch (priority.toLowerCase()) {
      case "critical":
        iconData = Icons.water_drop;
        break;
      case "high":
        iconData = Icons.opacity;
        break;
      case "medium":
        iconData = Icons.water_damage;
        break;
      default:
        iconData = Icons.water;
    }
    return CircleAvatar(
      radius: 26,
      backgroundColor: color,
      child: Icon(iconData, color: Colors.white, size: 30),
    );
  }

  Widget _buildInfoSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
            color: Colors.orangeAccent,
          ),
        ),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: '$distance • ',
                style: const TextStyle(color: Colors.deepOrangeAccent),
              ),
              TextSpan(
                text: '$reportedTime',
                style: const TextStyle(color: Colors.deepOrangeAccent),
              ),
            ],
          ),
        ),
        Text(
          'Priority: $priority • Reward: +$rewardXP XP',
          style: const TextStyle(color: Colors.white70, fontSize: 12),
        ),
      ],
    );
  }
}
