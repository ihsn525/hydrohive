import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../viewmodel/challenges_viewmodel.dart';

class ChallengesScreen extends StatelessWidget {
  const ChallengesScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ChallengesViewModel()..loadChallenges(),
      child: Consumer<ChallengesViewModel>(
        builder: (context, viewModel, child) {
          if (viewModel.isLoading) {
            return Center(child: CircularProgressIndicator());
          }
          return ListView.builder(
            itemCount: viewModel.challenges.length,
            itemBuilder: (context, index) {
              final challenge = viewModel.challenges[index];
              return ListTile(
                title: Text(challenge.title),
                subtitle: Text(challenge.description),
                trailing: challenge.completed
                  ? Icon(Icons.check_circle, color: Colors.green)
                  : ElevatedButton(
                      child: Text('Complete'),
                      onPressed: () {
                        viewModel.completeChallenge(challenge.id);
                      },
                    ),
              );
            },
          );
        },
      ),
    );
  }
}
