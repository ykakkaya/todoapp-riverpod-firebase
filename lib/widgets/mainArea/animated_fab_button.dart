import 'package:fab_circular_menu_plus/fab_circular_menu_plus.dart';
import 'package:flutter/material.dart';
import 'package:todoapp/widgets/new_task_form.dart';

class AnimatedFabButton extends StatelessWidget {
  const AnimatedFabButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FabCircularMenuPlus(
      ringColor: Colors.amber.shade100,
      fabOpenColor: Colors.red.shade300,
      fabCloseColor: Colors.yellow.shade300,
      ringDiameterLimitFactor: 0.75,
        children: <Widget>[
          IconButton(icon: Icon(Icons.task_outlined,size: 40,color: Colors.green,), onPressed: () {
            showModalBottomSheet(
            isScrollControlled: true,
            context: context, builder: (context){
            return NewTaskForm();
          });
           
          }),
          IconButton(icon: Icon(Icons.design_services_sharp,size: 40,color: Colors.orange,), onPressed: () {
            print('Müşteri Ekleme');
          }),
           IconButton(icon: Icon(Icons.add_reaction_outlined,size: 40,color: Colors.blue,), onPressed: () {
            print('Profil Düzenle');
          })
        ]
      );
  }
}
