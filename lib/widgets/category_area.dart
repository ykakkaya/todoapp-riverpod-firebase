import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:todoapp/utils/category_enum.dart';

class CategoryArea extends StatelessWidget {
  const CategoryArea({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: CategoryEnum.values.length,
        itemBuilder: (context, index) {
        final category = CategoryEnum.values[index];
        final item = categoryLabels[category] ?? category.name;
          return Row(
            children: [
              TextButton(onPressed: (){}, child: Text(  item,style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: Colors.blueAccent),)),
              Gap(30)
            ],
          );
        },),
    );
  }
}

