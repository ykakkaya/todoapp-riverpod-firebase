import 'package:flutter_riverpod/flutter_riverpod.dart';

class TaskAddStartDateNotifier extends Notifier<DateTime> {
  @override
   build() {
    return DateTime.now();
  }

  void setDate(DateTime date) {
    state = date;
  }
}

final taskAddStartDateProvider =
    NotifierProvider<TaskAddStartDateNotifier, DateTime>(TaskAddStartDateNotifier.new);


class TaskAddEndTimeNotifier extends Notifier<DateTime> {
  @override
   build() {
    return DateTime.now();
  }
  void setTime(DateTime time) {
    state = time;
  }
}

final taskAddEndTimeProvider =
    NotifierProvider<TaskAddEndTimeNotifier, DateTime>(TaskAddEndTimeNotifier.new);
