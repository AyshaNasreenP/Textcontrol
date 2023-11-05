import 'package:flutter/material.dart';
import 'package:textcontrol/add.dart';
import 'package:textcontrol/allinall.dart';
import 'package:textcontrol/bnichat.dart';
import 'package:textcontrol/calchome.dart';
import 'package:textcontrol/calculator.dart';
import 'package:textcontrol/gst.dart';
import 'package:textcontrol/home.dart';
import 'package:textcontrol/oddoreven.dart';
import 'package:textcontrol/simplecalc.dart';
import 'package:textcontrol/textlist.dart';

import 'bmiedit.dart';
import 'cliclcontainer.dart';
import 'correct.dart';

import 'gpt.dart';
import 'newcontainer.dart';
import 'operation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
///all in one calculator
     home: calculationsingle(),



      /// bmi calculator
     //  home: bmic()


      ///Calculator with all opeations
      //home: calculationsingle(),
      //home: textlist(),
///list
     //home:  textlist (),
//--------------------------
      /// gst calculator
     // home: gst(),
  ///gst corrrection
   //   home: gstcorr(),

//home: newcont(),

    ///simple interest Calculator


     //home: simpleintrest(),

      ///odd or even

      //home: oddeven(),

      //home: _calculatorState(),
    );
  }
}


