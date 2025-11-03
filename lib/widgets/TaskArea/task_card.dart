// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:todoapp/widgets/TaskArea/personel_list.dart';

class TaskCard extends StatelessWidget {
  int index;
  TaskCard({
    Key? key,
    required this.index,
  }) : super(key: key);

  Color sideColor(index){
    if(index%3==0){
      return Colors.amberAccent.withValues(alpha: 0.4);
    }else if(index%3==1){
      return Colors.greenAccent.withValues(alpha: 0.4);
    }else{
      return Colors.blueAccent.withValues(alpha: 0.4);
    }
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular( 20)),
      child: Container(
        
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.lightBlueAccent.withValues(alpha: 0.075),
        ),
        child: IntrinsicHeight(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              //Yan Kategori Barı
              Container(width: MediaQuery.of(context).size.width*0.05,
              color: sideColor(index),
              ),
              //Ana İçerik Alanı
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('A8 Bilişim San.Tic.Ltd.Şti.',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,decoration: TextDecoration.underline),
                      ),
                      Gap(10),
                      Text("Açıklama Alanı:",style: TextStyle(fontWeight: FontWeight.bold,
                      )),
                      Text('Toplantı Notları Alınacak ve Müşteri ile Görüşülecek.Toplantı Notları Alınacak ve Müşteri ile Görüşülecek.Toplantı Notları Alınacak ve Müşteri ile Görüşülecek.',overflow: TextOverflow.ellipsis,
                      maxLines: 2,),
                      Gap(10),
                      Text("Bilgi Notu:",style: TextStyle(fontWeight: FontWeight.bold),),
                      Text('Bilgi Notu Buraya Gelecek.',overflow: TextOverflow.ellipsis,
                      maxLines: 2,),
                      Gap(10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text("Başlama Tarihi",style: TextStyle(fontWeight: FontWeight.bold),),
                              Text('20.06.2025 13:00'),
                            ],
                          ),
                           Column(
                            children: [
                              Text("Başlama Tarihi",style: TextStyle(fontWeight: FontWeight.bold),),
                              Text('20.06.2025 15:00'),
                            ],
                          )
                        ],
                      ),
                     
                      PersonelList()
                    ],
                  ),
                ),
              ),
              IconButton(onPressed: (){}, icon: Icon(Icons.settings_outlined,color: Colors.black26.withValues(alpha: 0.6),)),
          
            ],
          ),
        ),
      ),
    );
  }
}

