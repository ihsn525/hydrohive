import 'challenge.dart';

class ChallengeRepository {
  Future<List<Challenge>> fetchChallenges() async {
    // Simulate API call
    await Future.delayed(Duration(seconds: 1));
    return [
      Challenge(id: '1', title: 'Report Water Leak', description: 'Find and report a leak.'),
      Challenge(id: '2', title: 'Short Shower', description: 'Take a 5-minute shower.')
    ];
  }
  Future<void> completeChallenge(String id) async {
    // Simulate marking challenge as complete
    await Future.delayed(Duration(milliseconds: 500));
  }
}
