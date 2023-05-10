// import 'package:flutter/material.dart';
// import 'package:flutter_test/flutter_test.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:ubidata_ui/ubidata_ui.dart';
 



// void main() {
//   group('display dcn table', () {
// final String login = "gienubi";
// final String pass = "dataubi";

//  const widget = LoginPage();

//   testWidgets('empty email and password', (WidgetTester tester) async {
  
//     var app = new MediaQuery(data: new MediaQueryData(), child: MaterialApp(home:  ProviderScope(child: LoginPage())));
//     await tester.pumpWidget(app);


//   });

//  testWidgets('renders login form', (tester) async {
//       await tester.pumpWidget(
//         ProviderScope(child: LoginPage()),
//       );

// var app = new MediaQuery(data: new MediaQueryData(), child: new MaterialApp(home:  ProviderScope(child: LoginPage())));
//       expect(find.text('gienubi'), findsOneWidget);
//       expect(find.text('dataubi'), findsOneWidget);
//       expect(find.byType(UbiPrimaryButton), findsOneWidget);
//     });
//        testWidgets('renders login form', (tester) async {
//       await tester.pumpWidget(
//         ProviderScope(child: LoginPage()),
//       );

//       expect(find.text('Username'), findsOneWidget);
//       expect(find.text('Password'), findsOneWidget);
//       expect(find.byType(UbiPrimaryButton), findsOneWidget);
//     });

//     testWidgets('displays validation error message when username is empty',
//         (tester) async {
//       await tester.pumpWidget(
//         ProviderScope(child: LoginPage()),
//       );

//       await tester.tap(find.byType(UbiPrimaryButton));
//       await tester.pumpAndSettle();

//       expect(find.text('Please enter a valid username'), findsOneWidget);
//     });




// test("Simple test",() {
  
// expect(2,2);
// }
// );


// //     testWidgets('render correct dcn data', (tester) async {
// //       final key = UniqueKey();

// //       await tester.pumpWidget(const ProviderScope(
// //         child: MaterialApp(
// //           home: Scaffold(
// //             body: Text("tabular")   //Http Request for display dcn table
// //           ),

        

// //         ),
// //       )
// //         ); 

// // expect(find.byKey(key), findsOneWidget);
// // expect(find.byType(TabularReport), findsOneWidget);

     
// //     });


    
//   });
// }
