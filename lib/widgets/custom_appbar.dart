import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:todoapp/providers/taskProviders/task_add_date_provider.dart';
import 'package:todoapp/utils/project_text.dart';

class CustomAppbar extends ConsumerStatefulWidget implements PreferredSizeWidget {
  final String title;
  const CustomAppbar({super.key, required this.title});

 @override
  ConsumerState<CustomAppbar> createState() => _CustomAppbarState();

  
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

class _CustomAppbarState extends ConsumerState<CustomAppbar> {
  
 
  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: false,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CircleAvatar(child: FlutterLogo(),),
          Gap(10),
          Column(
            children: [
              Text(ProjectText.greating,style: TextStyle(fontSize: 12,color: Colors.grey.shade600),),
              Text(widget.title,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black),),
            ],
          )
        ],
      ),
     actions: [
        CircleAvatar(
          backgroundColor: Colors.grey.shade100,
          child: IconButton(
            onPressed: ()async {
              final selectedDateRange = await showDateRangePicker(
                locale: const Locale('tr', 'TR'),
                context: context,
                firstDate: DateTime(2024),
                lastDate: DateTime.now(),
                initialDateRange: DateTimeRange(
                  start: ref.watch(taskFilterStartDateProvider),
                  end: ref.watch(taskFilterEndDateProvider),
                ),
                initialEntryMode: DatePickerEntryMode.calendar,
              );
              if (selectedDateRange != null) {
            
                  ref.read(taskFilterStartDateProvider.notifier).setTime(selectedDateRange.start.copyWith(
                    hour: 0,
                    minute: 0,
                    second: 0,
                  ));
                  ref.read(taskFilterEndDateProvider.notifier).setTime(selectedDateRange.end.copyWith(
                    hour: 23,
                    minute: 59,
                    second: 59,
                  )); 
               };
            },
            icon: Icon(Icons.calendar_month_outlined)),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundColor: Colors.grey.shade100,
            child: IconButton(
              icon: Icon(Icons.search_outlined),
              onPressed: () {
                
              },
            ),
          ),
        ),
     ],
      backgroundColor: Colors.white,
      elevation: 0,
    );
  }
}