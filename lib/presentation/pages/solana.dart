import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hive/hive.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:rev/domain/models/bloc.dart';

class Solana extends HookWidget {
  Solana({super.key});


final myBox = Hive.box('myBox');
  final solanaProvider = StateProvider<int>((ref) => 0);
  Future<String> getSolana() async {
    return await Future.delayed(const Duration(seconds: 2), () {
      return "Test Future";
    });
  }

  @override
  Widget build(BuildContext context /*,WidgetRef ref*/) {
    final solana2 = useState(0);
    final testing = useFuture(getSolana());
      Hive.openBox<Bloc>("bloc");


    Future<void> _createBloc(String NomBloc) async {
      final response = await http.post(
        Uri.parse('https://192.168.169.116:44304/create'),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({'NomBloc': NomBloc}),
      );
      if (response.statusCode == 201) {
        print("Bloc created");
      } else {
        throw Exception('Failed to create bloc');
      }
    }

    final _nomBlocController = useTextEditingController();

    // showDialog(
    //   context: context,
    //   builder: (BuildContext context) {
    //     return AlertDialog(
    //       title: Text('Success'),
    //       content: Text('New bloc created!'),
    //       actions: [
    //         TextButton(
    //           onPressed: () => Navigator.of(context).pop(),
    //           child: Text('OK'),

    //         ),
    //       ],
    //     );
    //   },
    // );

//final name = ref.watch(solanaProvider);
    return Scaffold(
      backgroundColor: Colors.black45,
      appBar: AppBar(
        backgroundColor: Colors.deepPurple.shade200,
        title:const Text("Solana Register"),
      ),
      body: Container(
        child: Center(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Image.network(
              //   "https://static.vecteezy.com/system/resources/previews/011/307/364/original/solana-sol-badge-crypto-3d-rendering-free-png.png",
              //   height: 200,
              //   width: 200,
              // ),
              Text(
                "${solana2.value}",
                style: const TextStyle(color: Colors.white),
              ),
              testing.hasData
                  ? Text(
                      "${testing.data}",
                      style:const TextStyle(color: Colors.white),
                    )
                  :  const CircularProgressIndicator(),
              ElevatedButton(
                  onPressed: () {
                    solana2.value++;
                  },
                  child: const Text("Increment")),
              Form(
                  child: Column(
                children: [
                  TextFormField(
                    style: const TextStyle(color: Colors.white),
                    controller: _nomBlocController,
                    decoration: InputDecoration(
                        fillColor: Colors.white,
                        hintText: "Enter your wallet address",
                        hintStyle: const TextStyle(color: Colors.white),
                        prefixIcon: const Icon(
                          
                          Icons.account_balance_wallet,
                          color: Colors.white,
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: const BorderSide(color: Colors.white))),
                  ),
                  ElevatedButton(
                     key:  const ValueKey("solanabutton"),
                      onPressed: () {  
                        // myBox.put('solana1', _nomBlocController.text);
                        // myBox.put('solana', "fzafzafzaf");
                        // myBox.add(_nomBlocController.text);
                        // myBox.delete("solana");
                        print(myBox.values);
                        // print(myBox.getAt(0));
                       },
                       
                        // _createBloc(_nomBlocController.text);
                        // print(_nomBlocController.text);
                   
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.deepPurple.shade200),
                      child: const Text(
                        "Submit",
                        style: TextStyle(color: Colors.white),
                      )),
           
                ],
              )),
            ],
          ),
        ),
      ),
    );
  }
}
