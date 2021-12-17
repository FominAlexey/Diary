import 'package:flutter/material.dart';

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            title: Text(
              'Main', style: TextStyle(color: Colors.white),),
            centerTitle: true
        ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                    children: [
                      Column(
                          children:[
                          Text('Рост'),
                            Text('Ккалории'),
                      ]
           ),
                      Container( width: 300,),
                      Column(
                          children:[
                   Text('Вес'),
                   Text('Ср. время тренировки'),
                 ]
             ),
                    ]),
        Row(
        children: [
        Text('Тренировка'),
                ]),

                Row(
                 children:[
                   ElevatedButton.icon(onPressed: () {
                     Navigator.pushNamed(context, '/Training');
                   }, icon: Icon(Icons.format_align_left), label: Text(''),),
                   ElevatedButton.icon(onPressed: () {
                     Navigator.pushNamed(context, '/Exercises');
                   }, icon: Icon(Icons.playlist_add_check), label: Text(''),),
                   ElevatedButton.icon(onPressed: () {
                     Navigator.pushNamed(context, '/Main');
                   }, icon: Icon(Icons.near_me), label: Text(''),),
                   ElevatedButton.icon(onPressed: () {
                     Navigator.pushNamed(context, '/Statistics');
                   }, icon: Icon(Icons.timeline), label: Text(''),),
                   ElevatedButton.icon(onPressed: () {
                     Navigator.pushNamed(context, '/Profile');
                   }, icon: Icon(Icons.person), label: Text(''),),
                 ]
                ),
              ],
            ),
          ]
      )
    );
  }
}
