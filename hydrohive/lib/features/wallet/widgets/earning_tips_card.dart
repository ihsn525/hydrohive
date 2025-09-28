import 'package:flutter/material.dart';
import '../../../common/theme.dart';

class Tip {
  final String title;
  final String description;
  final IconData icon;
  Tip(this.title, this.description, this.icon);
}

class EarningTipsCard extends StatelessWidget {
  final List<Tip> tips;
  const EarningTipsCard({super.key, required this.tips});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.card,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Earn More HydroCoins', style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 12),
            ...tips.map((tip) => ListTile(
              leading: Icon(tip.icon, color: Colors.orange),
              title: Text(tip.title, style: TextStyle(color: Colors.white)),
              subtitle: Text(tip.description, style: TextStyle(color: Colors.white70)),
            )),
          ],
        ),
      ),
    );
  }
}
