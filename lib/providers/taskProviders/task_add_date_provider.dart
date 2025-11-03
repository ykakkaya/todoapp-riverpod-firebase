import 'package:flutter_riverpod/flutter_riverpod.dart';
//Task Ekleme Tarih Providerları
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


class TaskAddEndDateNotifier extends Notifier<DateTime> {
  @override
   build() {
    return DateTime.now();
  }
  void setTime(DateTime time) {
    state = time;
  }
}

final taskAddEndDateProvider =
    NotifierProvider<TaskAddEndDateNotifier, DateTime>(TaskAddEndDateNotifier.new);

//Task Filtreleme Tarih Providerları

class TaskFilterStartDateNotifier extends Notifier<DateTime> {
  @override
   build() {
    return  DateTime.now().subtract(
    const Duration(days: 7));
  }
  void setTime(DateTime time) {
    state = time;
  }
}

final taskFilterStartDateProvider =
    NotifierProvider<TaskFilterStartDateNotifier, DateTime>(TaskFilterStartDateNotifier.new);


class TaskFilterEndDateNotifier extends Notifier<DateTime> {
  @override
   build() {
    return DateTime.now();
  }
  void setTime(DateTime time) {
    state = time;
  }
}

final taskFilterEndDateProvider =
    NotifierProvider<TaskFilterEndDateNotifier, DateTime>(TaskFilterEndDateNotifier.new);


