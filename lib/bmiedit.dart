import 'package:flutter/material.dart';
import 'dart:math';

import 'package:textcontrol/bmiresult.dart';
import 'package:textcontrol/cliclcontainer.dart';
class bmicedit extends StatefulWidget {
  const bmicedit({super.key});

  @override
  State<bmicedit> createState() => _bmiceditState();
}
String? height='';
String? weight='';
double bmi=0;
String finalresult ='';
String status='';
TextEditingController hcontroller=TextEditingController();
TextEditingController wcontroller=TextEditingController();

Future<void> _showMyDialog(BuildContext context) async {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        //title: Text('Dialog Title'),
        content:
        Text('Your BMI is ' + finalresult +'\n' + status,
        style: TextStyle(
          fontSize: 40,
          fontWeight: FontWeight.w700
        ),),
        // Text(stringgstcost),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.of(context).pop(); // Close the dialog
            },
            child: Text('Close'),
          ),
        ],
      );
    },
  );
}



class _bmiceditState extends State<bmicedit> {
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
              TextFormField(
                controller: hcontroller,
                decoration: InputDecoration(
                    fillColor: Colors.blueGrey,
                    labelText: 'Height',
                    border:OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),

                    )
                ),
              ),
              SizedBox(height: 20,),
              TextFormField(
                controller: wcontroller,
                decoration: InputDecoration(
                    fillColor: Colors.blueGrey,
                    labelText: 'Weight',
                    border:OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),

                    )
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

