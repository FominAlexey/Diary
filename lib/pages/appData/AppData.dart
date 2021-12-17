import 'package:flutter/material.dart';


class AppData extends StatelessWidget {
  const AppData({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context){
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            title: Text('AppData', style: TextStyle(color: Colors.white),),
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
                        hintText: "Введите Рост",
                      ))
                  ),
                  Container( width: 300,
                      child: TextField(decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Введите Вес",
                      ))
                  ),
                  Container( width: 300,
                      child: TextField(decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: " Введите Возраст",
                      ))
                  ),
                  Text('Выбирите пол'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                  CheckboxWidget(),
                  Text('Мужской'),
                  CheckboxWidget(),
                  Text('Женский'),
                              ]),
    ElevatedButton(onPressed: () {
                    Navigator.pushNamed(context, '/Main');
                  }, child: Text('Complete'))
                ],
              ),
            ]
        )
    );
  }
}

class CheckboxWidget extends StatefulWidget {
  @override
  CheckboxWidgetClass createState() => new CheckboxWidgetClass();
}

class CheckboxWidgetClass extends State {

  bool isChecked = false;


  void toggleCheckbox(bool value) {

    if(isChecked == false)
    {
      // Put your code here which you want to execute on CheckBox Checked event.
      setState(() {
        isChecked = true;

      });

    }
    else
    {
      // Put your code here which you want to execute on CheckBox Un-Checked event.
      setState(() {
        isChecked = false;

      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:[ Transform.scale(
          scale: 1.5,
          child: Checkbox(
            value: isChecked,
            onChanged: (value){toggleCheckbox(value!);},
            activeColor: Colors.blueAccent,
            checkColor: Colors.white,
            tristate: false,
          ),
        ),
        ]);
  }
}
