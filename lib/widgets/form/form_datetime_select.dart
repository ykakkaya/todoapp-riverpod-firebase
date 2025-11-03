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
        //Başlama Tarih Seçici 
            Column(
              children: [
                ElevatedButton.icon(onPressed: (){
                  DatePicker.showDateTimePicker(context,
                  showTitleActions: true,
                   onConfirm: (date) {
                    ref.read(taskAddStartDateProvider.notifier).setDate(date);
                  },
                  minTime: DateTime(2020, 1, 1),
                  currentTime: DateTime.now(),
                  locale: LocaleType.tr);
                }, label: Text(ProjectText.startDateSelect,textAlign: TextAlign.center,), icon: Icon(Icons.date_range)),
                Gap(10),
                Text(DateFormat('dd/MM/yyyy hh:mm a').format(ref.watch(taskAddStartDateProvider)!),style: TextStyle(color: Colors.grey), ),
              ],
            ),
        //Bitiş Tarih Seçici 
           Column(
             children: [
               ElevatedButton.icon(onPressed: (){
                  DatePicker.showDateTimePicker(context,
                  showTitleActions: true, onConfirm: (date) {
                    ref.read(taskAddEndDateProvider.notifier).setTime(date);
                  }, currentTime: DateTime.now(),
                  locale: LocaleType.tr
                  );
               }, label: Text(ProjectText.endDateSelect,textAlign: TextAlign.center,), icon: Icon(Icons.alarm)),
                Gap(10),
                  Text(DateFormat('dd/MM/yyyy hh:mm a').format(ref.watch(taskAddEndDateProvider)!),style: TextStyle(color: Colors.grey), )
             ],
           ),
      ],
    );
  }
}

