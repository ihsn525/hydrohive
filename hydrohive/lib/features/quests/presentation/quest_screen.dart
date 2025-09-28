import 'package:flutter/material.dart';

import '../widgets/quest_lines.dart';
import '../widgets/hot_challenges.dart';
import '../widgets/recommended.dart';
import '../widgets/bottom_nav_bar.dart';

class QuestScreen extends StatefulWidget {
  const QuestScreen({super.key});

  @override
  State<QuestScreen> createState() => _QuestScreenState();
}

class _QuestScreenState extends State<QuestScreen> {
  int selectedTabIndex = 0;

  late final List<Widget> tabs;

  @override
  void initState() {
    super.initState();
    tabs = const [QuestLinesTab(), HotChallengesTab(), RecommendedTab()];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: SafeArea(
        child: Column(
          children: [
            // You can implement a progress bar or header here
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildTabButton('Quest Lines', 0),
                  _buildTabButton('Hot Challenges', 1),
                  _buildTabButton('Recommended', 2),
                ],
              ),
            ),
            Expanded(child: tabs[selectedTabIndex]),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(selectedIndex: 1),
    );
  }

  Widget _buildTabButton(String title, int index) {
    final isSelected = selectedTabIndex == index;
    return InkWell(
      onTap: () => setState(() => selectedTabIndex = index),
      borderRadius: BorderRadius.circular(24),
      child: Container(
        decoration: BoxDecoration(
          color: isSelected ? Colors.orange : Colors.transparent,
          borderRadius: BorderRadius.circular(24),
        ),
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
        child: Text(
          title,
          style: TextStyle(
            color: isSelected ? Colors.white : Colors.blue,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
