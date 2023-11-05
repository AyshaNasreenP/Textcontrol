import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
class newcont extends StatefulWidget {
  const newcont({super.key});

  @override
  State<newcont> createState() => _newcontState();
}

class _newcontState extends State<newcont> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MyList(),
    );
  }
}
class MyList extends StatefulWidget {
  @override
  _MyListState createState() => _MyListState();
}

class _MyListState extends State<MyList> {
  TextEditingController textController = TextEditingController();
  List<String> items = [];

  void addItemToList(String value) {
    setState(() {
      items.add(value);
      //textController.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: TextField(
            controller: textController,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              labelText: 'Enter a number',
            ),
          ),
        ),
        ElevatedButton(
          onPressed: () {
            String inputText = textController.text;
            if (inputText.isNotEmpty) {
              addItemToList(inputText);
            }
          },
          child: Text('Add to List'),
        ),
        // Expanded(
        //   child: ListView.builder(
        //     itemCount: items.length,
        //     itemBuilder: (context, index) {
        //       return ListTile(
        //         title: Text(items[index]),
        //       );
        //     },
        //   ),
        // ),

        Markdown(data: '''
        erthhh
        dssdvd
        dssdf
        afdaf
        ''')
      ],
    );
  }
}