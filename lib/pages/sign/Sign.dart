import 'package:flutter/material.dart';

class Sign extends StatelessWidget {
  const Sign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            title: Text('Sign in', style: TextStyle(color: Colors.white),),
            centerTitle: true
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
          children: [
                    Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                           children:[
                            Container( width: 300,
                              child: TextField(decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                icon: Icon(Icons.login),
                                hintText: "Введите логин",
                                helperText: "Логин используется для входа в систему",
                              ))
                            ),
                            Container( width: 300,
                              child: TextField(decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                icon: Icon(Icons.login),
                                hintText: "Введите Пароль",
                                helperText: "Пароль используется для входа в систему",
                              ))
                            ),
                            ElevatedButton(onPressed: () {
                                  Navigator.pushNamed(context, '/Main');
                                  }, child: Text('Main')),
                             ElevatedButton(onPressed: () {
                               Navigator.pushNamed(context, '/Registration');
                             }, child: Text('Registration'))
            ],
          ),
        ]
        )
    );
  }
}