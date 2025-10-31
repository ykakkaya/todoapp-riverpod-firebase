import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker_plus/flutter_datetime_picker_plus.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';
import 'package:todoapp/providers/taskProviders/task_add_date_provider.dart';
import 'package:todoapp/utils/project_text.dart';

class FormDateTimeSelect extends ConsumerWidget {
  const FormDateTimeSelect({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        //Tarih Seçici Butonu
            Column(
              children: [
                ElevatedButton.icon(onPressed: (){
                  DatePicker.showDatePicker(context,
                  showTitleActions: true,
                   onConfirm: (date) {
                    ref.read(taskAddDateProvider.notifier).setDate(date);
                  },
                  minTime: DateTime(2020, 1, 1),
                  currentTime: DateTime.now(),
                  locale: LocaleType.tr);
                }, label: Text(ProjectText.dateSelect,), icon: Icon(Icons.date_range)),
                Gap(10),
                Text(ref.watch(taskAddDateProvider) == null ? ProjectText.noDateSelected : DateFormat('dd/MM/yyyy').format(ref.watch(taskAddDateProvider)!),style: TextStyle(color: Colors.grey), )
              ],
            ),
        //Saat Seçici Butonu
           Column(
             children: [
               ElevatedButton.icon(onPressed: (){
                  DatePicker.showTimePicker(context,
                  showTitleActions: true, onConfirm: (date) {
                    ref.read(taskAddTimeProvider.notifier).setTime(date);
                  }, currentTime: DateTime.now(),
                  locale: LocaleType.tr
                  );
               }, label: Text(ProjectText.timeSelect), icon: Icon(Icons.alarm)),
                Gap(10),
                  Text(ref.watch(taskAddTimeProvider) == null ? ProjectText.noDateSelected : DateFormat('hh:mm').format(ref.watch(taskAddTimeProvider)!),style: TextStyle(color: Colors.grey), )
             ],
           ),
      ],
    );
  }
}

