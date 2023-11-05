import 'package:flutter/material.dart';
import 'dart:math';

class calculator extends StatefulWidget {
  const calculator({super.key});

  @override
  State<calculator> createState() => _calculatorState();
}
String inputs='';
String inp1='';
String inp2='';
String op='';
String? outputs='';
String _input = '';
double _result = 0.0;
TextEditingController input=TextEditingController();
TextEditingController output=TextEditingController();

onButtonclick(value)
  {
    if (value == 'AC')
    {
      input.text = '';
      output.text = '';
    }
    else if (value == '<')
    {
       inputs = inputs.substring(0, inputs.length - 1);
    }
    else if (value == '=')
    {

    }
    else
      {
        input.text+= value;
      }
  }


class _calculatorState extends State<calculator> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 500,
        color: Colors.black,
        child: Column(
          children: [
            TextFormField(
              controller: output,
              //output
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white
                ),
            ),
            SizedBox(height: 20,),
            TextFormField(
              controller: input,
              //input
              textAlign: TextAlign.end,
              style: TextStyle(
                  color: Colors.white.withOpacity(0.7),
                  fontSize: 20,
                fontWeight: FontWeight.bold

              ),

            ),
            SizedBox(height: 20,),
            Row(
              children: [
                button(text: 'AC',tcolor: Colors.white,bgcolor: Colors.blueGrey),
                button(text: '<',tcolor: Colors.white,bgcolor: Colors.blueGrey),
                button(text: ')',tcolor: Colors.white,bgcolor: Colors.blueGrey),
                button(text: '%',tcolor: Colors.white,bgcolor: Colors.blueGrey)
              ],
            ),
            Row(
              children: [
                button(text: '7'),
                button(text: '8'),
                button(text: '9'),
                button(text: '÷',tcolor: Colors.white,bgcolor: Colors.blueGrey)
              ],
            ),
            Row(
              children: [
                button(text: '4'),
                button(text: '5'),
                button(text: '6'),
                button(text: '×',tcolor: Colors.white,bgcolor: Colors.blueGrey)
              ],
            ),
            Row(
              children: [
                button(text: '1'),
                button(text: '2'),
                button(text: '3'),
                button(text: '+',tcolor: Colors.white,bgcolor: Colors.blueGrey)
              ],
            ),
            Row(
              children: [
                button(text: '0'),
                button(text: '.'),
                button(text: '-',tcolor: Colors.white,bgcolor: Colors.blueGrey),
                button(text: '=',tcolor: Colors.white,bgcolor: Colors.blueGrey)
              ],
            )


            
          ],
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
        primary: bgcolor,

        ),
        onPressed: (){
          // input.text = text;
          onButtonclick(text);
          //input.text=text;
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

// void calculations(value){
//   value=input.text;
//
//   if(input.text== 'AC'){
//     input.text= '';
//     output.text='';
//   }
//   if(input.text== op)
//   {
//
//   }
  //
  // else if(input.text==1|2|3|4|5|6|7|8|9|0)
  // {
  //   inputs=input.text;
  // }
  //calc closing
//}




