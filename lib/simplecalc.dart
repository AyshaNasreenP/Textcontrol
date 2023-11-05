import 'package:flutter/cupertino.dart';
import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/material.dart';
import 'dart:math';
class simpleintrest extends StatefulWidget {
  const simpleintrest({super.key});

  @override
  State<simpleintrest> createState() => _simpleintrestState();
}

double priciple=0;
double rateofinterest=0;
double year=0;
double totalinterest=0;
double totalamount=0;
String priciplestring='';
String yearstring ='';
String ratestring='';
String totalintereststring='';
String totalamountstring='';

TextEditingController principlecontroller=TextEditingController();
TextEditingController interestcontroller=TextEditingController();
TextEditingController yearcontroller=TextEditingController();

///code for showing dialoge  box:Not used in this code
// Future<void> _showMyDialoge(BuildContext context) async {
//   return showDialog<void>(
//     context: context,
//     builder: (BuildContext context) {
//       return AlertDialog(
//         //title: Text('Dialog Title'),
//         content: Text('Total Amount : $totalamountstring\n Toatal interest : $totalintereststring' ),
//         actions: <Widget>[
//           TextButton(
//             onPressed: () {
//               Navigator.of(context).pop(); // Close the dialog
//             },
//             child: Text('Close'),
//           ),
//         ],
//       );
//     },
//   );
// }
class _simpleintrestState extends State<simpleintrest> {
  void findinterestcompound()
  {

    priciple= double.parse(principlecontroller.text);
    year=double.parse(yearcontroller.text);
    rateofinterest=double.parse(interestcontroller.text);



    //compound interest
    totalamount=priciple*(pow(1+(rateofinterest/100),year));
    totalinterest=totalamount-priciple;

      totalintereststring= totalinterest.toStringAsFixed(2);
      totalamountstring= totalamount.toStringAsFixed(2);
     // principlecontroller.clear();
     // yearcontroller.clear();
     // interestcontroller.clear();
  }
  void findinterestsimple()
  {

    priciple= double.parse(principlecontroller.text);
    year=double.parse(yearcontroller.text);
    rateofinterest=double.parse(interestcontroller.text);

//simple interest
    totalinterest=(priciple*year*rateofinterest)/100;
    totalamount=totalinterest+priciple;



    totalintereststring= totalinterest.toStringAsFixed(2);
    totalamountstring= totalamount.toStringAsFixed(2);
    // principlecontroller.clear();
    // yearcontroller.clear();
    // interestcontroller.clear();
  }
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 2,
     child: Scaffold(

      body:NestedScrollView(headerSliverBuilder:
    (BuildContext context, bool innerBoxIsScrolled) {
        return [
        const SliverAppBar (
          title: Align(
            alignment: Alignment.center,
            child: Text("INTEREST CALCULATOR",
              style: TextStyle(
                color: Colors.teal,

              ),),
          ),
          toolbarHeight: 60,
          backgroundColor: Colors.white70,
         // expandedHeight: 5,
          flexibleSpace: FlexibleSpaceBar(

          ),

          bottom: TabBar(

            labelColor: Colors.black,
            unselectedLabelColor: Colors.grey,
              tabs:
          [
            Tab(text: 'Simple Interest',
            ),
            Tab(
              text: 'Compound Interest',                  // label of the Tab
            )
          ],
          ),
          pinned: true,
        )
        ];
            },
              body: TabBarView(children: [
                Container(
                  color: Colors.white70,
                  child: Column(
                    children: [
                      SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          controller: principlecontroller,
                          decoration: InputDecoration(
                              labelText: 'Principle Amount',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(3)
                              )
                          ),
                        ),
                      ),
                      SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          controller: interestcontroller,
                          decoration: InputDecoration(
                              labelText: 'Rate of Interest',
                              suffix: Text(' %'),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(3)
                              )
                          ),
                        ),
                      ),
                      SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          controller: yearcontroller,
                          decoration: InputDecoration(
                              labelText: 'Number of years',
                              // suffix: Text(' in year'),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(3)
                              )
                          ),
                        ),
                      ),
                      SizedBox(height: 10,),
                      Align(
                        alignment: Alignment.center,
                        child: ExpansionTileCard(title: Text('Calculate'),
                          onExpansionChanged: (value) {
                            if (value) {
                              setState(() {
                                findinterestsimple();
                              });
                            }
                          },
                          children: [
                            Text('Total Amount : $totalamountstring'),
                            Text('Total interest : $totalintereststring'),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                 Container(
                   child: Column(
                     children: [
                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: TextFormField(
                           controller: principlecontroller,
                           decoration: InputDecoration(
                             labelText: 'Principle Amount',
                             border: OutlineInputBorder(
                               borderRadius: BorderRadius.circular(3)
                             )
                           ),
                         ),
                       ),
                       SizedBox(height: 10,),
                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: TextFormField(
                           controller: interestcontroller,
                           decoration: InputDecoration(
                             labelText: 'Rate of Interest',
                             suffix: Text(' %'),
                               border: OutlineInputBorder(
                                   borderRadius: BorderRadius.circular(3)
                               )
                           ),
                         ),
                       ),
                       SizedBox(height: 10,),
                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: TextFormField(
                           controller: yearcontroller,
                           decoration: InputDecoration(
                             labelText: 'Number of years',
                              // suffix: Text(' in year'),
                               border: OutlineInputBorder(
                                   borderRadius: BorderRadius.circular(3)
                               )
                           ),
                         ),
                       ),
                       SizedBox(height: 10,),
                       ExpansionTileCard(title: Text('Calculate'),
                         onExpansionChanged: (value) {
                           if (value) {
                             setState(() {
                               findinterestcompound();
                             });
                           }
                         },
                         children: [
                           Text('Total Amount : $totalamountstring'),
                           Text('Total interest : $totalintereststring'),
                         ],
                       )
                     ],
                   ),
                 )
              ]
              )
     )
    )

    );
  }
}
