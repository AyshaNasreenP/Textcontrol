import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:textcontrol/bnichat.dart';
import 'package:textcontrol/calculator.dart';
import 'package:textcontrol/oddoreven.dart';
import 'package:textcontrol/simplecalc.dart';
import 'gst.dart';
import 'operation.dart';
class allinalll extends StatefulWidget {
  const allinalll({super.key});

  @override
  State<allinalll> createState() => _allinalllState();
}

class _allinalllState extends State<allinalll> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white70,
        title: Align(
          alignment: Alignment.center,
          child: Text("Calculator",
          style: TextStyle(
            fontSize: 20,
            color: Colors.teal,
            fontWeight: FontWeight.bold
          ),),
        ),
      ),
      body: Container(
        child: GridView.count(crossAxisCount: 2,
          primary: false,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          children: [
            GestureDetector(
              onTap: ()
              {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const calculationsingle()),
                );
              },
              child: Container(
                padding: const EdgeInsets.all(8),
                color: Colors.teal[100],
                child: Align(
                  alignment: Alignment.center,
                    child: const Text("Simple Calculator",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 15
                    ),
                    )),
              ),
            ),
            GestureDetector(
              onTap: ()
              {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const bmic()),
                );
              },
              child: Container(
                padding: const EdgeInsets.all(8),
                color: Colors.teal[200],
                child: Align(
                    alignment: Alignment.center,
                    child: const Text("BMI Calculator",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15
                      ),
                    )),
              ),
            ),
            GestureDetector(
              onTap: ()
              {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const simpleintrest()),
                );
              },
              child: Container(
                padding: const EdgeInsets.all(8),
                color: Colors.teal[300],
                child: Align(
                    alignment: Alignment.center,
                    child: const Text("Interest Calculator",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15
                      ),
                    )),
              ),
            ),
            GestureDetector(
              onTap: ()
              {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const gst()),
                );
              },
              child: Container(
                padding: const EdgeInsets.all(8),
                color: Colors.teal[400],
                child: Align(
                    alignment: Alignment.center,
                    child: const Text("GST Calculator",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15
                      ),
                    )),
              ),
            ),
            GestureDetector(
              onTap: ()
              {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const oddeven()),
                );
              },
              child: Container(
                padding: const EdgeInsets.all(8),
                color: Colors.teal[500],
                child: Align(
                    alignment: Alignment.center,
                    child: const Text("Odd or Even",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15
                      ),
                    )),
              ),
            ),
            GestureDetector(
              onTap: ()
              {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const calculator()),
                );
              },
              child: Container(
                padding: const EdgeInsets.all(8),
                color: Colors.teal[600],
                child: Align(
                    alignment: Alignment.center,
                    child: const Text("Normal Calculator",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15
                      ),
                    )),
              ),
            ),
          ],
        )
      ),
    );
  }
}
