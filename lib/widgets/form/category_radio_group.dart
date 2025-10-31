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
       ref.read(radioButtonProvider.notifier).state = value!;      
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(CategoryEnum.Normal.label, style: TextStyle(color: Colors.blue)),
          Radio(
            value: CategoryEnum.Normal.label,
            fillColor: WidgetStatePropertyAll(Colors.blue),
          ),
          Text(CategoryEnum.Onemli.label, style: TextStyle(color: Colors.amber)),
          Radio(
            value: CategoryEnum.Onemli.label,
            fillColor: WidgetStatePropertyAll(Colors.amber),
          ),
          Text(CategoryEnum.Kritik.label, style: TextStyle(color: Colors.red)),
          Radio(
            value: CategoryEnum.Kritik.label,
            fillColor: WidgetStatePropertyAll(Colors.red),
          ),
       
        ],
      ),
    );
  }
}







