import 'dart:html';

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
                          ),
                          Row(
                            children: [
                              CheckboxWidget(),
                              Container(
                                width: MediaQuery.of(context).size.width * 0.4,
                                child: Text('Тренировка на спина + бицепс:' '\n' '\n'
                                    '4х12,10,8,6  -  Становая тяга классикой' '\n'
                                    '4х10-12  -  Подтягивания широким хватом с дополнительным отягощением' '\n'
                                    '4х10  -  Тяга штанги к поясу' '\n'
                                    '3х10  -  Тяга верхнего блока узким обратным хватом' '\n'
                                    '4х10  -  Сгибания рук со штангой стоя' '\n'
                                    '3х12  -  Скручивания в тренажере' '\n'),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              CheckboxWidget(),
                              Container(
                                width: MediaQuery.of(context).size.width * 0.4,
                                child: Text('Тренировка на ноги:' '\n' '\n'
                                    '4х12,10,8,6  -  Приседания со штангой на плечах' '\n'
                                    '3х10  -  Жим ногами в тренажере' '\n'
                                    '3х10  -  Выпады со штангой' '\n'
                                    '4х10  -  Румынская тяга с гантелями' '\n'
                                    '4х12-15  -  Подъемы на носки стоя в тренажере' '\n'
                                    '3х10-12  -  Подъемы ног в висе на турнике' '\n'),
                              ),
                            ],
                          ),
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