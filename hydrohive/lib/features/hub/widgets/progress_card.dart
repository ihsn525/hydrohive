import 'package:flutter/material.dart';
import '../../../common/theme.dart';

class ProgressCard extends StatelessWidget {
  final String title;
  final double progress; // 0.0 to 1.0
  final VoidCallback onPressed;
  const ProgressCard({
    super.key,
    required this.title,
    required this.progress,
    required this.onPressed,
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
            CircleAvatar(
              backgroundColor: AppColors.accent,
              radius: 25,
              child: Icon(Icons.flag, color: Colors.white, size: 28),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 16),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'Progress: ${(progress * 100).round()}% completed',
                    style: const TextStyle(
                        color: Colors.amberAccent, fontSize: 12),
                  ),
                  const SizedBox(height: 8),
                  LinearProgressIndicator(
                    value: progress,
                    color: AppColors.accent,
                    backgroundColor: Colors.grey.shade800,
                    minHeight: 7,
                  ),
                ],
              ),
            ),
            const SizedBox(width: 16),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.accent,
                  shape: const StadiumBorder()),
              onPressed: onPressed,
              child: const Text('Continue ▶', style: TextStyle(color: Colors.white)),
            )
          ],
        ),
      ),
    );
  }
}
