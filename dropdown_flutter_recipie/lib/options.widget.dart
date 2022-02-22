import 'package:flutter/material.dart';

class Options extends StatefulWidget {
  const Options({Key? key}) : super(key: key);

  @override
  _OptionsState createState() => _OptionsState();
}

class _OptionsState extends State<Options> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PopUp Menu'),
        actions: [
          PopupMenuButton(
            onSelected: (value) {
              if (value == 'Item 1') {
                print('Item 1 selected');
              }
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
