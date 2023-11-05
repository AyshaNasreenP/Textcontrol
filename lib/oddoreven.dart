import 'package:flutter/material.dart';
class oddeven extends StatefulWidget {
  const oddeven({super.key});

  @override
  State<oddeven> createState() => _oddevenState();
}

double inputnumber=0;
String inputstring='';
TextEditingController _oddeven=TextEditingController();
Future<void> _showMyDialoge(BuildContext context) async {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        //title: Text('Dialog Title'),
        content: Text(inputstring),
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
class _oddevenState extends State<oddeven> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
      //  color: Colors.deepOrangeAccent,
        child: Column(

          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                keyboardType: TextInputType.number,
                controller: _oddeven,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius:BorderRadius.circular(10)
                  )
                ),
              ),
            ),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: (){
              setState(() {
                oddevencalc();
                _showMyDialoge(context);
              });

            },
                child: Text('Check')),
           // Text(inputstring)
          ],
        ),
      ),
    );
  }

  void oddevencalc() {

    inputnumber=double.parse(_oddeven.text);
    if(inputnumber%2==0)
      {
        inputstring='$inputnumber is even';
      }
    else
      {
        inputstring='$inputnumber is odd';
      }

  }
}
