import 'package:flutter/material.dart';

import 'card.dart';

class Topic extends StatefulWidget {
  const Topic({super.key});

  @override
  State<Topic> createState() => _TopicState();
}

//constructor
class _TopicState extends State<Topic> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black45,
        appBar: AppBar(
          title: Text("Topics"),
          backgroundColor: Colors.deepPurple.shade700,
        ),
        body: ListView(
          children: [
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CardTopic(),
                SizedBox(
                  width: 40,
                ),
                CardTopic(),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CardTopic(),
                SizedBox(
                  width: 40,
                ),
                CardTopic(),
              ],
            ),
          ],
        ));
  }
}
