import 'package:flutter/material.dart';
import 'package:rev/presentation/pages/secondpage.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

void firstfunction() {
  var names = {"John", "Peter", "Sally"};
  names.add("John");
  print(names);
}

class _FirstPageState extends State<FirstPage> {
  String name = "Flutter";

  int bottomindex = 0;

  @override
  Widget build(BuildContext context) {
    firstfunction();
    return Scaffold(
        backgroundColor: Colors.black45,
        appBar: AppBar(
          backgroundColor: Colors.deepPurple.shade700,
          //automaticallyImplyLeading: false,
          title: const Text("App Title"),
        ),
        body: Center(
            child: /* bottomindex == 0 ?*/ Container(
          //height: double.infinity,
          width: double.infinity,
          color: Colors.lime,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      name = "Flutter 2.0";
                    });
                  },
                  child: Text(name)), //const Icon(Icons.home)),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.red,
                  backgroundColor: Colors.green,
                ),
                onPressed: () {
                  setState(() {
                    name = "Flutter 2.0";
                  });
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (BuildContext context) {
                    firstfunction();
                    return SecondPage();
                  }));
                },
                child: const Text("Second Page"),
              )
            ],
          ),
        ) /*:  Image.asset( "images/flutter.jpg")*/
            //Image.network( "images/flutter.jpg")

            ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: 'setings'),
          ],
          currentIndex: bottomindex,
          onTap: (value) {
            setState(() {
              bottomindex = value;
              print(bottomindex);
            });
          },
        ));
  }
}
