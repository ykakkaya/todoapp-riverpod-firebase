import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';
import 'package:todoapp/utils/project_text.dart';
import 'package:todoapp/widgets/new_task_form.dart';

class TaskTopArea extends StatelessWidget {
  const TaskTopArea({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            Text(ProjectText.today),
            Gap(5),
            Text(
              DateFormat('d MMMM yyyy','tr').format(DateTime.now()),
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
            ), 
          ],
        ),
        ElevatedButton.icon(onPressed: (){
          showModalBottomSheet(
            isScrollControlled: true,
            context: context, builder: (context){
            return NewTaskForm();
          });
        }, label: Text(ProjectText.newTask,style: TextStyle(color: Colors.white),), icon: Icon(Icons.add,color: Colors.white,),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue.shade200,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10)
          )
        ),)
      ],
    );
  }
}

