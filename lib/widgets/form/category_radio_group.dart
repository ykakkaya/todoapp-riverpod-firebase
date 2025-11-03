import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todoapp/providers/taskProviders/category_radio_provider.dart';
import 'package:todoapp/utils/category_enum.dart';

class CategoryRadioGroup extends ConsumerWidget {
  const CategoryRadioGroup({
    super.key,
  });

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    return RadioGroup(
      groupValue: ref.watch(radioButtonProvider),
      onChanged: (value) {
       ref.read(radioButtonProvider.notifier).setRadioValue(value!);      
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(CategoryEnum.Normal.label, style: TextStyle(color: Colors.green)),
          Radio(
            value: CategoryEnum.Normal.label,
            fillColor: WidgetStatePropertyAll(Colors.green),
          ),
          Text(CategoryEnum.Onemli.label, style: TextStyle(color: Colors.orangeAccent)),
          Radio(
            value: CategoryEnum.Onemli.label,
            fillColor: WidgetStatePropertyAll(Colors.orangeAccent),
          ),
          Text(CategoryEnum.Kritik.label, style: TextStyle(color: Colors.redAccent)),
          Radio(
            value: CategoryEnum.Kritik.label,
            fillColor: WidgetStatePropertyAll(Colors.redAccent),
          ),
       
        ],
      ),
    );
  }
}







