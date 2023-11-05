import 'package:flutter/material.dart';
import 'dart:math';

import 'package:textcontrol/bmiresult.dart';
import 'package:textcontrol/cliclcontainer.dart';
class gst extends StatefulWidget {
  //const gst({Key? key}) : super(key: key);
  const gst({super.key});

  @override
  State<gst> createState() => _gstState();
}
String? originalcost='';
String? gstpercent='';
double gstcost=0;
double finalcost=0;
String gstresult ='';
String totalcost='';
String stringgstcost = '';
String stringfinalcost = '';
TextEditingController orginalcontroller=TextEditingController();
TextEditingController gstpercentcontroller=TextEditingController();

Future<void> _showMyDialogexclusive(BuildContext context) async {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        //title: Text('Dialog Title'),
        content: Text('GST Amount : $gstcost\n Final Amount : $finalcost' ),
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
Future<void> _showMyDialoginclusive(BuildContext context) async {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        //title: Text('Dialog Title'),
        content:
        Text('GST Amount : ' + stringgstcost +'\n Original Amount : '+stringfinalcost ),
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

class _gstState extends State<gst> {
  void gstcalc()
  {
    double originalcost;
    double gstpercent;
    //var finalresult;
    originalcost= double.parse(orginalcontroller.text);
    gstpercent= double.parse(gstpercentcontroller.text);
    if(selectedOption==1)
    {
      gstcost=originalcost*(gstpercent/100);
      finalcost=originalcost+gstcost;
      String stringgstcost= gstcost.toStringAsFixed(2);
      String stringfinalcost= finalcost.toStringAsFixed(2);


    }
    else{
      gstcost=originalcost-(originalcost*(100.0/(100.0+gstpercent)));
      finalcost=originalcost-gstcost;
      stringgstcost= gstcost.toStringAsFixed(2);
      stringfinalcost= finalcost.toStringAsFixed(2);

    }




    // String bmiresult=bmi.toStringAsFixed(2);
    // bmi= fweight / pow(fheight *100, 2);

    // setState(() {
    //   gstresult = gstcost.toStringAsFixed(2);
    //   //gstresult = gstcost.toStringAsFixed(2);
    //
    // });


  }
  int selectedOption = 1;
  void handleRadioValueChange(int value) {
    setState(() {
      selectedOption = value;
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

              Row(
                children: [
                  Radio(value: 1, groupValue: selectedOption, onChanged:(value){
                    handleRadioValueChange(value!);
                  },
                    //toggleable: true,

                  ),
                  Text("GST Exclusive "),
                  Radio(value: 2, groupValue: selectedOption, onChanged:(value){
                    handleRadioValueChange(value!);
                  }),
                  Text("GST Inclusive"),
                ],
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextFormField(
                  controller: orginalcontroller,
                  decoration: InputDecoration(
                      fillColor: Colors.blueGrey,
                      labelText: 'Cost',
                      border:OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),

                      )
                  ),
                ),
              ),
             // SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextFormField(
                  controller: gstpercentcontroller,
                  decoration: InputDecoration(
                      fillColor: Colors.blueGrey,
                      labelText: 'GST Rate',
                      suffixText: " %",
                      border:OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),

                      )
                  ),
                ),
              ),
              SizedBox(height: 20,),
              ElevatedButton(onPressed: (){
                setState(() {
                  gstcalc();
                  if(selectedOption==1){
                    _showMyDialogexclusive(context);
                  }
                  else{
                    _showMyDialoginclusive(context);
                  }

                });
              }, child: Text("Calculate")),
              // Text('GST Amount : $gstcost'),
              // Text('Final Amount : $finalcost')
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