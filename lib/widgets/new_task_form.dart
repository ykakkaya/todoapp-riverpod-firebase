import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker_plus/flutter_datetime_picker_plus.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:todoapp/providers/taskProviders/category_radio_provider.dart';
import 'package:todoapp/providers/taskProviders/task_add_date_provider.dart';
import 'package:todoapp/utils/category_enum.dart';

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
            Text(
              "Yeni Görev Ekle",
              style: Theme.of(
                context,
              ).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
            ),
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
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: "Görev Adı",
                        hintText: "İş Giriniz...",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    Gap(20),
                    TextFormField(
                      maxLines: 3,
                      decoration: InputDecoration(
                        labelText: "Açıklama",
                        hintText: "Açıklama Giriniz...",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    Gap(20),
                    Text(
                      "Kategori Seçiniz",
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    Gap(10),
                    RadioGroup(
                      groupValue: ref.watch(radioButtonProvider),
                      onChanged: (value) {
                       ref.read(radioButtonProvider.notifier).state = value!;      
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(categoryLabels[CategoryEnum.Normal]!, style: TextStyle(color: Colors.blue)),
                          Radio(
                            value: categoryLabels[CategoryEnum.Normal]!,
                            fillColor: WidgetStatePropertyAll(Colors.blue),
                          ),
                          Text(categoryLabels[CategoryEnum.Onemli]!, style: TextStyle(color: Colors.amber)),
                          Radio(
                            value: categoryLabels[CategoryEnum.Onemli]!,
                            fillColor: WidgetStatePropertyAll(Colors.amber),
                          ),
                          Text(categoryLabels[CategoryEnum.Kritik]!, style: TextStyle(color: Colors.red)),
                          Radio(
                            value: categoryLabels[CategoryEnum.Kritik]!,
                            fillColor: WidgetStatePropertyAll(Colors.red),
                          ),
                        ],
                      ),
                    ),
                    Gap(20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        //Tarih Seçici Butonu
                            ElevatedButton.icon(onPressed: (){
                              DatePicker.showDatePicker(context,
                              showTitleActions: true,
                               onConfirm: (date) {
                              },
                              minTime: DateTime(2020, 1, 1),
                           currentTime: DateTime.now(),
                            locale: LocaleType.tr);
                            }, label: Text("Tarih Seç",), icon: Icon(Icons.date_range)),
                        //Saat Seçici Butonu
                           ElevatedButton.icon(onPressed: (){
                              DatePicker.showTimePicker(context,
                              showTitleActions: true, onConfirm: (date) {}, currentTime: DateTime.now(),
                              locale: LocaleType.tr
                              );
                              
                           }, label: Text("Saat Seç",), icon: Icon(Icons.alarm)),
                        
                        
                      ],
                    ),
                    Gap(20),
                    Row(
                      children: [
                        Expanded(
                          child: ElevatedButton(
                          
                            onPressed: () {},
                            child: Text(
                              "Kaydet",
                              style: TextStyle(color: Colors.white),
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue.shade200,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                        Gap(20),
                         Expanded(
                           child: ElevatedButton(
                                                 onPressed: () {
                                                 },
                                                 child: Text(
                                                   "İptal",
                                                   style: TextStyle(color: Colors.white),
                                                 ),
                                                 style: ElevatedButton.styleFrom(
                                                   backgroundColor: Colors.red.shade200,
                                                   shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                                                   ),
                                                 ),
                                               ),
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

