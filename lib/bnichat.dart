///BMI Calculator

import 'package:flutter/material.dart';
import 'dart:math';


import 'package:textcontrol/bmiresult.dart';
import 'package:textcontrol/cliclcontainer.dart';
class bmic extends StatefulWidget {
  const bmic({super.key});

  @override
  State<bmic> createState() => _bmicState();
}
String? height='';
String? weight='';
double bmi=0;
String finalresult ='';
String status='';
Color textColor = Colors.black;
TextEditingController hcontroller=TextEditingController();
TextEditingController wcontroller=TextEditingController();

Future<void> _showMyDialog(BuildContext context) async {


  if(status=='Underweight')
  {
    textColor = Colors.blueAccent;
  }
  else if(status=='Normal')
  {
    textColor = Colors.green;
  }
  else if(status=='OverWeight')
  {
    textColor = Colors.redAccent;
  }
  else
    {
      textColor = Colors.red;
    }
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        //title: Text('Dialog Title'),
        content:Container(
          height: 70,
          child: Column(

            children: [
              Text('Your BMI is ' + finalresult,
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                  fontSize: 20
                ),
              ),
              SizedBox(height: 10,),
              Text(status,
                style: TextStyle(
                     color: textColor,
                    fontWeight: FontWeight.w500,
                    fontSize: 20
                    ),
              )
            ],
          ),
        ),
        //Text('Your BMI is ' + finalresult +'\n' + status ,
        //   style: TextStyle(
        //     color: textColor
        //   ),
        // ),
        // Text(stringgstcost),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.of(context).pop(); // Close the dialog
            },
            child: Text('Close',
            style: TextStyle(fontSize: 18,
            //color: Colors.black
            ),
            ),
          ),
        ],
      );
    },
  );
}



class _bmicState extends State<bmic> {
  void bmicalc()
  {
    double fheight;
    double fweight;
   //var finalresult;

     fheight= double.parse(hcontroller.text);
    fweight= double.parse(wcontroller.text);
    bmi=fweight/(fheight*fheight /10000);
   // String bmiresult=bmi.toStringAsFixed(2);
   // bmi= fweight / pow(fheight *100, 2);
      if(bmi<18.5)
      {
        status='Underweight';
      }
      else if(18.5< bmi && bmi < 24.9)
      {
        status='Normal';

      }
      else if(25.0< bmi && bmi < 29.9)
      {
        status='OverWeight';

      }
      else
      {
        status='Obese';

      }
    setState(() {
     // finalresult =bmiresult;
      finalresult = bmi.toStringAsFixed(2);

    });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("BMI Calculator"),
      ),
      body: Align(
        alignment: Alignment.center,
        child: Container(
          height: 500,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
                child: TextFormField(
                  controller: hcontroller,
                  decoration: InputDecoration(
                    fillColor: Colors.blueGrey,
                    labelText: 'Height',
                    border:OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),

                    )
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 2),
                child: TextFormField(
                  controller: wcontroller,
                  decoration: InputDecoration(
                      fillColor: Colors.blueGrey,
                      labelText: 'Weight',
                      border:OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),

                      )
                  ),
                ),
              ),
              SizedBox(height: 20,),
              ElevatedButton(onPressed: (){
                setState(() {
                  bmicalc();
                  _showMyDialog(context);
                });
              }, child: Text("Calculate")),
              //Text(finalresult)
            ],
          ),
        ),
      ),
    );

  }
}

// onTap: (){
// Navigator.push(context,
// MaterialPageRoute(builder: (context) =>clickcont()),
// );
//
// },