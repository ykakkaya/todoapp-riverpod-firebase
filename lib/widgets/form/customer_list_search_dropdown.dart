import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:flutter/material.dart';

class CustomerListSearchDropdown extends StatelessWidget {
  const CustomerListSearchDropdown({Key? key}) : super(key: key);

  final List<String> _list = const [
    "A8 Bilişim",
    "ABC LOJİSTİK",
    "AKNET BİLGİSAYAR",
    "KARE BİLGİSAYAR",
    "İVENT BİLGİSAYAR",
    "NETSİM YAZILIM",
    "NETCOM BİLGİSAYAR",
  ];

  @override
  Widget build(BuildContext context) {
    return CustomDropdown<String>.search(
      decoration: CustomDropdownDecoration(
        closedBorder: BoxBorder.all(color: Colors.black54)
      ),
      hintText: 'Müşteri Seçiniz...',
      searchHintText: 'Müşteri Ara...',
      items: _list,
      excludeSelected: false,
      onChanged: (value) {
        print(value);
      },
    );
  }
}