import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:path_provider/path_provider.dart';
import 'package:rev/presentation/pages/solana.dart';

import 'domain/models/bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Directory dir = await getApplicationDocumentsDirectory();
// await Hive.initFlutter();
//  Hive.init(dir.path);
   await Hive.initFlutter('db');
    Hive.registerAdapter(BlocModelAdapter());
  HttpOverrides.global = MyHttpOverrides();

   await Hive.openBox('myBox');
 
  runApp(ProviderScope(child: MyApp()));
}

class Person {
  final String? name;
  final int? age;

  Person({this.name, this.age});

  void run() {
    print("run ////////////");
  }

  void talk() {
    print("talk");
  }
}
/*
class Student extends Person {
  Student();
  final student = Student();
  Student.run();
}

class Animal {
  final String name;
  final String SecondName;

  Animal(this.name, this.SecondName);
}

void test() {
  print("test");

  final person = Person(name: "Mourad", age: 20);
// print person nam
  print('person name is ${person.name}');

  final animal = Animal("Mourad", "Bouzid");
  print(animal.fullName);
}

extension FullName on Animal {
  String get fullName => '$name $SecondName';
}
//########################### FUTURE ############################

Future<int> Somme(int number) async {
  return await Future.delayed(const Duration(seconds: 2), () {
    return number * 2;
  });
}

void testfunction() async {
  final result = await Somme(10);
  print(result);
}*/
//########################### STREAM ############################
/*
Stream<String> getName(String name) {
  return Stream.periodic(const Duration(seconds: 2), (x) {
    return name;
  });
}

void testStream() async {
  final result = getName("Stream ////////////////");
  result.listen((event) {
    print(event);
  });
}
*/
/*
List<int> Listtt(){
  return [1,2,3,4,5];
}*/

//#################################### Provider ########################################
final nameProvider = Provider((ref) {
  return "Hello Fares Provider";
});

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}

class MyApp extends HookConsumerWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final name = ref.watch(nameProvider);
    print(name);
    // test();
    // testfunction();
    //testStream();
    return MaterialApp(
      title: "Ubidata Demo",
      debugShowCheckedModeBanner: false,
      home: Solana(),
    );
  }
}
