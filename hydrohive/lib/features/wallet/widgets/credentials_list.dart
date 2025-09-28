import 'package:flutter/material.dart';
import '../../../common/theme.dart';

class CertificateItem {
  final String title;
  final String issuer;
  final String date;
  CertificateItem(this.title, this.issuer, this.date);
}

class CredentialsList extends StatelessWidget {
  final List<CertificateItem> certificates;
  const CredentialsList({super.key, required this.certificates});

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
            Text('Digital Credentials', style: Theme.of(context).textTheme.headline6),
            const SizedBox(height: 12),
            ...certificates.map((cert) => ListTile(
              leading: Icon(Icons.verified, color: Colors.blueAccent),
              title: Text(cert.title, style: TextStyle(color: Colors.white)),
              subtitle: Text('Issued by ${cert.issuer} on ${cert.date}', style: TextStyle(color: Colors.white70)),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: Icon(Icons.remove_red_eye, color: Colors.amberAccent),
                    onPressed: () {}, // View action
                  ),
                  IconButton(
                    icon: Icon(Icons.share, color: Colors.orange),
                    onPressed: () {}, // Share action
                  ),
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}
