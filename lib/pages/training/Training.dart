import 'package:flutter/material.dart';

class Training extends StatelessWidget {
  const Training({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            title: Text(
              'Training', style: TextStyle(color: Colors.white),),
            centerTitle: true
        ),
        body:
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Создайте тренировку: '),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.4,
                  child: TextField(style: TextStyle(fontSize: 18, color: Colors.blue),
                      maxLines: 10,
                      minLines: 5),
                ),
                ElevatedButton(onPressed: () {

                },
                    child: Text('Add training')),
                Row(
                  children: [
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
                  ],
                ),
              ],
            ),
          ],
        ),
    );
  }
}
