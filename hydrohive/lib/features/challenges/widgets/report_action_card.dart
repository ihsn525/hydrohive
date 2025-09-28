import 'package:flutter/material.dart';

class ReportActionCard extends StatelessWidget {
  const ReportActionCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.greenAccent),
        borderRadius: BorderRadius.circular(16),
        color: Colors.indigo[900],
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: const [
              Icon(Icons.water_damage, color: Colors.greenAccent, size: 32),
              SizedBox(width: 10),
              Text(
                'Report Water Issue +',
                style: TextStyle(
                  color: Colors.greenAccent,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          const Text(
            'Spotted a water problem? Help your community!',
            style: TextStyle(color: Colors.greenAccent, fontSize: 14),
          ),
          const SizedBox(height: 12),
          const SizedBox(height: 8),
          const Text(
            'Use camera to document • GPS auto-location • Instant community alerts',
            style: TextStyle(color: Colors.grey, fontSize: 12),
          ),
        ],
      ),
    );
  }
}
