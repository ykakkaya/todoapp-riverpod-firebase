import 'package:flutter_riverpod/flutter_riverpod.dart';

class RadioButtonNotifier extends Notifier<String> {
  @override
   build() {
    return 'Normal';
  }

  void setRadioValue(String value) {
    state = value;
  }
}

final radioButtonProvider =
    NotifierProvider<RadioButtonNotifier, String>(RadioButtonNotifier.new);