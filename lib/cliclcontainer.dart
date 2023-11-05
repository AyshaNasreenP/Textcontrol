import 'package:flutter/material.dart';
class clickcont extends StatefulWidget {
  const clickcont({super.key});

  @override
  State<clickcont> createState() => _clickcontState();
}
bool visibility=false;

class _clickcontState extends State<clickcont> {
  void visible(){
    setState(() {
      visibility=!visibility;
    });


  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,

        children: [
          ElevatedButton(onPressed: visible, child: Text("Click ")),
          ///use if to check the visibility
          // if (visibility)
          //
          //     Container(
          //         height: 100,
          //         width: 100,
          //       color: Colors.cyan,
          //     ),
          /// use the visibility widget
          Visibility(
            visible: visibility,
              child: Container(
                height: 100,
                width: 100,
                color: Colors.cyan,

              )
          )

          /// using animatedopacity
          // AnimatedOpacity(opacity:visibility ? 1:0,
          //     duration: Duration(milliseconds: 500),
          //   child: Container(
          //           height: 100,
          //           width: 100,
          //           color: Colors.cyan,
          //
          //         ),
          //
          // )

          /// using opacity
          // Opacity(
          //     opacity: visibility?1:0,
          //     child:  Container(
          //                 height: 100,
          //                 width: 100,
          //                 color: Colors.cyan,
          //
          //               ),
          //     )

        ],
      ),

    );
  }
}
