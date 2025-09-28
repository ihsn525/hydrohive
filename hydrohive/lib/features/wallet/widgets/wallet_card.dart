import 'package:flutter/material.dart';
import '../../../common/theme.dart';

class WalletCard extends StatelessWidget {
  final int balance;
  final int lifetimeEarned;
  const WalletCard({
    super.key,
    required this.balance,
    required this.lifetimeEarned,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.accent,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.account_balance_wallet, size: 32, color: Colors.white),
                const SizedBox(width: 10),
                Text('HydroCoins Wallet', style: Theme.of(context).textTheme.headline6?.copyWith(color: Colors.white, fontWeight: FontWeight.bold)),
              ],
            ),
            const SizedBox(height: 10),
            Text('Earned through water challenges & quests!', style: TextStyle(color: Colors.white70)),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text('$balance', style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.white)),
                    Text('Current Balance', style: TextStyle(color: Colors.white)),
                  ]
                ),
                Column(
                  children: [
                    Text('$lifetimeEarned', style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.white)),
                    Text('Lifetime Earned', style: TextStyle(color: Colors.white)),
                  ]
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
