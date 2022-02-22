import 'package:flutter/material.dart';

class Options extends StatefulWidget {
  const Options({Key? key}) : super(key: key);

  @override
  _OptionsState createState() => _OptionsState();
}

class _OptionsState extends State<Options> {
  @override
  Widget build(BuildContext context) {
    String? choice;
    return Scaffold(
      appBar: AppBar(
        title: const Text('PopUp Menu'),
        actions: [
          PopupMenuButton(
            onSelected: (value) {
              //print the selected option
              print(value);

              //Update the current choice.
              //However, this choice won't be updated in body section since it's a Stateless widget.
              choice = value.toString();
            },
            itemBuilder: (BuildContext context) => [
              PopupMenuItem(
                child: Text('Item 1'),
              ),
              PopupMenuItem(
                child: Text('Item 2'),
              ),
              PopupMenuItem(
                child: Text('Item 3'),
              ),
              PopupMenuItem(
                child: Text('Item 4'),
              ),
              PopupMenuItem(
                child: Text('Item 5'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
