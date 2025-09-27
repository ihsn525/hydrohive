import 'package:flutter/material.dart';
import '../data/challenge.dart';
import '../data/challenge_repository.dart';

class ChallengesViewModel extends ChangeNotifier {
  final ChallengeRepository _repository = ChallengeRepository();
  List<Challenge> _challenges = [];
  bool _isLoading = false;

  List<Challenge> get challenges => _challenges;
  bool get isLoading => _isLoading;

  Future<void> loadChallenges() async {
    _isLoading = true;
    notifyListeners();
    _challenges = await _repository.fetchChallenges();
    _isLoading = false;
    notifyListeners();
  }

  Future<void> completeChallenge(String id) async {
    await _repository.completeChallenge(id);
    _challenges = _challenges.map((c) => c.id == id ? Challenge(id: c.id, title: c.title, description: c.description, completed: true) : c).toList();
    notifyListeners();
  }
}
