import 'package:flutter/material.dart';
import '../../../common/theme.dart';

class SettingsPanel extends StatelessWidget {
  const SettingsPanel({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.card,
      margin: const EdgeInsets.symmetric(vertical: 14),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(children: [
              Icon(Icons.settings, color: Colors.orange),
              const SizedBox(width: 8),
              Text('Game Settings', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
              const SizedBox(width: 4),
              Icon(Icons.psychology, size: 18, color: Colors.purpleAccent),
            ]),
            const SizedBox(height: 12),
            _SettingsButton(icon: Icons.notifications, label: 'Notification Settings', color: Colors.orangeAccent),
            _SettingsButton(icon: Icons.language, label: 'Language & Region', color: Colors.blueAccent),
            _SettingsButton(icon: Icons.lock, label: 'Privacy & Security', color: Colors.redAccent),
            _SettingsButton(icon: Icons.save_alt, label: 'Export Game Data', color: Colors.amberAccent),
          ],
        ),
      ),
    );
  }
}

class _SettingsButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color color;
  const _SettingsButton({required this.icon, required this.label, required this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: ListTile(
        leading: Icon(icon, color: color),
        title: Text(label, style: TextStyle(color: color, fontWeight: FontWeight.bold)),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(13)),
        tileColor: Colors.transparent,
        onTap: () {},
      ),
    );
  }
}
