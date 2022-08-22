import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: open_door(),
    ),
  );
}

class open_door extends StatefulWidget {
  const open_door({Key? key}) : super(key: key);

  @override
  State<open_door> createState() => _open_doorState();
}

class _open_doorState extends State<open_door> {
  double w = 75;
  double w2 = 30;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Open-Close Doors"),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: Container(
        color: Colors.white,
        child: Center(
          child: InkWell(
            onTap: () {
              setState(() {
                w = 109;
                w2 = 0;
              });
            },
            onDoubleTap: () {
              setState(() {
                w = 75;
                w2 = 30;
              });
            },
            child: Ink(
              child: Container(
                width: 220,
                height: 400,
                decoration: BoxDecoration(
                  color: Colors.black,
                  border: Border(
                    left: BorderSide(color: Colors.white70, width: w),
                    right: BorderSide(color: Colors.white70, width: w),
                    top: BorderSide(color: Colors.black, width: w2),
                    bottom: BorderSide(color: Colors.black, width: w2),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
