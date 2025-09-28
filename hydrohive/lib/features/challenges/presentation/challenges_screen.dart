import 'package:flutter/material.dart';
import '../widgets/issue_card.dart';
import '../widgets/leaderboard_card.dart';
import '../widgets/report_action_card.dart';
import '../widgets/bottom_nav_bar.dart';
import '../../../common/theme.dart';

class ChallengesScreen extends StatelessWidget {
  const ChallengesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.bgColor,
      bottomNavigationBar: const BottomNavBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildHeaderSection(),
              const SizedBox(height: 20),
              _buildWaterChallengeHubCard(),
              const SizedBox(height: 12),
              _buildUrgentIssuesCard(),
              const SizedBox(height: 12),
              IssueCard(
                title: 'Contaminated Well - District 7',
                distance: '2.3km away',
                reportedTime: 'Reported 2 hours ago',
                priority: 'Critical',
                rewardXP: 750,
                actionText: 'Take Action',
                actionColor: Colors.orangeAccent,
                actionIcon: Icons.flash_on,
              ),
              const SizedBox(height: 12),
              IssueCard(
                title: 'Low Water Pressure - Main Street',
                distance: '850m away',
                reportedTime: 'Reported 5 hours ago',
                priority: 'High',
                rewardXP: 400,
                actionText: 'Investigate',
                actionColor: Colors.orange,
                actionIcon: Icons.search,
              ),
              const SizedBox(height: 12),
              IssueCard(
                title: 'Leaking Pipeline - School Zone',
                distance: '1.2km away',
                reportedTime: 'Reported yesterday',
                priority: 'Medium',
                rewardXP: 300,
                actionText: 'Report Fix',
                actionColor: Colors.orangeAccent,
                actionIcon: Icons.build,
              ),
              const SizedBox(height: 20),
              _buildCommunityChampionsHeader(),
              const SizedBox(height: 12),
              LeaderboardCard(
                rank: 1,
                name: 'Maria Santos',
                problemsSolved: 15,
                xpEarned: 3750,
                title: 'Water Guardian',
                successRate: 98,
                isCurrentUser: false,
              ),
              LeaderboardCard(
                rank: 2,
                name: 'Alex Rivera',
                problemsSolved: 12,
                xpEarned: 2850,
                title: 'Hydro Hero',
                successRate: 76,
                isCurrentUser: true,
              ),
              LeaderboardCard(
                rank: 3,
                name: 'David Kim',
                problemsSolved: 9,
                xpEarned: 2100,
                title: 'Water Warrior',
                successRate: 92,
                isCurrentUser: false,
              ),
              const SizedBox(height: 20),
              const ReportActionCard(),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeaderSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'HydroHive',
          style: AppTheme.titleStyle.copyWith(
            fontSize: 26,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          'Game • Level Up • Win 🎮',
          style: AppTheme.descStyle.copyWith(fontSize: 14, color: Colors.grey),
        ),
        const SizedBox(height: 14),
        LinearProgressIndicator(
          value: 0.45,
          backgroundColor: Colors.grey[800],
          color: Colors.orangeAccent,
          minHeight: 12,
        ),
        const SizedBox(height: 6),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              '450 XP',
              style: TextStyle(color: Colors.orangeAccent, fontSize: 14),
            ),
            const Text(
              '550 to Level 13 ⚡',
              style: TextStyle(color: Colors.orangeAccent, fontSize: 14),
            ),
            Row(
              children: const [
                Icon(Icons.waves_rounded, color: Colors.orangeAccent),
                SizedBox(width: 10),
                Text('2450 XP', style: TextStyle(color: Colors.orangeAccent)),
                SizedBox(width: 16),
                Icon(Icons.emoji_events, color: Colors.orangeAccent),
                SizedBox(width: 6),
                Text(
                  '7 Win Streak',
                  style: TextStyle(color: Colors.orangeAccent),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildWaterChallengeHubCard() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blueGrey[600],
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.orangeAccent),
      ),
      padding: const EdgeInsets.all(16),
      child: Row(
        children: const [
          Icon(Icons.water_drop, size: 40, color: Colors.orangeAccent),
          SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Water Challenge Hub 💧',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.orangeAccent,
                  ),
                ),
                SizedBox(height: 6),
                Text(
                  'Report water problems in your community and earn rewards! 🚀',
                  style: TextStyle(color: Colors.white70),
                ),
                SizedBox(height: 6),
                Text(
                  'Active reports: 42 • Community XP: +1,250',
                  style: TextStyle(color: Colors.orangeAccent),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildUrgentIssuesCard() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.red[900],
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.redAccent),
      ),
      padding: const EdgeInsets.all(16),
      child: Row(
        children: const [
          Icon(Icons.warning_amber_outlined, size: 40, color: Colors.redAccent),
          SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Urgent Water Issues 🚨',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.redAccent,
                  ),
                ),
                SizedBox(height: 6),
                Text(
                  'High priority problems that need immediate attention!',
                  style: TextStyle(color: Colors.redAccent),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCommunityChampionsHeader() {
    return Row(
      children: const [
        Icon(Icons.emoji_events, color: Colors.orangeAccent),
        SizedBox(width: 8),
        Text(
          'Community Champions 👑',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.orangeAccent,
          ),
        ),
      ],
    );
  }
}
