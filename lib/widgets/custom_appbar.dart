import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:todoapp/utils/project_text.dart';

class CustomAppbar extends StatefulWidget implements PreferredSizeWidget {
  final String title;
  const CustomAppbar({super.key, required this.title});

  @override
  State<CustomAppbar> createState() => _CustomAppbarState();
  
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

class _CustomAppbarState extends State<CustomAppbar> {
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
            onPressed: (){},
            icon: Icon(Icons.calendar_month_outlined)),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundColor: Colors.grey.shade100,
            child: IconButton(
              icon: Icon(Icons.search_outlined),
              onPressed: () {},
            ),
          ),
        ),
     ],
      backgroundColor: Colors.white,
      elevation: 0,
    );
  }
}