import 'package:flutter/material.dart';
class calc extends StatefulWidget {
  const calc({super.key});

  @override
  State<calc> createState() => _calcState();
}
final result='0';
String input='';
final List list=[ '(',
  ')',
  '%',
  'AC',
  '7',
  '8',
  '9',
  '/',
  '4',
  '5',
  '6',
  '*',
  '1',
  '2',
  '3',
  '-',
  '0',
  '.',
  '=',
  '+',

];
class _calcState extends State<calc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Align(
          alignment: Alignment.center,
          child: Container(

            decoration: BoxDecoration(
              color: Colors.grey,
             border: Border.all()
            ),
            height: 600,
            width: double.infinity,
            child: Column(
              children: [
                Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.blueGrey,
                  ),
                  child: Text(input),
                ),
                SizedBox(),
                Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.blueGrey,
                  ),
                  child: Align
                    (
                      alignment: Alignment.centerRight,
                      child: Text(result)),
                ),

                Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    height: 400,
                    width: 400,
                    child:
                    GridView.builder(
                        //physics: NeverScrollableScrollPhysics(),
                        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                          maxCrossAxisExtent: 100,
                          childAspectRatio: 2 / 1,
                          //crossAxisSpacing: 10,
                          mainAxisSpacing: 1,

                        ),

                        itemCount:list.length,
                        itemBuilder: (BuildContext ctx, index) {
                          return Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Container(
                              //color: Colors.black,
                                height:10,
                                width: 20,

                                child: ElevatedButton(onPressed: (){

                                  setState(() {
                                    //working();
                                  });
                                }, child: Text(list[index]))

                                // TextFormField(
                                //   decoration: InputDecoration(
                                //    // isDense: true,
                                //     suffixText: list[index],
                                //     border: OutlineInputBorder(
                                //       borderRadius: BorderRadius.circular(0)
                                //     ),
                                //     fillColor: Colors.white
                                //   ),
                                //
                                //
                                // )

                                // Container(
                                //   height: 10,
                                //   alignment: Alignment.topRight,
                                //   width: 20,
                                //   color: Colors.cyan,
                                //   // child: Text(list[index].text,
                                //   //   style: TextStyle(
                                //   //     fontSize: 16,
                                //   //     fontWeight: FontWeight.w400,
                                //   //   ),),
                                //
                                //   //child: Image.asset("assets/image.png",fit: BoxFit.fill,),
                                //
                                // )

                            ),
                          );




                        }

                    ),


                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  // void working() {
  //
  //   if( te)
  // }
}
