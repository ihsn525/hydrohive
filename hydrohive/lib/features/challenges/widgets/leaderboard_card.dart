import 'package:flutter/material.dart';

class LeaderboardCard extends StatelessWidget {
  final int rank;
  final String name;
  final int problemsSolved;
  final int xpEarned;
  final String title;
  final int successRate;
  final bool isCurrentUser;

  const LeaderboardCard({
    super.key,
    required this.rank,
    required this.name,
    required this.problemsSolved,
    required this.xpEarned,
    required this.title,
    required this.successRate,
    this.isCurrentUser = false,
  });

  @override
  Widget build(BuildContext context) {
    final rankColor = rank == 1
        ? Colors.orangeAccent
        : rank == 2
        ? Colors.grey
        : Colors.bronze;

    final bgColor = isCurrentUser ? Colors.blueGrey[700] : Colors.blueGrey[900];

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 6),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: rankColor),
      ),
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          CircleAvatar(
            radius: 26,
            backgroundColor: rankColor,
            child: Text(
              '#$rank',
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(width: 12),
          Expanded(child: _buildInfo()),
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: rankColor,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(Icons.emoji_events, color: Colors.white),
          ),
        ],
      ),
    );
  }

  Widget _buildInfo() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          name,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.orangeAccent,
            fontSize: 16,
          ),
        ),
        Text(
          '$problemsSolved problems solved • $xpEarned XP earned',
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.orangeAccent,
          ),
        ),
        Text(
          '$title • $successRate% success rate',
          style: const TextStyle(color: Colors.white70, fontSize: 12),
        ),
      ],
    );
  }
}
