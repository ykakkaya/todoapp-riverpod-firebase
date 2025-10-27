import 'package:flutter_riverpod/flutter_riverpod.dart';

class TaskAddDateNotifier extends Notifier<DateTime> {
  @override
   build() {
    return DateTime.now();
  }
}

final taskAddDateProvider =
    NotifierProvider<TaskAddDateNotifier, DateTime>(TaskAddDateNotifier.new);

