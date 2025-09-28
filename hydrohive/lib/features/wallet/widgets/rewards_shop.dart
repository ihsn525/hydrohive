import 'package:flutter/material.dart';
import '../../../common/theme.dart';

class RewardItem {
  final String name;
  final int cost;
  final IconData icon;
  RewardItem(this.name, this.cost, this.icon);
}

class RewardsShop extends StatelessWidget {
  final List<RewardItem> rewards;
  const RewardsShop({super.key, required this.rewards});

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
            Text('Rewards Shop', style: Theme.of(context).textTheme.headline6),
            const SizedBox(height: 12),
            ...rewards.map((reward) => ListTile(
              leading: Icon(reward.icon, color: Colors.orange, size: 40),
              title: Text(reward.name, style: TextStyle(color: Colors.white)),
              trailing: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: AppColors.accent),
                onPressed: () {}, // Redeem action
                child: Text('${reward.cost} HC', style: TextStyle(color: Colors.white)),
              ),
            )),
          ],
        ),
      ),
    );
  }
}
