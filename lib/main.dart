import 'package:flutter/material.dart';
import 'package:imtihon/pages/fifthPage/fifthPage.dart';
import 'package:imtihon/pages/firstPage/firstPage.dart';
import 'package:imtihon/pages/secondPage/seconfdPage.dart';
import 'package:imtihon/pages/thirdPage/thirdPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      routes: {
        first.path: (context) => const first(),
        SecondPage.path: (context) => const SecondPage(),
        thirdPage.path: (context) => const thirdPage(),
        Fifth.path: (context) => const Fifth(),
      },
      initialRoute: first.path,
    );
  }
}
