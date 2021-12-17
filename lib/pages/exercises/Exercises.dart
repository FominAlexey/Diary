//import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Exercises extends StatelessWidget {
  const Exercises({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            title: Text(
              'Exercises', style: TextStyle(color: Colors.white),),
            centerTitle: true
        ),

        body:
        Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              CheckboxWidget(),
                              Container(
                                width: MediaQuery.of(context).size.width * 0.4,
                                child: Text('Тренировка на грудь + трицепс + дельты:' '\n' '\n'
                                    '4х12,10,8,6  -  Жим штанги лежа' '\n'
                                    '3х10  -  Жим гантелей лежа на наклонной скамье' '\n'
                                    '3х10-12  -  Отжимания на брусьях с дополнительным отягощением' '\n'
                                    '4х10  -  Жим штанги лежа узким хватом' '\n'
                                    '4х10-12  -  Жим Арнольда' '\n'),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                  Row(
                      children: [
                        ElevatedButton.icon(onPressed: () {
                          Navigator.pushNamed(context, '/Training');
                        },
                          icon: Icon(Icons.format_align_left),
                          label: Text(''),),
                        ElevatedButton.icon(onPressed: () {
                          Navigator.pushNamed(context, '/Exercises');
                        },
                          icon: Icon(Icons.playlist_add_check),
                          label: Text(''),),
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