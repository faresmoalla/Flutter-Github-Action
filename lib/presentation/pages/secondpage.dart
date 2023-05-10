// import
import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
// Declare Set

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
//automaticallyImplyLeading: false,
          title: const Text("App Title"),
        ),
        body: Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.pink,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ElevatedButton(onPressed: () {}, child: Text("Second Page"))
                ])));
  }
}
