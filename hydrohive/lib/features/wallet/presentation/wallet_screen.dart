import 'package:flutter/material.dart';
import '../widgets/wallet_card.dart';
import '../widgets/xp_bar.dart';
import '../widgets/transactions_list.dart';
import '../widgets/credentials_list.dart';
import '../widgets/earning_tips_card.dart';
import '../widgets/rewards_shop.dart';
import '../widgets/bottom_nav_bar.dart';
import '../../../common/theme.dart';

class WalletScreen extends StatelessWidget {
  const WalletScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        elevation: 0,
        title: const Text('HydroHive'),
        actions: [Icon(Icons.person)],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const XPBar(xp: 2450, level: 12, winStreak: 7, xpProgress: 450, xpToNextLevel: 550),
            const SizedBox(height: 20),
            WalletCard(balance: 4850, lifetimeEarned: 12750),
            const SizedBox(height: 20),
            TransactionsList(transactions: [
  TransactionItem('Water Challenge', 'Earned', 200, 'Sep 27, 2025'),
  TransactionItem('Skill Quest', 'Earned', 150, 'Sep 26, 2025'),
  TransactionItem('Amazon Voucher', 'Spent', 500, 'Sep 25, 2025'),
  TransactionItem('Flipkart Voucher', 'Spent', 300, 'Sep 24, 2025'),
  TransactionItem('Daily Login', 'Earned', 50, 'Sep 24, 2025'),
]),

            const SizedBox(height: 20),
            CredentialsList(certificates: [
              CertificateItem('Water Conservation Pro', 'HydroHive', 'Sep 20, 2025'),
              CertificateItem('Solar Panel Basics', 'HydroHive', 'Sep 15, 2025'),
              CertificateItem('Mobile Repair', 'HydroHive', 'Sep 10, 2025'),
            ]),
            const SizedBox(height: 20),
            EarningTipsCard(tips: [
              Tip('Complete Water Challenges', 'Report water problems...', Icons.water_drop),
              Tip('Finish Skill Quests', 'Complete learning pathways...', Icons.track_changes),
              Tip('Daily Login Streak', 'Maintain streak for bonus...', Icons.local_fire_department),
            ]),
            const SizedBox(height: 20),
            RewardsShop(rewards: [ /* ...reward data... */ ]),
          ],
        ),
      ),
    );
  }
}
