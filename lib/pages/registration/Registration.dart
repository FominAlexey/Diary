import 'package:flutter/material.dart';

class Registration extends StatelessWidget {
  const Registration({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
        backgroundColor: Colors.deepOrange,
        appBar: AppBar(
            title: Text('Registration', style: TextStyle(color: Colors.white),),
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
                        hintText: "Введите Имя",
                        helperText: "Имя используется, чтобы Вас приветствовать",
                      ))
                  ),
                  Container( width: 300,
                      child: TextField(decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        icon: Icon(Icons.login),
                        hintText: "Введите Логин",
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
                  Container( width: 300,
                      child: TextField(decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        icon: Icon(Icons.login),
                        hintText: "Повторите ранее введённый Пароль",
                        helperText: "Пароль используется для входа в систему",
                      ))
                  ),
                  ElevatedButton(onPressed: () {
                    Navigator.pushNamed(context, '/AppData');
                  }, child: Text('Next'))
                ],
              ),
            ]
        )
    );
  }
}