import 'package:flutter_riverpod/flutter_riverpod.dart';

class RadioButtonNotifier extends Notifier<String> {
  @override
   build() {
    return 'Normal';
  }
}

final radioButtonProvider =
    NotifierProvider<RadioButtonNotifier, String>(RadioButtonNotifier.new);