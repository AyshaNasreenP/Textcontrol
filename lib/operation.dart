
//Normal Calculator
import 'package:flutter/material.dart';
import 'package:textcontrol/add.dart';
import 'dart:math';

import 'package:textcontrol/calchome.dart';
class calculationsingle extends StatefulWidget {
  const calculationsingle({super.key});

  @override
  State<calculationsingle> createState() => _calculationsingleState();
}
TextEditingController input1=TextEditingController();
String inp1='';
String inp2='';
String op='';
//int sum=0;
String res='';
bool click= false;
bool clc= false;


class _calculationsingleState extends State<calculationsingle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.end,
          children: [

            TextFormField(
              style: TextStyle(
                color: Colors.black,

              ),
              controller: input1,

            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
              ElevatedButton(onPressed: ()
              {
                if(click==true)
                {
                  inp1+="1";
                  input1.text = inp1;
                }
                else
                {
                  inp2+="1";
                  input1.text=inp2;
                }
              },
                  child: Text("1")),

              ElevatedButton(onPressed: (){
                //single click
                // if(click)
                // {
                //   inp2="2";
                //   input1.text = inp2;
                // }
                // else
                // {
                //   inp1="2";
                //   input1.text=inp1;
                // }
                if(click==true)
                {
                  inp1+="2";
                  input1.text = inp1;
                }
                else
                {
                  inp2+="2";
                  input1.text=inp2;
                }
              },


                  child: Text("2")),
              ElevatedButton(onPressed: (){
                if(click==true)
                {
                  inp1+="3";
                  input1.text = inp1;
                }
                else
                {
                  inp2+="3";
                  input1.text=inp2;
                }
              }, child: Text("3")),
              ElevatedButton(onPressed: (){
                op="÷";
                click=true;
                input1.text=op;
              }, child: Text("÷")),
            ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(onPressed: (){
                  if(click==true)
                  {
                    inp1+="4";
                    input1.text = inp1;
                  }
                  else
                  {
                    inp2+="4";
                    input1.text=inp2;
                  }
                }, child: Text("4")),
                ElevatedButton(onPressed: (){
                  if(click==true)
                  {
                    inp1+="5";
                    input1.text = inp1;
                  }
                  else
                  {
                    inp2+="5";
                    input1.text=inp2;
                  }


                }, child: Text("5")),
                ElevatedButton(onPressed: (){
                  if(click==true)
                  {
                    inp1+="6";
                    input1.text = inp1;
                  }
                  else
                  {
                    inp2+="6";
                    input1.text=inp2;
                  }
                }, child: Text("6")),
                ElevatedButton(onPressed: (){
                  op="×";
                  click=true;
                  input1.text=op;
                }, child: Text("×")),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(onPressed: (){
                  if(click==true)
                  {
                    inp1+="7";
                    input1.text = inp1;
                  }
                  else
                  {
                    inp2+="7";
                    input1.text=inp2;
                  }
                }, child: Text("7")),
                ElevatedButton(onPressed: (){
                  if(click==true)
                  {
                    inp1+="8";
                    input1.text = inp1;
                  }
                  else
                  {
                    inp2+="8";
                    input1.text=inp2;
                  }
                }, child: Text("8")),
                ElevatedButton(onPressed: (){
                  if(click==true)
                  {
                    inp1+="9";
                    input1.text = inp1;
                  }
                  else
                  {
                    inp2+="9";
                    input1.text=inp2;
                  }
                }, child: Text("9")),
                ElevatedButton(onPressed: (){
                  op="-";
                  click=true;
                  input1.text=op;
                }, child: Text("-")),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(onPressed: (){
                  if(click==true)
                  {
                    inp1+="0";
                    input1.text = inp1;
                  }
                  else
                  {
                    inp2+="0";
                    input1.text=inp2;
                  }
                }, child: Text("0")),
                ElevatedButton(onPressed: (){

                  // if(click)
                  // {
                  //   inp2=".";
                  //   input1.text = inp2;
                  // }
                  // else
                  // {
                  //   inp1=".";
                  //   input1.text=inp1;
                  // }
                  //   if (click) {
                  //
                  //     inp1 += ".";
                  //     input1.text = inp1;
                  //   }
                  //   else {
                  //    // input1.text=inp2+'.' ;
                  //
                  //     inp2 += ".";
                  //     input1.text = inp1;
                  //
                  // }


                  if(click==true)
                  {
                    inp1+=".";
                    input1.text = inp1;
                  }
                  else
                  {
                    inp2+=".";
                    input1.text=inp2;
                  }
                  // setState(() {
                  //   op=".";
                  //   click=true;
                  //   input1.text=op;
                  //
                  //
                  // });


                }, child: Text(".")),

                ElevatedButton(onPressed: (){
                  if(click==true)
                  {
                    inp2=input1.text;
                  }
                  op="+";
                    click=true;
                    input1.text=op;
                  //inp2=sum.toString();
                  // setState(() {
                  //
                  //   op="+";
                  //   click=true;
                  //   input1.text=op;
                  //   if(click)
                  //   {
                  //   }
                  //   else{}
                  //
                  //
                  // });
                }, child: Text("+")),

                ElevatedButton(onPressed: (){
                    if( op== '+' ){
                          if(click){
                            double a = double.parse(inp1);
                            double b = double.parse(inp2);
                            double sum= b+a;
                            double res=sum;
                            inp2=res.toString();
                           // inp2=res.toStringAsFixed(2);
                            inp1='';
                            input1.text=inp2 ;
                            //input1.text=res.toString();
                          }
                          else
                            {
                              input1.text=inp2+op;
                              click=true;
                            }


                      // int a = int.parse(inp1);
                      // int b = int.parse(inp2);
                      // int sum= b+a;
                      // int res=sum;
                      // input1.text=res.toString();
                      // inp1=res.toString();
                      // inp2='';

                    }
                    else if(op == '-'  ){

                      if(click){
                       double a = double.parse(inp1);
                       double b = double.parse(inp2);
                       double sub= b-a;
                       double res=sub;
                        inp2=res.toString();
                        inp1='';
                        input1.text=inp2 ;
                        //input1.text=res.toString();
                      }
                      else
                      {
                        input1.text=inp2+op;
                        click=true;
                      }
                      // int a = int.parse(inp1);
                      // int b = int.parse(inp2);
                      // int sub= b-a;
                      // input1.text=sub.toString();


                    }
                    else if(op == '×'  ){
                      if(click){
                        double a = double.parse(inp1);
                        double b = double.parse(inp2);
                        double mul= b*a;
                        double res=mul;
                        inp2=res.toString();
                        inp1='';
                        input1.text=inp2 ;
                        //input1.text=res.toString();
                      }
                      else
                      {
                        input1.text=inp2+op;
                        click=true;
                      }
                      // int a = int.parse(inp1);
                      // int b = int.parse(inp2);
                      // int mul= a*b;
                      // input1.text= mul.toString();

                    }

                    ///remove . in =
                    // else if(op == '.' ) {
                    //   //   if(click){
                    //   //
                    //   //     if (op == '.' && inp1.contains('.')) {
                    //   //           return;
                    //   //     }
                    //   //     String a =inp1;
                    //   //      String b =inp2;
                    //   //     // int a = int.parse(inp1);
                    //   //     // int b = int.parse(inp2);
                    //   //     String dot= b+'.'+a;
                    //   //     String res=dot;
                    //   //    // double res=double.parse(dot);
                    //   //   inp1=inp1 + op;
                    //   //   input1.text = res;
                    //   // }
                    //   //   }
                    //
                    //   String a = inp1;
                    //   String b = inp2;
                    //   // int a = int.parse(inp1);
                    //   // int b = int.parse(inp2);
                    //   String dot = b + "." + a;
                    //   //double res = double.parse(dot);
                    //   //dot;
                    //  // inp2 = res.toString();
                    //   inp2=dot;
                    //   //inp1 = '';
                    //   //input1.text = inp2;
                    //   input1.text = dot;
                    // }

                    // else
                    //   {
                    //
                    //   if (op == '.' && inp2.contains('.')) {
                    //   return;
                    //   }
                    //   input1.text=inp2+op;
                    //   click=true;
                    //   //inp2 += op;
                    //   // input1.text = inp2;
                    //
                    //   click = true;
                    //     // input1.text=inp2+op;
                    //     // click=true;
                    //   }
                    //   // String a= inp1;
                    //   // String b= inp2;
                    //   // String dot= b+ '.' + a;
                    //   // input1.text=dot;
                    // }
                    else if(op == '÷'){

                      if(click){
                        double a = double.parse(inp1);
                        double b = double.parse(inp2);
                        double div=b/a;
                       // int sum= b/a;
                        double res=div;
                        inp2=res.toString();
                        inp1='';
                        input1.text=inp2 ;
                        //input1.text=res.toString();
                      }
                      else
                      {
                        input1.text=inp2+op;
                        click=true;
                      }
                      // double a = double.parse(inp1);
                      // double b = double.parse(inp2);
                      // double div= b/a;
                      // input1.text=div.toString();

                    }
                    inp2=input1.text;
                    inp1='';
                    op='';
                    click=false;


                    // else if(op== '%'  ){
                    //   double a = double.parse(inp1);
                    //   double b = double.parse(inp2);
                    //   double div= a/b;
                    //   double percent=div*100.0;
                    //   input1.text=percent.toString();
                },
                    child: Text("="),
                ),

              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(onPressed: (){
                  double sqnum= double.parse(input1.text);
                  double sq=sqnum*sqnum;
                  input1.text= sq.toString();
                },
                    child: Text("x²")),
                ElevatedButton(onPressed: (){
                  double sqroot= double.parse(input1.text);
                  num sq=pow(sqroot, 1/2);
                  input1.text= sq.toStringAsFixed(1);
                }, child: Text("√ ")),
                ElevatedButton(onPressed: (){
                  double sqroot= double.parse(input1.text);
                  // num fact=
                  factorial();

                  //input1.text= fact.toStringAsFixed(1);
                }, child: Text('x!')),
                ElevatedButton(onPressed: (){
                  input1.text='';
                  inp2='';
                  inp1='';
                  click= false;
                }, child: Text("AC")),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(onPressed: (){
                  //double back= double.parse(input1.text);
                 String back =input1.text;
                 String backn=back.substring(0, back.length -1);
                 //back =back.substring(0 , back.length -1);
                 int backnum=int.parse(backn);
                 input1.text=backn;
                 //input1.text=backnum.toString();
                 //input1.text=back;
                 inp2=backn;

                 click=true;

                 // double sq=sqnum*sqnum;

                },
                    child: Text("<")),
                // ElevatedButton(onPressed: (){
                //   int sqroot= int.parse(input1.text);
                //   num sq=pow(sqroot, 1/2);
                //   input1.text= sq.toStringAsFixed(1);
                // }, child: Text("√ ")),
                // ElevatedButton(onPressed: (){
                //   int sqroot= int.parse(input1.text);
                //   // num fact=
                //   factorial();
                //
                //   //input1.text= fact.toStringAsFixed(1);
                // }, child: Text('x!')),
                // ElevatedButton(onPressed: (){
                //   input1.text='';
                //   inp2='';
                //   inp1='';
                //   click= false;
                // }, child: Text("AC")),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

void factorial(){
  var value=1;
  var limit=int.parse(input1.text);
  //var sum=0;
  for(int i=1;i<=limit;i++){
    value=value*i;
    input1.text=value.toString();
  }
}





















class asdfgh extends StatefulWidget {
  const asdfgh({super.key});

  @override
  State<asdfgh> createState() => _asdfghState();
}

class _asdfghState extends State<asdfgh> {

  final ctrl = TextEditingController();

  String num1 ="",num2="", optr= "";

  bool clk = false;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 100,),
          TextFormField(controller: ctrl,),
          SizedBox(height: 100,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(onPressed: (){

                if(clk)
                {
                  num2= "1";

                  ctrl.text = num2;
                }
                else
                {
                  num1= "1";

                  ctrl.text = num1;
                }


              }, child: Text("1")),
              ElevatedButton(onPressed: (){

                if(clk)
                {
                  num2= "2";

                  ctrl.text = num2;
                }
                else
                {
                  num1= "2";

                  ctrl.text = num1;
                }


              }, child: Text("2")),
              ElevatedButton(onPressed: (){
                ctrl.text = "+";
                optr= "+";
                clk = true;
              }, child: Text("+")),
              ElevatedButton(onPressed: (){

                if(optr == "+")
                {
                  int a = int.parse(num1);
                  int b = int.parse(num2);

                  int res = a+ b;

                  ctrl.text = res.toString();
                }

              }, child: Text("=")),
            ],
          )
        ],
      ),
    );
  }
}
