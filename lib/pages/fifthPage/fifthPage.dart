import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Fifth extends StatefulWidget {
  const Fifth({Key? key}) : super(key: key);
  static const path = "fifth";
  @override
  State<Fifth> createState() => _FifthState();
}

class _FifthState extends State<Fifth> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFB0A2F2),
      appBar: AppBar(
        elevation: .0,
        backgroundColor: const Color(0xFFB0A2F2),
        title: const Text(
          "Task list",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w400, fontSize: 22),
        ),
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: const [
              Icon(
                Icons.edit,
                color: Colors.white,
              ),
              SizedBox(width: 18),
              Icon(
                Icons.delete,
                color: Colors.white,
              ),
              SizedBox(width: 18),
            ],
          )
        ],
      ),
      body: NavigationBar(
        animationDuration: const Duration(milliseconds: 500),
        backgroundColor: const Color(0xFFB0A2F2),
        destinations: <Widget>[
          TextButton(
            onPressed: () {},
            child: const Text(
              "To Do",
              style: TextStyle(
                color: Color(0xFF5946D2),
              ),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: const Text("Completed",
                style: TextStyle(
                  color: Color(0xFF5946D2),
                )),
          )
        ],
      ),
    );
  }
}
