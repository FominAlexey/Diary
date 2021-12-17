import 'package:flutter/material.dart';

class Statistics extends StatelessWidget {
  const Statistics({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            title: Text('Statistics', style: TextStyle(color: Colors.white),),
            centerTitle: true
        ),
        body: Row(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:[
                  Container( width: 300,
                    child: Text('Рост'),
                  ),
                  Container( width: 300,
                    child: Text('Вес'),
                  ),
                  Container( width: 300,
                    child: Text('Каллории'),
                  ),
                  Container( width: 300,
                    child: Text('Ср. Время тренировки'),
                  ),
                  Container( width: 300,
                    child: Text('Кол-во трениовок'),
                  ),
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