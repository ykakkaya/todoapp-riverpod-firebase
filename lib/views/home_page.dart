import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:todoapp/widgets/TaskArea/task_card.dart';
import 'package:todoapp/widgets/category_area.dart';
import 'package:todoapp/widgets/custom_appbar.dart';
import 'package:todoapp/widgets/mainArea/animated_fab_button.dart';
import 'package:todoapp/widgets/task_top_area.dart';

class HomePage extends StatelessWidget {
  const HomePage
({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: CustomAppbar(title: 'Yakup Akkaya',),
      floatingActionButton: AnimatedFabButton(),
      body:Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Gap(20),
            TaskTopArea(),
            Gap(20),
            CategoryArea(),
            //TaskArea(),
           Expanded(
             child: ListView.separated(
              itemCount: 25,
              separatorBuilder: (BuildContext context, int index) => const Gap(20),
              itemBuilder: (BuildContext context, int index) {
                return TaskCard(index: index,);
              },
                         ),
           )
          ],
        ),
      )
    );
  }
}


