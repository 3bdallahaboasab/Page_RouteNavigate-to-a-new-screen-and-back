import 'package:app3/mainscree.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ScreenO extends StatefulWidget {
  const ScreenO({Key? key}) : super(key: key);

  @override
  State<ScreenO> createState() => _ScreenOState();
}

class _ScreenOState extends State<ScreenO> {
  int group = 1;
  bool value = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Center(child: Text("this is screen number one")),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(
                context,
                MaterialPageRoute(builder: (context) => const Screen()),
              );
            },
            child: Text("Go to home "),
          ),
          ListTile(
              leading:
                  Radio(value: value, groupValue: group, onChanged: (value) {}))
        ],
      ),
    );
  }
}
