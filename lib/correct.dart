import 'package:flutter/material.dart';
import 'dart:math';

import 'package:textcontrol/bmiresult.dart';
import 'package:textcontrol/cliclcontainer.dart';
class gstcorr extends StatefulWidget {
  const gstcorr({super.key});

  @override
  State<gstcorr> createState() => _gstcorrState();
}
String? originalcost='';
double gstpercent=0;
double gstcost=0;
double finalcost=0;
String gstresult ='';
String totalcost='';
TextEditingController orginalcontroller=TextEditingController();
//TextEditingController gstpercentcontroller=TextEditingController();



class _gstcorrState extends State<gstcorr> {
  void gstcalc()
  {
    double originalcost;
    //double gstpercent;
    //var finalresult;
    originalcost= double.parse(orginalcontroller.text);
    //gstpercent= double.parse(gstpercentcontroller.text);
    gstcost=originalcost*(gstpercent/100);
    finalcost=originalcost+gstcost;
    // String bmiresult=bmi.toStringAsFixed(2);
    // bmi= fweight / pow(fheight *100, 2);

    setState(() {
      // finalresult =bmiresult;
      gstresult = gstcost.toStringAsFixed(2);

    });


  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("GST Calculator"),
      ),
      body: Align(
        alignment: Alignment.center,
        child: Container(
          height: 500,
          child: Column(
            children: [
              TextFormField(
                controller: orginalcontroller,
                decoration: InputDecoration(
                    fillColor: Colors.blueGrey,
                    labelText: 'Cost',
                    border:OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),

                    )
                ),
              ),
              SizedBox(height: 20,),
              // TextFormField(
              //   enabled: false,
              //   controller: gstpercentcontroller,
              //   decoration: InputDecoration(
              //       fillColor: Colors.blueGrey,
              //       labelText: 'GST',
              //       border:OutlineInputBorder(
              //         borderRadius: BorderRadius.circular(5),
              //
              //       )
              //   ),
              // ),
              SizedBox(height: 20,),
              Row(
                children: [
                  button(text: '5'),
                  button(text: '12'),
                  button(text: '18'),
                  button(text: '28',)
                ],
              ),
              SizedBox(height: 20,),
              ElevatedButton(onPressed: (){
                setState(() {
                  gstcalc();
                });
              }, child: Text("Calculate")),
              Text('GST Amount : $gstcost'),
              Text('Final Amount : $finalcost')
            ],
          ),
        ),
      ),
    );

  }
}

Widget button ({text ,tcolor=Colors.white,bgcolor=Colors.grey}){
  return Expanded(
      child: Container(

        margin:EdgeInsets.all(4) ,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              onPrimary: bgcolor,
              //onPrimary: Colors.amber,
             surfaceTintColor: Colors.black,
             // onSurface: Colors.black


            ),
            onPressed: (){
              gstpercent=text;
              //gstpercentcontroller.text = text;
            },
            child: Text(text,
              style: TextStyle(
                  color: tcolor,
                  fontSize: 20
              ),
            )
        ),
      )
  );
}
