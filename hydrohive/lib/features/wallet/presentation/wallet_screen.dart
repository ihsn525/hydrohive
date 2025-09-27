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
            TransactionsList(transactions: [ /* ...transaction data... */ ]),
            const SizedBox(height: 20),
            CredentialsList(certificates: [ /* ...certificate data... */ ]),
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
      bottomNavigationBar: const BottomNavBar(selectedTab: 2),
      floatingActionButton: FloatingActionButton(onPressed: () {}),
    );
  }
}
