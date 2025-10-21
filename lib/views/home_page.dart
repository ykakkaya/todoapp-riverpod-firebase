import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:todoapp/widgets/category_area.dart';
import 'package:todoapp/widgets/custom_appbar.dart';
import 'package:todoapp/widgets/task_top_area.dart';

class HomePage extends StatelessWidget {
  const HomePage
({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: CustomAppbar(title: 'Yakup Akkaya',),
      body:Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child:Column(
            children: [
              Gap(20),
              TaskTopArea(),
              Gap(20),
              CategoryArea(),
              
            ],
          )
        ),
      )
    );
  }
}

