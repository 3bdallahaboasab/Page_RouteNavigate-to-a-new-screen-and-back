import 'package:app3/mainscree.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Screentow extends StatefulWidget {
  const Screentow({Key? key}) : super(key: key);

  @override
  State<Screentow> createState() => _ScreentowState();
}

class _ScreentowState extends State<Screentow> {
  String dropdownValue = 'male';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Center(child: Text("this is screen number tow")),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(
                context,
                MaterialPageRoute(builder: (context) => const Screen()),
              );
            },
            child: Text("Go to home "),
          ),
          Column(
            children: [
              DropdownButton<String>(
                value: dropdownValue,
                icon: const Icon(Icons.arrow_downward),
                elevation: 16,
                style: const TextStyle(color: Colors.deepPurple),
                underline: Container(
                  height: 2,
                  color: Colors.deepPurpleAccent,
                ),
                onChanged: (newValue) {
                  setState(() {
                    dropdownValue = newValue!;
                  });
                },
                items: <String>['female', 'male']
                    .map<DropdownMenuItem<String>>((String e) {
                  return DropdownMenuItem<String>(
                    value: e,
                    child: Text(e),
                  );
                }).toList(),
                borderRadius: BorderRadius.circular(20),

                // dropdownColor: Colors.red,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
