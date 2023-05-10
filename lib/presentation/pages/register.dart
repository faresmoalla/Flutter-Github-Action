// import
import 'package:flutter/material.dart';
import 'package:rev/presentation/pages/topics.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  late final TextEditingController _email;
  late final TextEditingController _password;

  @override
  void initState() {
    _email = TextEditingController();
    _password = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _email.dispose();
    _password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black45,
      appBar: AppBar(
        backgroundColor: Colors.deepPurple.shade700,
        title: const Text("Register"),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,

        //color: Colors.green[300],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("images/blockchain.jpg"),
            const SizedBox(
              height: 30,
            ),
            TextFormField(
              cursorColor: Colors.white,
              style: TextStyle(color: Colors.white, fontFamily: "Roboto"),
              controller: _email,
              decoration: InputDecoration(
                fillColor: Colors.white,
                hintText: "Email",
                // HINT TEXT COLOR
                hintStyle: TextStyle(color: Colors.white),
                //  border: OutlineInputBorder(),
                // bordor color
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              obscureText: true,
              cursorColor: Colors.white,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                fillColor: Colors.white,
                hintText: "Password",
                // HINT TEXT COLOR
                hintStyle: TextStyle(color: Colors.white),
                //  border: OutlineInputBorder(),
                // bordor color
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.white,
                  ),
                ),
              ),
              controller: _password,
            ),
            TextButton(
                onPressed: () {
                  // Navigator pus
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (BuildContext context) {
                    return Topic();
                  }));
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: const Text("Welcome to Escape Room"),

                          content: Image.asset("images/flag.jpg"),
                          //Text("Lets the adventure begin")
                        );
                      });
                },
                child: Text("Register")),
          ],
        ),
      ),
    );
  }
}
