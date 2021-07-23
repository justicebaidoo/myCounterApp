import 'package:flutter/widgets.dart';

import 'package:flutter/material.dart';

main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: CountreState()));
}

class CountreState extends StatefulWidget {
  const CountreState({Key? key}) : super(key: key);

  @override
  _CountreStateState createState() => _CountreStateState();
}

class _CountreStateState extends State<CountreState> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    var scaffold = Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(
          "My Counter App",
          style: TextStyle(color: Colors.white, fontSize: 27),
        ),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
         setState(() {
            counter++;
         });
        },
        child: Icon(Icons.add),
      ),
      body: Row(
        children: [
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Click the button to see magic"),
                Text(counter.toString())
              ],
            ),
          ),
        ],
      ),
    );
    return Center(child: scaffold);
  }
}
