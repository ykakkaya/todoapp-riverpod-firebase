import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class PersonelList extends StatelessWidget {
  const PersonelList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
  height: 50, // veya Chip boyutuna uygun bir yükseklik
  child: ListView.builder(
    itemCount: 5,
    scrollDirection: Axis.horizontal,
    shrinkWrap: true,
    itemBuilder: (context, index) {
      return Row(
        children: [
          Chip(
            label: const Text('Atanan Personel',style: TextStyle(color: Colors.white),),
            backgroundColor: Colors.blueAccent,
          ),
          const Gap(10),
        ],
      );
    },
  ),
);
  }
}

