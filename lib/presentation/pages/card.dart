import 'package:flutter/material.dart';
import 'package:rev/presentation/pages/solana.dart';

class CardTopic extends StatefulWidget {
  String? text;

//constructor
  CardTopic({this.text});

  @override
  State<CardTopic> createState() => _CardTopicState();
}

class _CardTopicState extends State<CardTopic> {
  String text = "Flutter";
  @override
  Widget build(
    BuildContext context,
  ) {
    return Card(
      color: Colors.black45,
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: Colors.white,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: SizedBox(
        width: 150,
        height: 120,
        child: Center(
          child: TextButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Solana()));
              },
              child: Text(
                text,
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              )),

          //  child: Text(text,style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold),)
        ),
      ),
    );
  }
}
