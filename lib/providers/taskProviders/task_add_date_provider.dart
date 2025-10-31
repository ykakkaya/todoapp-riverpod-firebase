import 'package:flutter_riverpod/flutter_riverpod.dart';

class TaskAddDateNotifier extends Notifier<DateTime> {
  @override
   build() {
    return DateTime.now();
  }

  void setDate(DateTime date) {
    state = date;
  }
}

final taskAddDateProvider =
    NotifierProvider<TaskAddDateNotifier, DateTime>(TaskAddDateNotifier.new);


class TaskAddTimeNotifier extends Notifier<DateTime> {
  @override
   build() {
    return DateTime.now();
  }
  void setTime(DateTime time) {
    state = time;
  }
}

final taskAddTimeProvider =
    NotifierProvider<TaskAddTimeNotifier, DateTime>(TaskAddTimeNotifier.new);
