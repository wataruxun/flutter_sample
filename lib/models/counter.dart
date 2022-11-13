import 'package:riverpod/riverpod.dart';

final sampleProvider = Provider<int>((ref) => 1);

final counterProvider = StateNotifierProvider((ref) {
  return Counter();
  // return Counter();
});

class Counter extends StateNotifier {
  Counter() : super(0);

  void increment() => state++;
}
