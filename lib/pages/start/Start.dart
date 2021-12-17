import 'package:flutter/material.dart';

class Start extends StatelessWidget {
  const Start({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Diary Training', style: TextStyle(color: Colors.white),),
        centerTitle: true
      ),
      body: Center(
          child: ElevatedButton(onPressed: () {
            Navigator.pushNamed(context, '/Sign');
          }, child: Text('Start now'))
      )
    );
  }
}