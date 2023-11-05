import 'package:flutter/material.dart';
class textcontol extends StatefulWidget {
  const textcontol({super.key});

  @override
  State<textcontol> createState() => _textcontolState();
}
//TextEditingController _controller =TextEditingController();
TextEditingController _controller =TextEditingController();
//String? name="";
String? num = null;
//String? name=null;

class _textcontolState extends State<textcontol> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(

          children: [
           // Text(name!),


            TextFormField(

             // readOnly: true,
              controller: _controller,

              decoration: InputDecoration(
                // suffixText: num,

                 hintText: num,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5)
                )
              ),
            ),
            ElevatedButton(

                onPressed: (){
              setState(() {
                //name=_controller.text;
                _controller.text='1';
               // num="1";

              });
            }, child: Text("1"))
          ],
        ),
      ),
    );
  }
}
