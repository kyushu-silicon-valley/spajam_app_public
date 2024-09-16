import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'debug_page_controller.g.dart';

@riverpod
class CounterNotifier extends _$CounterNotifier {
  @override
  int build() {
    return 0;
  }

  void increment() {
    state++;
  }
}
