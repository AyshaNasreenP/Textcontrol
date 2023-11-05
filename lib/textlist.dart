import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:get/get.dart';
import 'package:textcontrol/bnichat.dart';
//import 'package:textcontrol/bnichat.dart';

class textlist extends StatefulWidget {
  const textlist({super.key});

  @override
  State<textlist> createState() => _textlistState();
}
TextEditingController _controller =TextEditingController();
 List less5=[];
 List values=[];
String minNumber = '0';
String maxNumber = '0';
///dialoge box
Future<void> _showMyDialogless5(BuildContext context) async {
  less5=values
      .where((value) => double.parse(value) < 5)
      .toList();

  String dialogContent = less5.isEmpty
      ? "No values less than 5 found."
      : "Values less than 5: ${less5.join(', ')}";



  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        //title: Text('Dialog Title'),
        content: Text(dialogContent),
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
Future<void> _showMyDialogmin(BuildContext context) async {
  // less5=values
  //     .where((value) => double.parse(value) < 5)
  //     .toList();
  //
  // String dialogContent = less5.isEmpty
  //     ? "No values less than 5 found."
  //     : "Values less than 5: ${less5.join(', ')}";

  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        //title: Text('Dialog Title'),
        content: Text('Minimum number : $minNumber'),
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

Future<void> _showMyDialogmax(BuildContext context) async {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        //title: Text('Dialog Title'),
        content: Text('Maximum number : $maxNumber'),
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


class _textlistState extends State<textlist> {
  void getvalues(value){
  setState(() {
    values.add(value);
    updateMinMaxNumbers();
    //ascend();
   // descend();

    _controller.clear();
  });
  }

  void ascend(){
    setState(() {
      values.sort((a, b) => double.parse(a).compareTo(double.parse(b)));
    });
}

void descend(){
  setState(() {
    values.sort((a, b) => double.parse(b).compareTo(double.parse(a)));
  });
}

  void updateMinMaxNumbers()
  {


    if (values.isNotEmpty) {
      double min = double.parse(values[0]);
      double max = double.parse(values[0]);

      for (int i = 1; i < values.length; i++) {
        double num = double.parse(values[i]);
        if (num < min) {
          min = num;
        }
        if (num > max) {
          max = num;
        }
      }
      minNumber = min.toString();
      maxNumber = max.toString();
    }
  }
    ///there are several methods.
    ///using for in :
    //for (String value in values)
    //  double num = double.parse(value);
    //  is same as
    // for (int i = 1; i < values.length; i++) {
    //   double num = double.parse(values[i]);
   ///
    // if (values.isNotEmpty) {
    //   minNumber = values.map((value) => double.parse(value))
    //       .reduce((min, value) => value < min ? value : min)
    //       .toString();
    //
    //   maxNumber = values
    //       .map((value) => double.parse(value))
    //       .reduce((max, value) => value > max ? value : max)
    //       .toString();
    // }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
      //crossAxisAlignment: CrossAxisAlignment.center,
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ElevatedButton(onPressed: (){
              Get.to(bmic());
            }, child: Text("edr")),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: _controller,
                decoration: InputDecoration(
                  hintText: 'Enter number',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(2)
                    )
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.fromLTRB(8,0,8,0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size.fromHeight(50),
                  primary: Colors.blueGrey,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(2.0)
                  ),
                ),
                  // onPressed: () {
                  //   String inputText = textController.text;
                  //   if (inputText.isNotEmpty) {
                  //     addItemToList(inputText);
                  //   }
                  // },
                  onPressed: (){



                   String inputtext=_controller.text;
                   if(inputtext.isNotEmpty)
                   {
                     getvalues(inputtext);
                   }
                  }, child: Text("Add")),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(onPressed: (){
                _showMyDialogless5(context);
              }, child: Text("<5")),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(onPressed: (){

                showModalBottomSheet(context: context,
                    //backgroundColor: Colors.amber,
                    builder: (BuildContext context){
                      return Container(
                        //height: 200,
                          color: Colors.grey,
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Text('Minimum number : ' +minNumber,
                                  style: TextStyle(
                                    fontSize: 20
                                  ),),
                                Text('Maximum number : ' +maxNumber,
                                  style: TextStyle(
                                      fontSize: 20
                                  ),),
                                ElevatedButton(
                                  child: const Text('Close '),
                                  onPressed: () => Navigator.pop(context),
                                ),
                              ],
                            ),
                          )
                      );
                    }
                );
              }, child: Text("Min and Max")),
            ),
            // Padding(
            //   padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
            //   child: Text("Minimum Number: $minNumber"),
            // ),
            // Padding(
            //   padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
            //   child: Text("Maximum Number: $maxNumber"),
            // ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          _showMyDialogmin(context); // Call the dialog function
                        },
                        child: Text('Minimum number'),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          _showMyDialogmax(context); // Call the dialog function
                        },
                        child: Text('Maximum number'),
                      ),
                    ),
                  ),
                )


              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Expanded(
                        child: ElevatedButton(onPressed: (){
                          ascend();
                        }, child: Text("Ascending order"))),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Expanded(
                        child: ElevatedButton(onPressed: (){
                          descend();
                        }, child: Text("Descending order"))),
                  ),
                )
              ],
            ),
            Expanded(
                child: Container(
                  child: ListView.builder(

                      itemCount: values.length,
                      itemBuilder: (context , index){
                        return Padding(
                          padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
                          child: Container(
                            color: Colors.grey,
                            child: ListTile(
                              title: Text(values[index]),
                              //style: ListTileStyle.drawer,
                              //iconColor: Colors.grey,

                            ),
                          ),
                        );
                      }
                  ),
                ),
            ),
          ],
        ),
      ),
    );
  }
}

