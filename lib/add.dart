import 'package:flutter/material.dart';
class add extends StatefulWidget {
  const add({super.key});

  @override
  State<add> createState() => _addState();
}

// String height='0';
// String weight='0';
var height=0;
var weight=0;
double? bmi=0;
final  _controllerh =TextEditingController();
final  _controllerw =TextEditingController();
class _addState extends State<add> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,

          children: [
            TextField(
              keyboardType: TextInputType.number,
              controller: _controllerh,
             decoration: InputDecoration(
               labelText: 'Height'
             ),
            ),
            TextField(
              keyboardType: TextInputType.number,
              controller: _controllerw,
              decoration: InputDecoration(
                  labelText: 'Weight'
              ),
            ),


             ElevatedButton(onPressed: (){
               setState(() {

                height=_controllerh.text as int;
                weight=_controllerw.text as int;

                bmi=  ( weight /height/height)*10000;

               });
             }, child: Text("BMI")),
        Text('BMI IS $bmi'),
        Text('$height'),
            //Text('BMI IS $bmi')
          ],
        ),
      ),
    );
  }
}

class $sum {
}
