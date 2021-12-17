import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            title: Text('Profile', style: TextStyle(color: Colors.white),),
            centerTitle: true
        ),
        body: Row(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:[
                  Container( width: 300,
                      child: Text('Имя'),
                  ),
                  Container( width: 300,
                    child: Text('Логин'),
                  ),
                  Container( width: 300,
                    child: Text('Рост'),
                  ),
                  Container( width: 300,
                    child: Text('Вес'),
                  ),
                  Container( width: 300,
                    child: Text('Пол'),
                  ),
                  Container( width: 300,
                    child: Text('Возраст'),
                  ),
                  Container(
                    child:
                    ElevatedButton(onPressed: () {
                      Navigator.pushNamed(context, '/Sign');
                    },
                        child: Text('Sign out')),
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