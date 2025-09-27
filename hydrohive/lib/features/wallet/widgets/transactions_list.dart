import 'package:flutter/material.dart';
import '../../../common/theme.dart';

class TransactionItem {
  final String name;
  final String type; // 'Earned' or 'Spent'
  final int amount;
  final String date;
  TransactionItem(this.name, this.type, this.amount, this.date);
}

class TransactionsList extends StatelessWidget {
  final List<TransactionItem> transactions;
  const TransactionsList({super.key, required this.transactions});

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
            Text('Recent Transactions', style: Theme.of(context).textTheme.headline6),
            const SizedBox(height: 12),
            ...transactions.map((tx) => ListTile(
              leading: Icon(
                tx.type == 'Earned' ? Icons.arrow_downward : Icons.arrow_upward,
                color: tx.type == 'Earned' ? Colors.green : Colors.red,
              ),
              title: Text(tx.name, style: TextStyle(color: Colors.white)),
              subtitle: Text(tx.date, style: TextStyle(color: Colors.white70)),
              trailing: Text(
                (tx.type == 'Earned' ? '+' : '-') + tx.amount.toString(),
                style: TextStyle(
                  color: tx.type == 'Earned' ? Colors.green : Colors.red,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )),
          ],
        ),
      ),
    );
  }
}
