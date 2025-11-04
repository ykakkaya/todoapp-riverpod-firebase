// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:todoapp/utils/project_text.dart';
import 'package:todoapp/widgets/form/category_radio_group.dart';
import 'package:todoapp/widgets/form/customer_list_search_dropdown.dart';
import 'package:todoapp/widgets/form/form_button.dart';
import 'package:todoapp/widgets/form/form_datetime_select.dart';
import 'package:todoapp/widgets/form/form_name_text.dart';
import 'package:todoapp/widgets/form/task_input.dart';

class NewTaskForm extends ConsumerWidget {
  const NewTaskForm({super.key});
  @override
  Widget build(BuildContext context , WidgetRef ref) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      height: MediaQuery.of(context).size.height * 0.75,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Gap(20),
            FormNameText(title: ProjectText.newTask,),
            Divider(
              indent: MediaQuery.of(context).size.width * 0.05,
              endIndent: MediaQuery.of(context).size.width * 0.05,
              thickness: 1,
            ),
            Form(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    CustomerListSearchDropdown(),
                    Gap(20),
                    TaskInput(labelText: ProjectText.taskNameLabel, hintText:ProjectText.taskNameHint,),
                    Gap(20),
                    TaskInput(labelText: ProjectText.descriptionLabel, hintText: ProjectText.descriptionHint,maxLine: 3,),
                    Gap(20),
                    TaskInput(labelText: ProjectText.infoDescriptionLabel, hintText: ProjectText.infoDescriptionHint),
                    Gap(20),
                    Text(
                      ProjectText.categorySelect,
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    Gap(10),
                    CategoryRadioGroup(),
                    Gap(20),
                    FormDateTimeSelect(),
                    Gap(20),
                    Row(
                      children: [
                        Expanded(
                          child: FormButton(buttonText: ProjectText.savedButton, backgroundColor: Colors.blue.shade200, textColor: Colors.white,),
                        ),
                        Gap(20),
                         Expanded(
                           child: FormButton(buttonText: ProjectText.cancelButton, backgroundColor: Colors.grey.shade200, textColor: Colors.black,),
                         ),
                      ],
                    ), 
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

