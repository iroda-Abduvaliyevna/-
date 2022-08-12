import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:imtihon/consts/Myimages/myImages.dart';
import 'package:imtihon/pages/thirdPage/thirdPage.dart';
import 'package:lottie/lottie.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);
  static const path = "second";
  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.all(80.0),
                child: Lottie.network(
                  'https://assets7.lottiefiles.com/packages/lf20_dyy9le6w.json',
                ),
              ),
            ),
            const Center(
              child: Text(
                "Welcome to  \n Uno To Do!",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 36,
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const Center(
              child: Text(
                "Start using the best To Do app",
                style: TextStyle(
                  color: Color(0xFF5835E5),
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: CupertinoButton(
                  borderRadius: BorderRadius.circular(30),
                  color: Color(0xFF5946D2),
                  child: Text("Get started",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w200)),
                  onPressed: () {
                    Navigator.pushNamed(context, thirdPage.path);
                  }),
            )
          ],
        ),
      ),
    );
  }
}
      // body: Lottie.network(
      //     'https://assets7.lottiefiles.com/packages/lf20_dyy9le6w.json'),