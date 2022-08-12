import 'dart:async';
import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:imtihon/consts/Myimages/myImages.dart';
import 'package:imtihon/pages/secondPage/seconfdPage.dart';

class first extends StatefulWidget {
  const first({Key? key}) : super(key: key);
  static const path = 'first';
  @override
  State<first> createState() => _firstState();
}

class _firstState extends State<first> {
  // bool selected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: CupertinoButton(
          onPressed: (() {
            Navigator.of(context).push(_createRoute());
          }),
          child: const Image(image: AssetImage(Myimages.bir)),
        ),
      ),
    );
  }
  //https://assets7.lottiefiles.com/packages/lf20_dyy9le6w.json
}

Route _createRoute() {
  return PageRouteBuilder(
    transitionDuration: Duration(seconds: 3),
    reverseTransitionDuration: Duration(seconds: 3),
    pageBuilder: (context, animation, secondaryAnimation) => const SecondPage(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return child;
    },
  );
}
