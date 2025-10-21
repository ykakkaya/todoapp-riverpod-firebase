import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class NewTaskForm extends StatefulWidget {
  const NewTaskForm({super.key});

  @override
  State<NewTaskForm> createState() => _NewTaskFormState();
}

class _NewTaskFormState extends State<NewTaskForm> {
  String? _groupValue;
  @override
  Widget build(BuildContext context) {
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
                      groupValue: _groupValue,
                      onChanged: (value) {
                        setState(() {
                          _groupValue = value;
                        });
                        print(_groupValue);
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("Normal", style: TextStyle(color: Colors.blue)),
                          Radio(
                            value: "Normal",
                            fillColor: WidgetStatePropertyAll(Colors.blue),
                          ),
                          Text("Önemli", style: TextStyle(color: Colors.amber)),
                          Radio(
                            value: "Önemli",
                            fillColor: WidgetStatePropertyAll(Colors.amber),
                          ),
                          Text("Kritik", style: TextStyle(color: Colors.red)),
                          Radio(
                            value: "Kritik",
                            fillColor: WidgetStatePropertyAll(Colors.red),
                          ),
                        ],
                      ),
                    ),
                    Gap(20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(children: [Text("Tarih Seçiniz"), Gap(10)]),
                        Column(children: [Text("Saat Seçiniz"), Gap(10)]),
                      ],
                    ),
                    Gap(20),
                    ElevatedButton(
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
